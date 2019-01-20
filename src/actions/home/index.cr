class Home::Index < ApiAction
  Habitat.create do
    setting some_setting : String
  end

  get "/" do
    json({hello: "Hello from Home::Index, SOME_VAR=#{settings.some_setting}"})
  end
end
