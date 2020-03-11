execute if score #specialmode game matches 2 run loot give @s loot game:randomopitem
execute unless score #specialmode game matches 2 run loot give @s loot game:randomitem


#head: https://misode.github.io/loot-table/?q=eyJwb29scyI6W3sicm9sbHMiOjEsImVudHJpZXMiOlt7InR5cGUiOiJtaW5lY3JhZnQ6aXRlbSIsIm5hbWUiOiJtaW5lY3JhZnQ6cGxheWVyX2hlYWQiLCJmdW5jdGlvbnMiOlt7ImZ1bmN0aW9uIjoibWluZWNyYWZ0OnNldF9uYnQiLCJ0YWciOiJ7ZGlzcGxheTp7TmFtZTpcIntcXFwidGV4dFxcXCI6XFxcIkhvbmV5IFNsaW1lXFxcIn1cIn0sU2t1bGxPd25lcjp7SWQ6XCI4MjIxMjE1Yy00NzJmLTQ5ZjktODVmMy01OTY1YjlkMDI1NTRcIixQcm9wZXJ0aWVzOnt0ZXh0dXJlczpbe1ZhbHVlOlwiZXlKMFpYaDBkWEpsY3lJNmV5SlRTMGxPSWpwN0luVnliQ0k2SW1oMGRIQTZMeTkwWlhoMGRYSmxjeTV0YVc1bFkzSmhablF1Ym1WMEwzUmxlSFIxY21Vdk9XTTFZVEprT1dOaE5UVmlZakV5TTJOaFpqRmpPVFUzWlRBNVlqbG1PRGcyWkRjNU9XUXlZVE5qTkRoaVpqWXlORFZtTkdWbU9EVm1NelptWm1VeU1DSjlmWDA9XCJ9XX19fSJ9XX0seyJ0eXBlIjoibWluZWNyYWZ0Oml0ZW0iLCJuYW1lIjoibWluZWNyYWZ0OnBsYXllcl9oZWFkIiwiZnVuY3Rpb25zIjpbeyJmdW5jdGlvbiI6Im1pbmVjcmFmdDpzZXRfbmJ0IiwidGFnIjoie2Rpc3BsYXk6e05hbWU6XCJ7XFxcInRleHRcXFwiOlxcXCJQYXJraW5nIExvdFxcXCJ9XCJ9LFNrdWxsT3duZXI6e0lkOlwiZTIwMTQzZDUtYmYwOS00YWY3LThjZTUtMTZhMjE1YjQ5NjU1XCIsUHJvcGVydGllczp7dGV4dHVyZXM6W3tWYWx1ZTpcImV5SjBaWGgwZFhKbGN5STZleUpUUzBsT0lqcDdJblZ5YkNJNkltaDBkSEE2THk5MFpYaDBkWEpsY3k1dGFXNWxZM0poWm5RdWJtVjBMM1JsZUhSMWNtVXZNek00TW1NeE9EUmhNekF5WkRZek5qY3lPREJqWXpjME5EUXhOamN6TjJVd05UZGlNelV3TXpJellXWm1NVGMyWVRSa1pqa3lZMlZoT1dSaE1EWmlOaUo5ZlgwPVwifV19fX0ifV19LHsidHlwZSI6Im1pbmVjcmFmdDppdGVtIiwibmFtZSI6Im1pbmVjcmFmdDpwbGF5ZXJfaGVhZCIsImZ1bmN0aW9ucyI6W3siZnVuY3Rpb24iOiJtaW5lY3JhZnQ6c2V0X25idCIsInRhZyI6IntkaXNwbGF5OntOYW1lOlwie1xcXCJ0ZXh0XFxcIjpcXFwiQmFnXFxcIn1cIn0sU2t1bGxPd25lcjp7SWQ6XCJjMmRmMGU5NS1mNWNmLTQyZTctYTYzNS1jZTQwYjcyYzcwYWFcIixQcm9wZXJ0aWVzOnt0ZXh0dXJlczpbe1ZhbHVlOlwiZXlKMFpYaDBkWEpsY3lJNmV5SlRTMGxPSWpwN0luVnliQ0k2SW1oMGRIQTZMeTkwWlhoMGRYSmxjeTV0YVc1bFkzSmhablF1Ym1WMEwzUmxlSFIxY21VdlptRmlPR0kxTVRJd05HUXlOekJrT0RjMlpqZ3pNR1l6TkdObE5USTNaVFEyTlRRNE5UVmtZV000WWpKbVl6RTVZamswTnpreE5XUTBaVFF3Tm1VME55SjlmWDA9XCJ9XX19fSJ9XX0seyJ0eXBlIjoibWluZWNyYWZ0Oml0ZW0iLCJuYW1lIjoibWluZWNyYWZ0OnBsYXllcl9oZWFkIiwiZnVuY3Rpb25zIjpbeyJmdW5jdGlvbiI6Im1pbmVjcmFmdDpzZXRfbmJ0IiwidGFnIjoie2Rpc3BsYXk6e05hbWU6XCJ7XFxcInRleHRcXFwiOlxcXCJDYWtlIChncmVlbilcXFwifVwifSxTa3VsbE93bmVyOntJZDpcIjM1YjZkMjliLTc5NGQtNDBlOS04ODY5LTM4YmRkNDZhZmZhY1wiLFByb3BlcnRpZXM6e3RleHR1cmVzOlt7VmFsdWU6XCJleUowWlhoMGRYSmxjeUk2ZXlKVFMwbE9JanA3SW5WeWJDSTZJbWgwZEhBNkx5OTBaWGgwZFhKbGN5NXRhVzVsWTNKaFpuUXVibVYwTDNSbGVIUjFjbVV2TkdFMU1qSmtaamxsTURGbU5EYzBORGc0Wm1Vek1qY3daakV4WWpKbE9USXhOV1ExWm1VNE1tWTFOV0U0TjJVMU9EY3pOR1ZrTVRGa1l6TTROV1JrWVNKOWZYMD1cIn1dfX19In1dfSx7InR5cGUiOiJtaW5lY3JhZnQ6aXRlbSIsIm5hbWUiOiJtaW5lY3JhZnQ6cGxheWVyX2hlYWQiLCJmdW5jdGlvbnMiOlt7ImZ1bmN0aW9uIjoibWluZWNyYWZ0OnNldF9uYnQiLCJ0YWciOiJ7ZGlzcGxheTp7TmFtZTpcIntcXFwidGV4dFxcXCI6XFxcIkthcHBhXFxcIn1cIn0sU2t1bGxPd25lcjp7SWQ6XCIyNTUxN2VjYS0xNjg4LTRmYzktYmZhMS02NmU1OGNjN2Y3N2RcIixQcm9wZXJ0aWVzOnt0ZXh0dXJlczpbe1ZhbHVlOlwiZXlKMFpYaDBkWEpsY3lJNmV5SlRTMGxPSWpwN0luVnliQ0k2SW1oMGRIQTZMeTkwWlhoMGRYSmxjeTV0YVc1bFkzSmhablF1Ym1WMEwzUmxlSFIxY21Vdk5HTTJNMlExWm1WbU9HVXdaVFJqWXpFd1lqUmhObU13T0dKaE1UbGpaVGsyTXpjMU16bGlNamcwTTJJd1pEbGlZV0UyT0dRd1kyVmlORGN3T1RZek15SjlmWDA9XCJ9XX19fSJ9XX0seyJ0eXBlIjoibWluZWNyYWZ0Oml0ZW0iLCJuYW1lIjoibWluZWNyYWZ0OnBsYXllcl9oZWFkIiwiZnVuY3Rpb25zIjpbeyJmdW5jdGlvbiI6Im1pbmVjcmFmdDpzZXRfbmJ0IiwidGFnIjoie2Rpc3BsYXk6e05hbWU6XCJ7XFxcInRleHRcXFwiOlxcXCJHYXJmaWVsZFxcXCJ9XCJ9LFNrdWxsT3duZXI6e0lkOlwiNGYxOTFhNmQtYTJhZS00YzI0LTkwYzYtZTIxMzEwZWY2NTllXCIsUHJvcGVydGllczp7dGV4dHVyZXM6W3tWYWx1ZTpcImV5SjBaWGgwZFhKbGN5STZleUpUUzBsT0lqcDdJblZ5YkNJNkltaDBkSEE2THk5MFpYaDBkWEpsY3k1dGFXNWxZM0poWm5RdWJtVjBMM1JsZUhSMWNtVXZNemhpTkRFNVl6UTROVEV6TkRFMk4yUTFPREJoTXpFMk0yVmxaRE0xTXpRd01qWmhPVFk1TkRFek9UWTJOelZsWkdaak1XWmlOV013Wmpoa04ySTVNQ0o5ZlgwPVwifV19fX0ifV19LHsidHlwZSI6Im1pbmVjcmFmdDppdGVtIiwibmFtZSI6Im1pbmVjcmFmdDpwbGF5ZXJfaGVhZCIsImZ1bmN0aW9ucyI6W3siZnVuY3Rpb24iOiJtaW5lY3JhZnQ6c2V0X25idCIsInRhZyI6IntkaXNwbGF5OntOYW1lOlwie1xcXCJ0ZXh0XFxcIjpcXFwiTWFuXFxcIn1cIn0sU2t1bGxPd25lcjp7SWQ6XCI1ODBkOTJmMy03Y2JmLTRmNmItYmNlZS0zM2VkMmQxYzEyZDFcIixQcm9wZXJ0aWVzOnt0ZXh0dXJlczpbe1ZhbHVlOlwiZXlKMFpYaDBkWEpsY3lJNmV5SlRTMGxPSWpwN0luVnliQ0k2SW1oMGRIQTZMeTkwWlhoMGRYSmxjeTV0YVc1bFkzSmhablF1Ym1WMEwzUmxlSFIxY21Vdk5qaG1NbVpsTlRGbE9EYzFPRGs0WVRGbVpUWmtNekppT1dRek1XVmxNamMzWWpsbE1XWmhPR1pqWVdRNU9EWTJaV05pWldabVkyUXlNRFEwWWpWaE55SjlmWDA9XCJ9XX19fSJ9XX0seyJ0eXBlIjoibWluZWNyYWZ0Oml0ZW0iLCJuYW1lIjoibWluZWNyYWZ0OnBsYXllcl9oZWFkIiwiZnVuY3Rpb25zIjpbeyJmdW5jdGlvbiI6Im1pbmVjcmFmdDpzZXRfbmJ0IiwidGFnIjoie2Rpc3BsYXk6e05hbWU6XCJ7XFxcInRleHRcXFwiOlxcXCJHaXJsXFxcIn1cIn0sU2t1bGxPd25lcjp7SWQ6XCJmMjZhNzcwMC1mZjc4LTRiNjItYWU5NS0zN2JhNTMwZWU5ZTdcIixQcm9wZXJ0aWVzOnt0ZXh0dXJlczpbe1ZhbHVlOlwiZXlKMFpYaDBkWEpsY3lJNmV5SlRTMGxPSWpwN0luVnliQ0k2SW1oMGRIQTZMeTkwWlhoMGRYSmxjeTV0YVc1bFkzSmhablF1Ym1WMEwzUmxlSFIxY21Vdk5qQTVOV1E0WkRneFlUa3hNamN4WkRnMk5tVmxNekpsT1RBd09XUXdaak14TkRSalpXSmpNalV4TlRRNE1ETXhNakZrWkRRM1pETXhOamcwTXpFME55SjlmWDA9XCJ9XX19fSJ9XX0seyJ0eXBlIjoibWluZWNyYWZ0Oml0ZW0iLCJuYW1lIjoibWluZWNyYWZ0OnBsYXllcl9oZWFkIiwiZnVuY3Rpb25zIjpbeyJmdW5jdGlvbiI6Im1pbmVjcmFmdDpzZXRfbmJ0IiwidGFnIjoie2Rpc3BsYXk6e05hbWU6XCJ7XFxcInRleHRcXFwiOlxcXCJFbmQgUG9ydGFsIE9yYlxcXCJ9XCJ9LFNrdWxsT3duZXI6e0lkOlwiMjk5NTE1MDItZGMxNi00ODVkLTkwMmYtMThhNmY4NjBhNDliXCIsUHJvcGVydGllczp7dGV4dHVyZXM6W3tWYWx1ZTpcImV5SjBaWGgwZFhKbGN5STZleUpUUzBsT0lqcDdJblZ5YkNJNkltaDBkSEE2THk5MFpYaDBkWEpsY3k1dGFXNWxZM0poWm5RdWJtVjBMM1JsZUhSMWNtVXZZek5oT0dVME1ESmtZV1F4WWpka1lXUTVZV0ZsTm1ZME1ERTFPVE15TVRnek5ESTVZMlU0TjJKaVltVmpaV1F6TVRFNU1ESTJaamd5T1RZek16WmpNaUo5ZlgwPVwifV19fX0ifV19XX1dfQ==

#head: https://minecraft-heads.com/custom-heads?start=80
