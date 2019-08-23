class profile::puppet_master {

  class { 'puppet_metrics_collector':
    puppetserver_hosts => [ $trusted['certname'] ],
    puppetdb_hosts     => [ $trusted['certname'] ],
    collection_frequency => 1,
  }

}
