# Abla MJML

Responsive transactional email templates for Abla, with library-provided
`$mjml` syntax, automatic escaping, typed dynamic expressions, a plain-text
alternative, and a dependency-free renderer.

```abla
import github("AndreBaltazar8/abla-mjml")

fun welcome(name: string, url: string): Mjml = $mjml
<mjml>
  <mj-head><mj-preview>Confirm your account</mj-preview></mj-head>
  <mj-body background-color="#f5f5f2">
    <mj-section>
      <mj-column>
        <mj-text font-size="24px">Welcome, {name}</mj-text>
        <mj-button href={url}>Confirm email</mj-button>
      </mj-column>
    </mj-section>
  </mj-body>
</mjml>

val html = welcome("Ada", "https://example.com/verify").render()
val text = welcome("Ada", "https://example.com/verify").plainText()
```

The supported component set is intentionally small and reliable for
transactional mail: `mjml`, `mj-head`, `mj-preview`, `mj-body`, `mj-section`,
`mj-column`, `mj-text`, `mj-button`, `mj-divider`, `mj-spacer`, and `mj-image`.
It follows MJML's semantic component model and table-based responsive output,
while remaining pure Abla and suitable for compile-time subparser expansion.
Dynamic text is HTML-escaped. Dynamic `href` and `src` values accept only
absolute HTTPS URLs.

## Verify

```sh
make test
```

## License

MIT
