package ra.edu.baikiemtradaugio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.edu.baikiemtradaugio.model.entity.Employee;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @GetMapping
    public String listEmployees(Model model) {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee(1, "Phan Phước Anh, "Quản lí", 25000));
        employees.add(new Employee(2, "Nguyễn Văn A", "Nhân sự", 15000));
        employees.add(new Employee(3, "Nguyễn Thị B", "Vệ sinh", 1000));

        model.addAttribute("employees", employees);
        return "employee-list";
    }
}
