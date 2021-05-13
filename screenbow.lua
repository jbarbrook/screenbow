require "keybow"

-- Present Layout
-- Close	Google Scholar		Lancaster OneSearch
-- Up		Down			Esc
-- Reason	Label			Enter
-- Include	Undecided		Exclude


function setup() -- Custom Light
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 0, 255, 0) -- Green
    keybow.set_pixel(1, 255, 0, 255) -- Magenta
    keybow.set_pixel(2, 255, 0, 0) -- red
    keybow.set_pixel(3, 0, 255, 255) -- Cyan
    keybow.set_pixel(4, 0, 255, 255) -- Cyan
    keybow.set_pixel(5, 0, 255, 255) -- Cyan
    keybow.set_pixel(6, 255, 0, 255) -- Magenta
    keybow.set_pixel(7, 255, 0, 255) -- Magenta
    keybow.set_pixel(8, 255, 0, 255) -- Magenta
    keybow.set_pixel(9, 255, 0, 0) -- Red
    keybow.set_pixel(10, 0, 255, 255) -- Cyan
    keybow.set_pixel(11, 0, 255, 255) -- Cyan
end

function handle_key_00(pressed)
    keybow.set_key("i", pressed)
end

function handle_key_01(pressed)
    keybow.set_key("u", pressed)
end

function handle_key_02(pressed)
    keybow.set_key("e", pressed)
end

function handle_key_03(pressed)
    keybow.set_key("r", pressed)
end

function handle_key_04(pressed)
    keybow.set_key("l", pressed)
end

function handle_key_05(pressed)
    keybow.set_key(keybow.ENTER, pressed)
end

function handle_key_06(pressed)
    keybow.set_key(keybow.UP_ARROW, pressed)
end

function handle_key_07(pressed)
    keybow.set_key(keybow.DOWN_ARROW, pressed)
end


function handle_key_08(pressed)
    keybow.set_key(keybow.ESC, pressed)
end


function handle_key_09(pressed) -- Exit Page
    if pressed then
	keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_DOWN)
	keybow.tap_key(keybow.F4)
	keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_UP)
    end
end

function handle_key_10(pressed)
    if pressed then
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
	keybow.tap_key("c", pressed)
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_DOWN)
        keybow.tap_key("r", pressed)
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_UP)
        keybow.sleep(500)
        keybow.text("chrome")
        keybow.sleep(500)
        keybow.tap_enter()
	keybow.sleep(500)
	keybow.text("https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=")
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
	keybow.tap_key("v", pressed)
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
	keybow.text("&btnG=")
	keybow.sleep(500)
	keybow.tap_enter()

    end
end


function handle_key_11(pressed)
    if pressed then
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
	keybow.tap_key("c", pressed)
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_DOWN)
        keybow.tap_key("r", pressed)
        keybow.set_modifier(keybow.LEFT_META, keybow.KEY_UP)
        keybow.sleep(500)
        keybow.text("chrome")
        keybow.sleep(500)
        keybow.tap_enter()
	keybow.sleep(500)
	keybow.text("https://onesearch.lancaster-university.uk/primo-explore/search?query=any,contains,")
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
	keybow.tap_key("v", pressed)
	keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
	keybow.text("&tab=electronic&search_scope=LSCOP_44LAN_ELEC&vid=LUL_VU1&offset=0&pcAvailability=true")
	keybow.sleep(500)
	keybow.tap_enter()

    end
end

