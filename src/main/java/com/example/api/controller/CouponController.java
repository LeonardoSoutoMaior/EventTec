package com.example.api.controller;

import com.example.api.domain.coupon.Coupon;
import com.example.api.domain.coupon.CouponRequestDTO;
import com.example.api.service.CouponService;
import org.apache.coyote.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/coupon")
public class CouponController {

    @Autowired
    private CouponService couponService;

    @PostMapping("/event/{eventId}")
    public ResponseEntity<Coupon> addCouponToEvent(@PathVariable UUID eventId, @RequestBody CouponRequestDTO data){
        Coupon coupons = couponService.addCouponToEvent(eventId, data);
        return ResponseEntity.ok(coupons);
    }
}