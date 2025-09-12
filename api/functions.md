## functions
* **[print(string)](#print)**
* **[printps(string)](#printps)**
* **[sleep(int ms)](#sleep)**
* **[run_thread(function)](#run_thread)**

### print
```lua
-- prints to console
print("Hello Nora!")
```

### printps
```lua
-- prints colorful to console
printps("`cHello`` `@Nora```4!``")
```

### sleep
```lua
sleep(1337) -- sleeps 1337 milliseconds
```


### run_thread
```lua
-- Control flag for the thread loop
local loop = true

-- Thread function that runs in a separate execution context
-- This function will continuously print "hi" while the loop flag is true
function test_thread()
    while loop do
        print("hi")
        sleep(10) -- Added small delay to prevent CPU overutilization
    end
    print("Thread exiting gracefully")
end

-- Start the thread in the background
-- run_thread executes the function concurrently without blocking main execution
run_thread(test_thread)

print("Main thread continues execution immediately")

-- Main thread sleeps for 2 seconds while background thread runs
sleep(2000)

print("Stopping loop - Signaling thread to terminate")
loop = false  -- Set flag to stop the thread loop

-- Optional: Wait for thread to finish (good practice for cleanup)
sleep(10)  -- Brief wait to ensure thread detects the flag change

print("Main thread completed")
```
