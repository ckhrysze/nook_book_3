import Config

config :libcluster,
  topologies: [
    nook_book: [
      strategy: Cluster.Strategy.Epmd,
      config: [
        hosts: [
          :"nook_book@10.0.1.163",
          :"nook_book@10.0.1.190"
        ]
      ]
    ]
  ]

config :nook_book, NookBookWeb.Endpoint,
  server: true,
  http: [port: 4000],
  url: [host: "localhost"],
  secret_key_base: "+hvaPSF3498dLMx5pAXd6PPRFm+tlPm6/5lQCEQaQZlk91yuo/kBqUMq6A+6xmnB"
