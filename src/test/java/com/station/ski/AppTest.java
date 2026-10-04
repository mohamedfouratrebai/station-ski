package com.station.ski;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class AppTest {

    @Test
    void testMessage() {
        assertEquals(
            "Bienvenue à la station de ski !",
            App.message()
        );
    }
}
