# Checkpoint 2

## Decode and Dispatcher

Grab instruction from i-queue, read busy list and RAT before sending instruction to open reservation stations.

## Reservation Stations

Logic should be implemented to track which instructions should be sent out to function units. Edge case if multiple operations are ready to be sent out. Which operations should we prioritize?

## Function Units

Most of these can be taken from Synopsys IPs. Input will be from dispatcher and output will be to CDB.

## CDB

This should be registered(?). Logic should be established to select which operation to output if multiple operations finish.

## Queue Structures (ROB, Free List)

Should be basic to implement as they are based on queue. They will only enqeueue/dequeue once per clock cycle.

## Table Structures (RAT, RRAT)

These should be registered. For RAT, the dispatcher should request which arch reg it's requesting, and once it gets dispatched, it will carry the associated phys reg.

RRAT should update as soon as commit happens.