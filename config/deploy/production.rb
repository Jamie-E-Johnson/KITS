puts "PRODUCTION DEPLOY!"

set :deploy_to, "#{base}/apps/kits/production"
set :ruby_version, 'ruby-2.0.0-p195'
set :custom_bundle_dir, "#{deploy_to}/shared/bundle"
set :default_environment, {
    LANG: 'en_US.UTF-8',
    PATH: "#{base}/support/#{ruby_version}/bin:#{base}/support/postgresql-9.2.4/bin:#{custom_bundle_dir}/ruby/2.0.0/bin:$PATH",
    GEM_HOME: "#{custom_bundle_dir}/ruby/2.0.0",
    GEM_PATH: "#{custom_bundle_dir}/ruby/2.0.0/gems",
}