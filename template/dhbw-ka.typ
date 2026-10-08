// LTeX: enabled=false

#import "@preview/linguify:0.5.0": linguify, linguify-raw
#import "base.typ": project
#import "utils.typ": __linguify-content, styled-table

/// Template adapter for DHBW Karlsruhe thesis documents.
///
/// This function configures the base `project` template with DHBW Karlsruhe-specific
/// settings, including confidentiality clauses and AI tool acknowledgements
/// according to DHBW guidelines.
///
/// In addition to the parameters listed below, this adapter accepts all parameters
/// from the base `project` template (e.g., `title-long`, `title-short`, `thesis-type`,
/// `abstracts`, `appendices`, `library`, `abbreviations`, `lang`).
/// -> content
#let dhbw-ka-adapter(
  /// Whether to include a confidentiality clause page. -> bool
  confidentiality-clause: true,
  /// List of AI tools used in the thesis, according to section 4.6 of
  /// #link("https://www.karlsruhe.dhbw.de/fileadmin/user_upload/documents/content-de/Studiengaenge-Technik/Informatik/191212_Leitlinien_Praxismodule_Studien_Bachelorarbeiten.pdf")[Leitlinien für Wissenschaftliche Arbeiten]. Each entry should have
  /// `tool` (name) and `usage` (description of how it was used). -> array
  ai-acknowledgement: (
    (
      tool: none,
      usage: none,
    ),
  ),
  /// The examination degree, e.g., "Bachelor of Science (B.Sc.)". -> str
  examination: "Bachelor of Science (B.Sc.)",
  /// The field of study, e.g., "Computer Science". -> str
  study: "Computer Science",
  /// List of author dictionaries. Each author should have: `firstname`,
  /// `lastname`, `matriculation-number`, `course`, and optionally `signature`
  /// (an image or text for digital signatures). -> array
  authors: (
    (
      firstname: none,
      lastname: none,
      matriculation-number: none,
      course: none,
      signature: none,
    ),
  ),
  /// Submission date of the thesis. -> str
  submission-date: datetime.today().display("[day].[month].[year]"),
  /// Format string for displaying the submission date. (see #link("https://typst.app/docs/reference/foundations/datetime/#format")[datetime formats]) -> str
  submission-date-format: "[day].[month].[year]",
  /// Duration of the thesis processing period in weeks. -> int | none
  processing-period-weeks: none,
  /// Name of the university supervisor. -> str | none
  university-supervisor: none,
  /// Name of the training company. -> str | none
  company-name: "SAP SE / KIT",
  /// City where the company is located. -> str | none
  company-city: "Karlsruhe",
  /// Company logo image. -> content | none
  company-logo: none,
  /// Department within the company. -> str | none
  company-department: none,
  /// Name of the company supervisor. -> str | none
  company-supervisor: none,
  /// Additional arguments passed to the base template (e.g., `title-long`,
  /// `title-short`, `thesis-type`, `abstracts`, `appendices`, `library`,
  /// `abbreviations`, `lang`).
  ..args,
  /// The main document body content. -> content
  body,
) = {
  // Submission Information
  let submission-info = [
    #context __linguify-content("as-part-of-examination-dhbw")

    *#examination*

    #context __linguify-content("in-field-of-study", args: (study: study))

    #context __linguify-content("at-the-institution", args: (
      institution: linguify-raw("dhbw-long"),
      city: linguify-raw("ka"),
    ))
  ]

  // TODO: only for compatibility reasons: Remove with v3.0.0 release
  if type(submission-date) == datetime {
    submission-date = submission-date.display(submission-date-format)
  }

  // Metadata
  let metadata = (
    context __linguify-content("submission-date"),
    submission-date,
    context __linguify-content("processing-duration"),
    context __linguify-content("weeks", args: (count: processing-period-weeks)),
    context (
      __linguify-content("matriculation-number")
        + ", "
        + __linguify-content("course")
    ),
    authors
      .map(a => a.matriculation-number + ", " + a.course)
      .join(linebreak()),
    ..if company-name != none and company-city != none {
      (
        context __linguify-content("training-company"),
        company-name + linebreak() + company-city,
      )
    },
    ..if company-department != none {
      (context __linguify-content("department"), company-department)
    },
    ..if company-supervisor != none {
      (
        context __linguify-content("supervisor-at-training-company"),
        company-supervisor,
      )
    },
    context __linguify-content("supervisor-at-university"),
    university-supervisor,
  )

  // AI-Declaration
  let ai-acknowledgement = ai-acknowledgement.filter(ack => (
    ack.tool != none and ack.usage != none
  ))
  let ai-acknowledgement-text = {
    pagebreak(weak: true)
    align(center, context heading(
      __linguify-content("ai-acknowledgement-heading-dhbw"),
      level: 1,
    ))

    let table-cells = ai-acknowledgement.fold((), (acc, (tool, usage)) => (
      acc + (tool, usage)
    ))

    align(center, styled-table(
      columns: (auto, 1fr),
      table-content: (
        table.header(
          context __linguify-content("tool"),
          context __linguify-content("usage-description"),
        ),
        ..table-cells,
      ),
    ))
  }

  // Confidentiality Clause
  let confidentiality-clause-text = {
    pagebreak()
    [#[] <__confidentiality-clause>]
    align(center, context heading(
      __linguify-content("confidentiality-agreement"),
      level: 1,
    ))

    context __linguify-content("confidentiality-agreement-note-dhbw")
  }

  show: project.with(
    __logo-left: company-logo,
    __logo-right: image("assets/DHBW-Logo.svg"),
    __authors: authors,
    __submission-info: submission-info,
    __metadata: metadata,
    __confidentiality-clause: confidentiality-clause,
    __postamble: (
      ..if (confidentiality-clause) { (confidentiality-clause-text,) },
      ..if (ai-acknowledgement.len() > 0) {
        (ai-acknowledgement-text,)
      },
    ),
    ..args,
  )
  body
}
