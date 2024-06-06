project_name: "explore-assistant"

application: explore_assistant {
  label: "Explore Assistant"
  url: "https://8080-cs-694421286087-default.cs-asia-southeast1-yelo.cloudshell.dev/bundle?authuser=0"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    # external_api_urls: ["cloud function url"]
  }
}
