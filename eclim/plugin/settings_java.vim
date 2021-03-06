" Author:  Eric Van Dewoestine
"
" License: {{{
"
" Copyright (C) 2005 - 2014  Eric Van Dewoestine
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.
"
" }}}

" Global Varables {{{
  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaCompleteLayout',
    \ &completeopt !~ 'preview' && &completeopt =~ 'menu' ? 'standard' : 'compact',
    \ "Determines how overloaded methods are displayed in the completion popup.\n" .
    \ "The default is based on your current completion settings. If set to 'compact',\n" .
    \ "you can set it to 'standard' to force eclim to display all overridden members\n" .
    \ "in the popup rather than relying on the preview menu for that info.",
    \ '\(standard\|compact\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaCompleteCaseSensitive', !&ignorecase,
    \ 'Sets whether or not java code completion is case sensitive.',
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaValidate', 1,
    \ 'Sets whether or not to validate java files on save.',
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaSyntasticEnabled', 0,
    \ "Only enable this if you want both eclim and syntastic to validate your java files.\n" .
    \ "If you want to use syntastic instead of eclim, simply disable JavaValidate.",
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaSearchSingleResult', g:EclimDefaultFileOpenAction,
    \ 'Sets the command to use when opening a single result from a java search.')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaDocSearchSingleResult', 'open',
    \ 'Sets the command to use when opening a single result from a java doc search.',
    \ '\(open\|lopen\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaHierarchyDefaultAction', g:EclimDefaultFileOpenAction,
    \ 'Sets the command to use when opening an entry from the java hierarchy buffer.')
  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaCallHierarchyDefaultAction', g:EclimDefaultFileOpenAction,
    \ 'Sets the command to use when opening an entry from the java call hierarchy buffer.')

  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaCompilerAutoDetect', 1,
    \ "When enabled, eclim will attempt to determine the appropriate\n" .
    \ "compiler (ant, maven, javac) to set when you are editing java files,\n" .
    \ "allowing you to use :make to execute that build tool.",
    \ '\(0\|1\)')
  call eclim#AddVimSetting(
    \ 'Lang/Java', 'g:EclimJavaSetCommonOptions', 1,
    \ "Determines if eclim should set a few common vim options (include,\n" .
    \ "includeexpr, etc) for you when editing java files.",
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java/Ant', 'g:EclimAntValidate', 1,
    \ 'Sets whether or not to validate your ant xml files on save.',
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java/Ivy', 'g:EclimIvyClasspathUpdate', 1,
    \ "Sets whether or not to update your .classpath file when saving your\n" .
    \ "ivy dependencies file.",
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java/Maven', 'g:EclimMavenPomClasspathUpdate', 1,
    \ "Sets whether or not to update your .classpath file when saving your\n" .
    \ "maven pom.xml.",
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java/Log4j', 'g:EclimLog4jValidate', 1,
    \ 'Sets whether or not to validate your log4j.xml files on save.',
    \ '\(0\|1\)')

  call eclim#AddVimSetting(
    \ 'Lang/Java/Web.xml', 'g:EclimWebXmlValidate', 1,
    \ 'Sets whether or not to validate your web.xml files on save.',
    \ '\(0\|1\)')
" }}}

" vim:ft=vim:fdm=marker
