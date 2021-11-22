resource "aws_elasticache_cluster" "my_Elastic_Cache" {
  cluster_id           = "my_Elastic_Cache"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}