package org.example.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/")
public class HomeController
{
    @RequestMapping(method = RequestMethod.GET)
    public String show()
    {
        return "upload";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submit(@RequestParam final MultipartFile file, final Model model)
    {
        model.addAttribute("file", file.getOriginalFilename());

        return "confirm";
    }
}
