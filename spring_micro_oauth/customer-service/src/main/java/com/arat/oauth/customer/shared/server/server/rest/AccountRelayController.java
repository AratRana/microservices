package com.arat.oauth.customer.shared.server.server.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 * @author Arat
 *
 */
@RestController
public class AccountRelayController {

    @Autowired
    OAuth2RestTemplate oAuth2RestTemplate;

    @GetMapping("/account-relay")
    public String getAccount() {

        String body = oAuth2RestTemplate.getForEntity("http://localhost:9099/account", String.class).getBody();

        return body;

    }
}
