Rails.application.routes.draw do
  get 'convert/:number' => 'convert#convert'
end
