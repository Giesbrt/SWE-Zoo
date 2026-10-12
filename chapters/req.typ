// Anforderungs-IDs (/LF10/, /LD20/, ...): Definition mit Anker, Verweise klickbar
#let req(id) = [#box("/" + id + "/")#label(id)]
#let rref(id) = link(label(id), "/" + id + "/")
