package com.ccicnmg.certify.service;

import java.time.ZonedDateTime;

/**
 * Created by lizhe on 16/7/24.
 */
public class CurrentTimeDateTimeService implements DateTimeService {
    @Override
    public ZonedDateTime getCurrentDateAndTime() {
        return ZonedDateTime.now();
    }
}
