locals {
    zookeeper = {
        "zookeeper-1.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2000" }
        "zookeeper-2.echd.tf" = { storage_root = "storage-2", storage_data = "storage-2", vmid = "2001" }
        "zookeeper-3.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2002"  }
    }
    kafka = {
        "kafka-1.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2003" }
        "kafka-2.echd.tf" = { storage_root = "storage-2", storage_data = "storage-2", vmid = "2004" }
        "kafka-3.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2005" }
    }
    clickhouse = {
        "clickhouse-1.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2006" }
        "clickhouse-2.echd.tf" = { storage_root = "storage-2", storage_data = "storage-2", vmid = "2007" }
        "clickhouse-3.echd.tf" = { storage_root = "storage-1", storage_data = "storage-1", vmid = "2008" }
    }
}
