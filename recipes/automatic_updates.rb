#
# Cookbook Name:: automatic_updates
# Recipe:: automatic_updates
#
# Copyright 2011 Junta de Andalucía
#
# Author::
#  * David Amian Valle <damian@emergya.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

upstart_apt = '/etc/init/automatic-updates.conf'
if node["automatic_updates"]["on_login"] == "true" or node["automatic_updates"]["on_boot"] == "true"
  start_event = ""
  if node["automatic_updates"]["on_login"] == "true"
    if node["automatic_updates"]["on_boot"] == "true"
      start_event = "(runlevel [2] or desktop-session-start)"
    else
      start_event = "desktop-session-start"
    end
  else
    start_event = "runlevel [2]"
  end
  template upstart_apt do
    owner "root"
    group "root"
    mode "0644"
    variables :start_event => start_event
    source "automatic-updates.conf.erb"
  end

else
  if FileTest.exist? upstart_apt
    File.delete upstart_apt
  end

end


if node["automatic_updates"]["on_monday"] == "on" or node["automatic_updates"]["on_tuesday"] == "on" or
node["automatic_updates"]["on_wednesday"] == "on" or node["automatic_updates"]["on_thursday"] == "on" or
node["automatic_updates"]["on_friday"] == "on"
  package 'cron-apt' do
    action :nothing
  end.run_action(:install)
  
  cron_apt_config = "/etc/cron-apt/config"
  cookbook_file cron_apt_config do
    source "apt.config"
    owner "root"
    group "root"
    mode "0644"
  end
  cron_apt_action_update = "/etc/cron-apt/action.d/0-update"
  cookbook_file cron_apt_action_update do
    source "apt_action.update"
    owner "root"
    group "root"
    mode "0644"
  end

  cron_apt_action_upgrade = "/etc/cron-apt/action.d/3-download"
  cookbook_file cron_apt_action_upgrade do
    source "apt_action.upgrade"
    owner "root"
    group "root"
    mode "0644"
  end
 
  if node["automatic_updates"]["max_random_time_span"] != "000"
    time_span = node["automatic_updates"]["max_random_time_span"].to_i
    span_hour, span_min = time_span.divmod(60)
  else
    span_hour, span_min = 0
  end

 
  if node["automatic_updates"]["on_monday"] == "on"
    hour, min = node["automatic_updates"]["on_monday_time"].split(":")
    mon_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    mon_time = "#"
  end

  if node["automatic_updates"]["on_tuesday"] == "on"
    hour, min = node["automatic_updates"]["on_tuesday_time"].split(":")
    tue_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    tue_time = "#"
  end

  if node["automatic_updates"]["on_wednesday"] == "on"
    hour, min = node["automatic_updates"]["on_wednesday_time"].split(":")
    wed_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    wed_time = "#"
  end


  if node["automatic_updates"]["on_thursday"] == "on"
    hour, min = node["automatic_updates"]["on_thursday_time"].split(":")
    thu_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    thu_time = "#"
  end


  if node["automatic_updates"]["on_friday"] == "on"
    hour, min = node["automatic_updates"]["on_friday_time"].split(":")
    fri_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    fri_time = "#"
  end


  if node["automatic_updates"]["on_saturday"] == "on"
    hour, min = node["automatic_updates"]["on_saturday_time"].split(":")
    sat_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    sat_time = "#"
  end


  if node["automatic_updates"]["on_sunday"] == "on"
    hour, min = node["automatic_updates"]["on_sunday_time"].split(":")
    sun_time = "#{min.to_i + span_min} #{hour.to_i + span_hour}"
  else
    sun_time = "#"
  end



  cron_apt = "/etc/cron.d/cron-apt"
  template cron_apt do
    owner "root"
    group "root"
    mode "0644"
    variables (:mon_time => mon_time,
               :tue_time => tue_time,
               :wed_time => wed_time,
               :thu_time => thu_time,
               :fri_time => fri_time,
               :sat_time => sat_time,
               :sun_time => sun_time)
    source "cron-apt.erb"
  end


else
  package 'cron-apt' do
    action :nothing
  end.run_action(:remove)

end
