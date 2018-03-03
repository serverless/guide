const fs = require('fs')

const modify_relative_links = markdown => markdown.replace(/(\]\()(?:\.?\/)?(source\/)/g, '$1../../$2')

const README   = {}
README.path    = __dirname + '/../../README.md'
README.content = fs.readFileSync(README.path, {encoding: "utf8"})

const pages    = {}
pages.README   = __dirname + '/../src/book_README.md'
pages.SUMMARY  = __dirname + '/../src/book_SUMMARY.md'

const regex = /^([\W\w]+?)(\r?\n#+\s+Table of Contents\s*[\r\n]*)([\W\w]+?)(\r?\n#+\s)([\W\w]+)$/i

const parser   = {}
parser.README  = README.content.replace(regex, '$1$4$5')
parser.SUMMARY = README.content.replace(regex, '$3')
parser.SUMMARY = modify_relative_links(parser.SUMMARY)

fs.writeFileSync(pages.README,  parser.README,  {encoding: "utf8"})
fs.writeFileSync(pages.SUMMARY, parser.SUMMARY, {encoding: "utf8"})
