Ringer problem:-

module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);

    // Turn on motor if there's a ring AND we are in vibrate mode
    assign motor = ring & vibrate_mode;
    
    // Turn on ringer if there's a ring AND we are NOT in vibrate mode
    assign ringer = ring & ~vibrate_mode; 

endmodule