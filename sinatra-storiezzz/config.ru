require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::Flash
use Rack::MethodOverride
use UsersController
use DreamsController
use SessionsController
run ApplicationController
