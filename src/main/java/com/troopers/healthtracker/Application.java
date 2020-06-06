package com.troopers.healthtracker;

import com.troopers.healthtracker.model.Patient;
import com.troopers.healthtracker.repository.PatientRepository;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages={"com.troopers.healthtracker"})
@EnableJpaRepositories(basePackages="com.troopers.healthtracker.repository")
public class Application extends SpringBootServletInitializer {
    @Autowired
    private PatientRepository repository;
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    @Bean
    InitializingBean seedData() {
        return () -> {
            repository.save(new Patient("Sheldon", "Cooper", "Fever", 8L, "sheldon@gmail.com", "98480331233" ));
            repository.save(new Patient("Amy","Fowler","Headache", 3L,"amy@abc.com", "8764371234" ));
            repository.save(new Patient("Meg","March","Cold", 5L,"meg@optum.com", "7646612531"));
            repository.save(new Patient("Dav","John","Fever", 8L,"dwilson@optum.com", "7646613472"));
            repository.save(new Patient("Nick","Seaon","Cough", 6L,"m_enrique@optum.com", "7649982531"));

        };
    }
}
