#
# Cookbook Name:: volcanic_apps_clockwork
# Recipe:: default
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
volcanic_apps_clockwork "volcanic-apps-clockwork" do
  working_directory "/srv/www/volcanic_app_store/current"
  rails_env "production"
  user "deploy"
  group "www-data"
end