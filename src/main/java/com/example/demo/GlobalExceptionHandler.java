package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<String> handleBusinessException(final RuntimeException e) {
        System.out.println(e.getMessage());
        return ResponseEntity.status(500)
                .body(e.getMessage());
    }
}
