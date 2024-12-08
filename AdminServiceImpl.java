package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService
{
  @Autowired
  private EmployeeRepository employeeRepository;
  
 
  
  @Autowired
  private AdminRepository adminRepository;
  
  
  public List<Employee> ViewAllEmployees()
  {
    return employeeRepository.findAll();
  }

  
  public Admin checkadminlogin(String uname, String pwd)
  {
      return adminRepository.checkadminlogin(uname, pwd);
  }


  public String deleteemp(int eid) 
  {
    employeeRepository.deleteById(eid);
    return "Employee Deleted Successfully";
  }

  
  public Employee displayempbyId(int eid) 
  {
    return employeeRepository.findById(eid).get();
  }

  
  public long empcount() 
  {
    return employeeRepository.count();
  }

  
  public String updateempstatus(String status, int eid) 
  {
    int n = employeeRepository.updateempstatus(status, eid);
    if(n>0)
      return "Employee Status Updated Successfully";
    else
      return "Employee Id Not Found";
  }

  

}