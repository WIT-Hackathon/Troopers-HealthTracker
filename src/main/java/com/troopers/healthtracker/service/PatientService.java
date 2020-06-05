package com.troopers.healthtracker.service;

import com.troopers.healthtracker.model.Patient;
import com.troopers.healthtracker.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class PatientService {

    private PatientRepository repository;

    @Autowired
    public PatientService(PatientRepository repository) {
        this.repository = repository;
    }

    public List<Patient> findAll() {
        return StreamSupport.stream(repository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public Optional<Patient> findById(Long id) {
        return repository.findById(id);
    }

    public Patient save(Patient patient) {
        return repository.save(patient);
    }

    public void deleteById(Long id) {
        repository.deleteById(id);
    }
}
