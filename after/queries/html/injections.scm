;; extends

; Highlight Jinja/Django template tags ({{ ... }}, {% ... %}, {# ... #})
; embedded in HTML text and attribute values
([
  (text)
  (attribute_value)
] @injection.content
  (#lua-match? @injection.content "{[{%%#]")
  (#set! injection.language "jinja"))
