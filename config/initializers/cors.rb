# Be sure to restart your server when you modify this file.

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Allow requests from your frontend origin(s).
    # Update with your frontend URL(s), e.g. http://localhost:5173 for Vite
    origins "http://localhost:3000", "http://127.0.0.1:3000",
            "http://localhost:5173", "http://127.0.0.1:5173",
            "http://localhost:5174", "http://127.0.0.1:5174",
            "http://localhost:8080", "http://127.0.0.1:8080"

    resource "*",
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
