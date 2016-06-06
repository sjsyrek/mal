10 REM /* main program loop */
20 PRINT "user> ";: GOSUB 10000: REM /* call input parser */
30 GOSUB 4000: REM /* call REP */
40 GOTO 10

1000 REM /* READ subroutine */
1100 RETURN

2000 REM /* EVAL subroutine */
2010 GOSUB 1000: REM /* call READ */
2100 RETURN

3000 REM /* PRINT subroutine */
3010 GOSUB 2000: REM /* call EVAL */
3100 RETURN

4000 REM /* REP subroutine */
4010 GOSUB 3000: REM /* call PRINT */
4020 PRINT S$
4100 RETURN

10000 REM /* input parser */
10010 A$="": S$="": CH=0
10020 GET A$: IF A$="" THEN 10020
10030 CH=ASC(A$): IF (CH<32 OR CH>127) AND CH<>13 THEN 10020
10040 IF LEN(S$)<255 AND A$<>CHR$(13) THEN S$=S$+A$: GOTO 10020
10050 IF S$="" THEN END: REM /* check for EOF */
10060 RETURN
