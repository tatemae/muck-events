class Muck::EventsController < ApplicationController

  before_filter :login_required
  
  def index
    @events = @group.events.paginate(:page => @page, :per_page => @per_page)
    
    respond_to do |format|
      format.html do
        @user_events = EventUser.current_events_for(current_user)
        render
      end
      format.ics do
        require 'icalendar'
        @calendar = Icalendar::Calendar.new
        @events.each do |event|
          ics_event = Icalendar::Event.new
          ics_event.start = event.start_at.strftime("%Y%m%dT%H%M%S")
          if event.end_at
            ics_event.end = event.end_at.strftime("%Y%m%dT%H%M%S")
          else
            ics_event.end = event.start
          end
          ics_event.summary = event.summary
          ics_event.description = event.description
          ics_event.location = event.location
          @calendar.add ics_event
        end
        @calendar.publish
        headers['Content-Type'] = "text/calendar; charset=UTF-8"
        render :layout => false, :text => @calendar.to_ical
      end      
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
      format.ics do
        ics_event = Icalendar::Event.new
        ics_event.start = @event.start_at.strftime("%Y%m%dT%H%M%S")
        if @event.end_at
          ics_event.end = @event.end_at.strftime("%Y%m%dT%H%M%S")
        else
          ics_event.end = @event.start
        end
        ics_event.summary = @event.summary
        ics_event.description = @event.description
        ics_event.location = @event.location
        @calendar.add ics_event
        @calendar.publish
        headers['Content-Type'] = "text/calendar; charset=UTF-8"
        render_without_layout :text => @calendar.to_ical
      end
    end
  end

  def new
    @event = Event.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @event }
    end
  end
  
  def create
    @event = Event.find(params[:event_id])
    @event_user = EventUser.new
    @event_user.event = @event
    @event_user.user = current_user
    @event_user.save!
    @event.reload
    respond_to do |format|
      format.html do
        redirect_back_or_default current_user
      end
      format.js do
        render :update do |page|  
          page.replace_html "attend_#{@event.dom_id}", :partial => 'events/not_attending', :locals => {:event => @event, :event_user => @event_user}
        end
      end
    end
  rescue ActiveRecord::RecordInvalid => ex
    format.js do
      render :update do |page|
        page << "message('" + _("I was unable to add you to the event.  %{errors}") % {:errors => @event_user.errors.full_messages.to_sentence } + "');"
      end     
    end
  end
  
  def edit
    respond_to do |format|
      format.html
      format.xml  { render :xml => @event }
    end
  end
  
  def update
    respond_to do |format|
      if @event.update_attributes(params[:event])
        flash[:notice] = 'Event was successfully updated.'
        format.html { redirect_to(group_events_path(@group)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @event_user = EventUser.find(params[:id])
    @event = @event_user.event
    @event_user.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = message
        redirect_back_or_default current_user
      end
      format.js do
        render :update do |page|
          page.replace_html "attend_#{@event.dom_id}", :partial => 'events/attending', :locals => {:event => @event}
        end
      end
    end
  end  

  protected
    def get_event
      @event = Event.find(params[:id])
    end
  
    def permission_denied 
      flash[:error] = _("You don't have permission manage the events for this group.")     
      respond_to do |format|
        format.html do
          redirect_to group_events_path(@group)
        end
      end
    end
  
end
