package edu.mum.coffee;


import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.client.RestTemplate;

import edu.mum.coffee.domain.Product;

public class clientSide {

    private static final Logger log = LoggerFactory.getLogger(clientSide.class);

    public static void main(String args[]) {
        RestTemplate restTemplate = new RestTemplate();
        @SuppressWarnings("unchecked")
		ArrayList<Product> product = restTemplate.getForObject("http://localhost:8090/product", ArrayList.class);
        log.info(product.toString());
    }
    
}
