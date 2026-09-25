# Keyd Configuration

A [keyd](https://github.com/rvaiya/keyd) configuration that adds custom modifier behavior, a navigation layer, and mouse/scroll shortcuts.

## Installation

```
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable --now keyd
```

## Keybindings

### Super Key

* **Tap Left Super:** `Super + O`
* **Hold Left Super:** Acts as normal `Super`
* **Super + Scroll Up/Down:** `Super + Up/Down`

### Right Alt — Navigation Layer

Holding **Right Alt** activates the `nav` layer:

| Key | Action       |
| --- | ------------ |
| `H` | Left         |
| `J` | Down         |
| `K` | Up           |
| `L` | Right        |
| `U` | Left Mouse   |
| `I` | Middle Mouse |
| `O` | Right Mouse  |

### Caps Lock / Escape

* **Caps Lock:** Escape
* **Escape:** Caps Lock

### Alt Layer

The `alt` layer maps:

* **Alt + Scroll Up:** `Super + Left`
* **Alt + Scroll Down:** `Super + Right`

## Installation

Copy the configuration to:

```text
/etc/keyd/default.conf
```

Then restart keyd:

```bash
sudo systemctl restart keyd
```

