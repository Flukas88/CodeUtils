import javax.management.ObjectName
import javax.management.remote.JMXConnectorFactory as JmxFactory
import javax.management.remote.JMXServiceURL as JmxUrl

 def getJmxVersion(serverHost, serverPort, mbeanString, versionAttributeName) {
      try {
         def serverUrl     = "service:jmx:rmi:///jndi/rmi://$serverHost:$serverPort/jmxrmi"
         def server        = JmxFactory.connect(new JmxUrl(serverUrl)).MBeanServerConnection
         def serverInfo    = new GroovyMBean(server, mbeanString).getProperty(versionAttributeName)
         return "$serverInfo"
      }
      catch(javax.management.InstanceNotFoundException e) { }
      catch(java.io.IOException e) { }
  }