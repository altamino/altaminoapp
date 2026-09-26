package org.schabi.newpipe.extractor.utils.jsextractor;

import aa.h;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.ScriptRuntime;

/* JADX INFO: loaded from: classes4.dex */
class d {
    private static final char BYTE_ORDER_MARK = 65279;
    private static final int EOF_CHAR = -1;
    private static final boolean IS_RESERVED_KEYWORD_AS_IDENTIFIER = true;
    private static final char NUMERIC_SEPARATOR = '_';
    private static final int REPORT_NUMBER_FORMAT_ERROR = -2;
    private static final boolean STRICT_MODE = false;
    private boolean dirtyLine;
    private final int languageVersion;
    int lineno;
    private final String sourceString;
    private int stringBufferTop;
    int tokenBeg;
    int tokenEnd;
    private int ungetCursor;
    private String string = "";
    private char[] stringBuffer = new char[128];
    private final ObjToIntMap allStrings = new ObjToIntMap(50);
    private final int[] ungetBuffer = new int[3];
    private boolean hitEOF = false;
    private int lineStart = 0;
    private int lineEndChar = -1;
    int sourceCursor = 0;
    int cursor = 0;

    private int c() {
        return e(true, false);
    }

    private int d(boolean z6) {
        return e(z6, false);
    }

    private int f() {
        return e(true, true);
    }

    private int g(boolean z6) {
        return e(z6, true);
    }

    private static boolean j(int i10) {
        if (i10 <= 90) {
            return 65 <= i10;
        }
        return 97 <= i10 && i10 <= 122;
    }

    private static boolean k(int i10) {
        return 48 <= i10 && i10 <= 57;
    }

    private static boolean m(int i10) {
        return 48 == i10 || i10 == 49;
    }

    private static boolean n(int i10) {
        return (48 <= i10 && i10 <= 57) || (97 <= i10 && i10 <= 102) || (65 <= i10 && i10 <= 70);
    }

    private static boolean r(int i10) {
        return 48 <= i10 && i10 <= 55;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static c z(String str, boolean z6) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1335458389:
                if (str.equals("delete")) {
                    b7 = 0;
                }
                break;
            case -1305664359:
                if (str.equals("extends")) {
                    b7 = 1;
                }
                break;
            case -1289153612:
                if (str.equals("export")) {
                    b7 = 2;
                }
                break;
            case -1184795739:
                if (str.equals("import")) {
                    b7 = 3;
                }
                break;
            case -977423767:
                if (str.equals("public")) {
                    b7 = 4;
                }
                break;
            case -934396624:
                if (str.equals("return")) {
                    b7 = 5;
                }
                break;
            case -915384400:
                if (str.equals("implements")) {
                    b7 = 6;
                }
                break;
            case -892481938:
                if (str.equals("static")) {
                    b7 = 7;
                }
                break;
            case -889473228:
                if (str.equals("switch")) {
                    b7 = 8;
                }
                break;
            case -858802543:
                if (str.equals("typeof")) {
                    b7 = 9;
                }
                break;
            case -853259901:
                if (str.equals("finally")) {
                    b7 = 10;
                }
                break;
            case -807062458:
                if (str.equals("package")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case -608539730:
                if (str.equals("protected")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case -567202649:
                if (str.equals("continue")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case -314497661:
                if (str.equals("private")) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 3211:
                if (str.equals("do")) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case 3357:
                if (str.equals("if")) {
                    b7 = com.google.common.base.c.DLE;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    b7 = 17;
                }
                break;
            case 101577:
                if (str.equals("for")) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case 107035:
                if (str.equals("let")) {
                    b7 = 19;
                }
                break;
            case 108960:
                if (str.equals("new")) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 115131:
                if (str.equals("try")) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 116519:
                if (str.equals("var")) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 3046192:
                if (str.equals("case")) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 3116345:
                if (str.equals("else")) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 3118337:
                if (str.equals("enum")) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    b7 = com.google.common.base.c.SUB;
                }
                break;
            case 3559070:
                if (str.equals("this")) {
                    b7 = com.google.common.base.c.ESC;
                }
                break;
            case 3569038:
                if (str.equals("true")) {
                    b7 = com.google.common.base.c.FS;
                }
                break;
            case 3625364:
                if (str.equals("void")) {
                    b7 = com.google.common.base.c.GS;
                }
                break;
            case 3649734:
                if (str.equals("with")) {
                    b7 = com.google.common.base.c.RS;
                }
                break;
            case 93223254:
                if (str.equals("await")) {
                    b7 = com.google.common.base.c.US;
                }
                break;
            case 94001407:
                if (str.equals("break")) {
                    b7 = 32;
                }
                break;
            case 94432955:
                if (str.equals("catch")) {
                    b7 = 33;
                }
                break;
            case 94742904:
                if (str.equals("class")) {
                    b7 = 34;
                }
                break;
            case 94844771:
                if (str.equals("const")) {
                    b7 = 35;
                }
                break;
            case 97196323:
                if (str.equals("false")) {
                    b7 = 36;
                }
                break;
            case 109801339:
                if (str.equals("super")) {
                    b7 = 37;
                }
                break;
            case 110339814:
                if (str.equals("throw")) {
                    b7 = 38;
                }
                break;
            case 113101617:
                if (str.equals("while")) {
                    b7 = 39;
                }
                break;
            case 114974605:
                if (str.equals("yield")) {
                    b7 = 40;
                }
                break;
            case 502623545:
                if (str.equals("interface")) {
                    b7 = 41;
                }
                break;
            case 547812385:
                if (str.equals("debugger")) {
                    b7 = 42;
                }
                break;
            case 902025516:
                if (str.equals("instanceof")) {
                    b7 = 43;
                }
                break;
            case 1380938712:
                if (str.equals("function")) {
                    b7 = 44;
                }
                break;
            case 1544803905:
                if (str.equals("default")) {
                    b7 = 45;
                }
                break;
        }
        switch (b7) {
            case 0:
                return c.DELPROP;
            case 1:
            case 25:
            case 31:
            case 34:
            case 37:
                return c.RESERVED;
            case 2:
                return c.EXPORT;
            case 3:
                return c.IMPORT;
            case 4:
            case 6:
            case 7:
            case 11:
            case 12:
            case 14:
            case 41:
                if (z6) {
                    return c.RESERVED;
                }
                break;
            case 5:
                return c.RETURN;
            case 8:
                return c.SWITCH;
            case 9:
                return c.TYPEOF;
            case 10:
                return c.FINALLY;
            case 13:
                return c.CONTINUE;
            case 15:
                return c.DO;
            case 16:
                return c.IF;
            case 17:
                return c.IN;
            case 18:
                return c.FOR;
            case 19:
                return c.LET;
            case 20:
                return c.NEW;
            case 21:
                return c.TRY;
            case 22:
                return c.VAR;
            case 23:
                return c.CASE;
            case 24:
                return c.ELSE;
            case 26:
                return c.NULL;
            case 27:
                return c.THIS;
            case 28:
                return c.TRUE;
            case 29:
                return c.VOID;
            case 30:
                return c.WITH;
            case 32:
                return c.BREAK;
            case 33:
                return c.CATCH;
            case 35:
                return c.CONST;
            case 36:
                return c.FALSE;
            case 38:
                return c.THROW;
            case 39:
                return c.WHILE;
            case 40:
                return c.YIELD;
            case 42:
                return c.DEBUGGER;
            case 43:
                return c.INSTANCEOF;
            case 44:
                return c.FUNCTION;
            case 45:
                return c.DEFAULT;
        }
        return c.EOF;
    }

    private void B(int i10) {
        int i11 = this.ungetCursor;
        if (i11 != 0 && this.ungetBuffer[i11 - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.ungetBuffer;
        int i12 = this.ungetCursor;
        this.ungetCursor = i12 + 1;
        iArr[i12] = i10;
        this.cursor--;
    }

    private void C(int i10) {
        int[] iArr = this.ungetBuffer;
        int i11 = this.ungetCursor;
        this.ungetCursor = i11 + 1;
        iArr[i11] = i10;
        this.cursor--;
    }

    private void a(int i10) {
        int i11 = this.stringBufferTop;
        char[] cArr = this.stringBuffer;
        if (i11 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i11);
            this.stringBuffer = cArr2;
        }
        this.stringBuffer[i11] = (char) i10;
        this.stringBufferTop = i11 + 1;
    }

    private int e(boolean z6, boolean z10) {
        int i10;
        int i11 = this.ungetCursor;
        if (i11 != 0) {
            this.cursor++;
            int[] iArr = this.ungetBuffer;
            int i12 = i11 - 1;
            this.ungetCursor = i12;
            return iArr[i12];
        }
        while (this.sourceCursor != this.sourceString.length()) {
            this.cursor++;
            String str = this.sourceString;
            int i13 = this.sourceCursor;
            this.sourceCursor = i13 + 1;
            char cCharAt = str.charAt(i13);
            if (!z10 && (i10 = this.lineEndChar) >= 0) {
                if (i10 == 13 && cCharAt == '\n') {
                    this.lineEndChar = 10;
                } else {
                    this.lineEndChar = -1;
                    this.lineStart = this.sourceCursor - 1;
                    this.lineno++;
                }
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.lineEndChar = cCharAt;
            } else {
                if (cCharAt == 65279) {
                    return cCharAt;
                }
                if (!z6 || !o(cCharAt)) {
                    if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
                        return cCharAt;
                    }
                    this.lineEndChar = cCharAt;
                }
            }
            return 10;
        }
        this.hitEOF = true;
        return -1;
    }

    private String h() {
        this.tokenEnd = this.cursor;
        return new String(this.stringBuffer, 0, this.stringBufferTop);
    }

    private static boolean l(int i10, int i11) {
        return (i10 == 10 && k(i11)) || (i10 == 16 && n(i11)) || ((i10 == 8 && r(i11)) || (i10 == 2 && m(i11)));
    }

    private static boolean o(int i10) {
        return i10 > 127 && Character.getType((char) i10) == 16;
    }

    private static boolean p(int i10) {
        if (i10 <= 127) {
            return i10 == 32 || i10 == 9 || i10 == 12 || i10 == 11;
        }
        return i10 == 160 || i10 == 65279 || Character.getType((char) i10) == 12;
    }

    static boolean q(String str, int i10, boolean z6) {
        return c.EOF != y(str, i10, z6);
    }

    private static c y(String str, int i10, boolean z6) {
        return i10 < 200 ? A(str) : z(str, z6);
    }

    /* JADX WARN: Code duplicated, block: B:204:0x0261 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x0264  */
    /* JADX WARN: Code duplicated, block: B:307:0x034e  */
    /* JADX WARN: Code duplicated, block: B:490:0x026a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:491:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:492:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:493:0x0271 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:494:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:497:0x025b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:204:0x0261 -> B:200:0x0258). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    final org.schabi.newpipe.extractor.utils.jsextractor.c i() throws aa.h {
        /*
            Method dump skipped, instruction units count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.utils.jsextractor.d.i():org.schabi.newpipe.extractor.utils.jsextractor.c");
    }

    void w(c cVar) throws h {
        int iF;
        int i10 = this.tokenBeg;
        this.stringBufferTop = 0;
        if (cVar == c.ASSIGN_DIV) {
            a(61);
        } else {
            if (cVar != c.DIV) {
                Kit.codeBug();
            }
            if (u() == 42) {
                this.tokenEnd = this.cursor - 1;
                this.string = new String(this.stringBuffer, 0, this.stringBufferTop);
                throw new h("msg.unterminated.re.lit");
            }
        }
        boolean z6 = false;
        while (true) {
            int iC = c();
            if (iC == 47 && !z6) {
                int i11 = this.stringBufferTop;
                while (true) {
                    iF = f();
                    if ("gimysu".indexOf(iF) == -1) {
                        break;
                    } else {
                        a(iF);
                    }
                }
                if (j(iF)) {
                    throw new h("msg.invalid.re.flag");
                }
                C(iF);
                this.tokenEnd = i10 + this.stringBufferTop + 2;
                this.string = new String(this.stringBuffer, 0, i11);
                return;
            }
            if (iC == 10 || iC == -1) {
                throw new h("msg.unterminated.re.lit");
            }
            if (iC == 92) {
                a(iC);
                iC = c();
                if (iC == 10 || iC == -1) {
                    break;
                }
            } else if (iC == 91) {
                z6 = true;
            } else if (iC == 93) {
                z6 = false;
            }
            a(iC);
        }
        throw new h("msg.unterminated.re.lit");
    }

    d(String str, int i10, int i11) {
        this.sourceString = str;
        this.lineno = i10;
        this.languageVersion = i11;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static c A(String str) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1888027236:
                if (str.equals("volatile")) {
                    b7 = 0;
                }
                break;
            case -1466596076:
                if (str.equals("synchronized")) {
                    b7 = 1;
                }
                break;
            case -1335458389:
                if (str.equals("delete")) {
                    b7 = 2;
                }
                break;
            case -1325958191:
                if (str.equals("double")) {
                    b7 = 3;
                }
                break;
            case -1305664359:
                if (str.equals("extends")) {
                    b7 = 4;
                }
                break;
            case -1289153612:
                if (str.equals("export")) {
                    b7 = 5;
                }
                break;
            case -1184795739:
                if (str.equals("import")) {
                    b7 = 6;
                }
                break;
            case -1052618729:
                if (str.equals("native")) {
                    b7 = 7;
                }
                break;
            case -977423767:
                if (str.equals("public")) {
                    b7 = 8;
                }
                break;
            case -934396624:
                if (str.equals("return")) {
                    b7 = 9;
                }
                break;
            case -915384400:
                if (str.equals("implements")) {
                    b7 = 10;
                }
                break;
            case -892481938:
                if (str.equals("static")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case -889473228:
                if (str.equals("switch")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case -874432947:
                if (str.equals("throws")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case -858802543:
                if (str.equals("typeof")) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case -853259901:
                if (str.equals("finally")) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case -807062458:
                if (str.equals("package")) {
                    b7 = com.google.common.base.c.DLE;
                }
                break;
            case -608539730:
                if (str.equals("protected")) {
                    b7 = 17;
                }
                break;
            case -567202649:
                if (str.equals("continue")) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case -314497661:
                if (str.equals("private")) {
                    b7 = 19;
                }
                break;
            case 3211:
                if (str.equals("do")) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 3357:
                if (str.equals("if")) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 101577:
                if (str.equals("for")) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 107035:
                if (str.equals("let")) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
            case 108960:
                if (str.equals("new")) {
                    b7 = com.google.common.base.c.SUB;
                }
                break;
            case 115131:
                if (str.equals("try")) {
                    b7 = com.google.common.base.c.ESC;
                }
                break;
            case 116519:
                if (str.equals("var")) {
                    b7 = com.google.common.base.c.FS;
                }
                break;
            case 3039496:
                if (str.equals("byte")) {
                    b7 = com.google.common.base.c.GS;
                }
                break;
            case 3046192:
                if (str.equals("case")) {
                    b7 = com.google.common.base.c.RS;
                }
                break;
            case 3052374:
                if (str.equals("char")) {
                    b7 = com.google.common.base.c.US;
                }
                break;
            case 3116345:
                if (str.equals("else")) {
                    b7 = 32;
                }
                break;
            case 3118337:
                if (str.equals("enum")) {
                    b7 = 33;
                }
                break;
            case 3178851:
                if (str.equals("goto")) {
                    b7 = 34;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    b7 = 35;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    b7 = 36;
                }
                break;
            case 3559070:
                if (str.equals("this")) {
                    b7 = 37;
                }
                break;
            case 3569038:
                if (str.equals("true")) {
                    b7 = 38;
                }
                break;
            case 3625364:
                if (str.equals("void")) {
                    b7 = 39;
                }
                break;
            case 3649734:
                if (str.equals("with")) {
                    b7 = 40;
                }
                break;
            case 64711720:
                if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                    b7 = 41;
                }
                break;
            case 94001407:
                if (str.equals("break")) {
                    b7 = 42;
                }
                break;
            case 94432955:
                if (str.equals("catch")) {
                    b7 = 43;
                }
                break;
            case 94742904:
                if (str.equals("class")) {
                    b7 = 44;
                }
                break;
            case 94844771:
                if (str.equals("const")) {
                    b7 = 45;
                }
                break;
            case 97196323:
                if (str.equals("false")) {
                    b7 = 46;
                }
                break;
            case 97436022:
                if (str.equals("final")) {
                    b7 = 47;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    b7 = TarConstants.LF_NORMAL;
                }
                break;
            case 109413500:
                if (str.equals("short")) {
                    b7 = TarConstants.LF_LINK;
                }
                break;
            case 109801339:
                if (str.equals("super")) {
                    b7 = TarConstants.LF_SYMLINK;
                }
                break;
            case 110339814:
                if (str.equals("throw")) {
                    b7 = TarConstants.LF_CHR;
                }
                break;
            case 113101617:
                if (str.equals("while")) {
                    b7 = TarConstants.LF_BLK;
                }
                break;
            case 114974605:
                if (str.equals("yield")) {
                    b7 = TarConstants.LF_DIR;
                }
                break;
            case 502623545:
                if (str.equals("interface")) {
                    b7 = TarConstants.LF_FIFO;
                }
                break;
            case 547812385:
                if (str.equals("debugger")) {
                    b7 = TarConstants.LF_CONTIG;
                }
                break;
            case 902025516:
                if (str.equals("instanceof")) {
                    b7 = 56;
                }
                break;
            case 1052746378:
                if (str.equals("transient")) {
                    b7 = 57;
                }
                break;
            case 1380938712:
                if (str.equals("function")) {
                    b7 = 58;
                }
                break;
            case 1544803905:
                if (str.equals("default")) {
                    b7 = 59;
                }
                break;
            case 1732898850:
                if (str.equals("abstract")) {
                    b7 = 60;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 1:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 16:
            case 17:
            case 19:
            case 24:
            case 29:
            case 31:
            case 33:
            case 34:
            case 35:
            case 41:
            case 44:
            case 47:
            case 48:
            case 49:
            case 50:
            case 54:
            case 57:
            case 60:
                return c.RESERVED;
            case 2:
                return c.DELPROP;
            case 5:
                return c.EXPORT;
            case 9:
                return c.RETURN;
            case 12:
                return c.SWITCH;
            case 14:
                return c.TYPEOF;
            case 15:
                return c.FINALLY;
            case 18:
                return c.CONTINUE;
            case 20:
                return c.DO;
            case 21:
                return c.IF;
            case 22:
                return c.IN;
            case 23:
                return c.FOR;
            case 25:
                return c.LET;
            case 26:
                return c.NEW;
            case 27:
                return c.TRY;
            case 28:
                return c.VAR;
            case 30:
                return c.CASE;
            case 32:
                return c.ELSE;
            case 36:
                return c.NULL;
            case 37:
                return c.THIS;
            case 38:
                return c.TRUE;
            case 39:
                return c.VOID;
            case 40:
                return c.WITH;
            case 42:
                return c.BREAK;
            case 43:
                return c.CATCH;
            case 45:
                return c.CONST;
            case 46:
                return c.FALSE;
            case 51:
                return c.THROW;
            case 52:
                return c.WHILE;
            case 53:
                return c.YIELD;
            case 55:
                return c.DEBUGGER;
            case 56:
                return c.INSTANCEOF;
            case 58:
                return c.FUNCTION;
            case 59:
                return c.DEFAULT;
            default:
                return c.EOF;
        }
    }

    private static String b(String str) {
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(str.substring(0, length));
        sb.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i10 = 0; i10 < 4 - hexString.length(); i10++) {
            sb.append('0');
        }
        sb.append(hexString);
        return sb.toString();
    }

    private boolean s(int i10) {
        int iF = f();
        if (iF == i10) {
            this.tokenEnd = this.cursor;
            return true;
        }
        C(iF);
        return false;
    }

    private int u() {
        int iC = c();
        B(iC);
        return iC;
    }

    private int v(int i10, int i11) {
        if (l(i10, i11)) {
            a(i11);
            i11 = c();
            if (i11 == -1) {
                return -1;
            }
            while (true) {
                if (i11 == 95) {
                    i11 = c();
                    if (i11 != 10 && i11 != -1) {
                        if (!l(i10, i11)) {
                            B(i11);
                            return 95;
                        }
                        a(95);
                    } else {
                        return -2;
                    }
                } else if (l(i10, i11)) {
                    a(i11);
                    i11 = c();
                    if (i11 == -1) {
                        return -1;
                    }
                }
            }
        }
        return i11;
    }

    private void x() {
        int iC;
        do {
            iC = c();
            if (iC == -1) {
                break;
            }
        } while (iC != 10);
        B(iC);
        this.tokenEnd = this.cursor;
    }

    public c t() throws h {
        c cVarI = i();
        while (true) {
            if (cVarI != c.EOL && cVarI != c.COMMENT) {
                return cVarI;
            }
            cVarI = i();
        }
    }
}
