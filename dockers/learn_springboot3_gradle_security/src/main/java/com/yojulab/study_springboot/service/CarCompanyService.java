package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CarCompanyService {

    @Autowired
    SharedDao sharedDao;

    public Map selectCarCompany(Map params) {
        String sqlMapId = "CarCompany.selectCarCompany";

        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, params));
        return result;
    }
}
