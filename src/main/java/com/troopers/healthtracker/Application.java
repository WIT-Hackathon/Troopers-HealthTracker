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
            repository.save(new Patient("Sheldon", "Cooper", "sheldon@gmail.com", "Fever", 8L));
            repository.save(new Patient("Amy","Fowler","amy@abc.com", "Headache", 3L));
            repository.save(new Patient("Meg","March","meg@gmail.com","Cold", 5L));

        };
    }
}
