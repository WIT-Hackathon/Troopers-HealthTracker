package com.troopers.healthtracker.controller;

import com.troopers.healthtracker.model.Patient;
import com.troopers.healthtracker.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class PatientController {

    private PatientService service;

    @Autowired
    public PatientController(PatientService service) {
        this.service = service;
    }

    @GetMapping("/list-patients")
    public String showAllPatients(Model model) {
        model.addAttribute("patients", service.findAll());
        return "patients";
    }

    @GetMapping("/new-patient")
    public String showPatientCreationForm(Model model) {
        model.addAttribute("patient", new Patient());
        return "new-patient";
    }

    @PostMapping(value = "/add", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addNewPatient(@Valid @ModelAttribute Patient patient, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "new-patient";
        }
        service.save(patient);
        return "redirect:/list-patients";
    }

    @GetMapping("/{id}")
    public String showPatientById(@PathVariable Long id, Model model) {
        Patient patient = service.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid patient Id:" + id));
        model.addAttribute("patient", patient);
        return "edit-patient";
    }

    @PostMapping("/{id}/update")
    public String updatePatient(@PathVariable Long id, @Valid @ModelAttribute Patient patient, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "edit-patient";
        }
        service.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid patient Id:" + id));
        service.save(patient);
        return "redirect:/list-patients";
    }

    @PostMapping("/{id}/delete")
    public String deletePatient(@PathVariable Long id, Model model) {
        service.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid patient Id:" + id));
        service.deleteById(id);
        return "redirect:/list-patients";
    }
    @GetMapping("/{id}/bar")
    public String showBar(@PathVariable Long id, Model model) {
        Patient patient = service.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid patient Id:" + id));
        //todo conver it to json/gson
        model.addAttribute("patient", patient);
        return "bar";
    }

}
