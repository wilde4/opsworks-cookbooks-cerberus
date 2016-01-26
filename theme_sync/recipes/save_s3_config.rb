# SAVE S3 CONFIG FILE

package "python"
package "python-setuptools"
package "python-distutils-extra"
package "python-dateutil"
package "python-requests"

package "s3cmd"

template '/home/deploy/.s3cfg' do
  source "s3cfg.erb"
  owner "deploy"
  mode "0600"
end