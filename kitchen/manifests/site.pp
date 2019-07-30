node 'manager00_ubuntu' {
  class { "wazuh::manager":
        configure_wodle_openscap => false
  }
}
node 'agent00_ubuntu' {
  class { "wazuh::agent":
        ossec_ip => "10.1.0.1",
        configure_wodle_openscap => false
  }
}
node 'manager00_centos' {
  class { "wazuh::manager":
        configure_wodle_openscap => true
  }
}
node 'agent00_centos' {
  class { "wazuh::agent":
        ossec_ip => "10.1.0.3",
        configure_wodle_openscap => true
  }
}