package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class a {
    protected int currentPosition;

    @Nullable
    private String peekedString;

    @NotNull
    public final d0 path = new d0();

    @NotNull
    private StringBuilder escapedString = new StringBuilder();

    @NotNull
    protected abstract CharSequence C();

    protected final boolean D(char c7) {
        return !(c7 == '}' || c7 == ']' || c7 == ':' || c7 == ',');
    }

    public abstract int G(int i10);

    public abstract boolean L();

    public abstract boolean f();

    @NotNull
    public abstract String k();

    @Nullable
    public abstract String l(@NotNull String str, boolean z6);

    public abstract byte m();

    public void v() {
    }

    @NotNull
    public final Void z(byte b7) {
        String str;
        if (b7 == 1) {
            str = "quotation mark '\"'";
        } else if (b7 == 4) {
            str = "comma ','";
        } else if (b7 == 5) {
            str = "colon ':'";
        } else if (b7 == 6) {
            str = "start of the object '{'";
        } else if (b7 == 7) {
            str = "end of the object '}'";
        } else if (b7 == 8) {
            str = "start of the array '['";
        } else {
            str = b7 == 9 ? "end of the array ']'" : "valid token";
        }
        y(this, "Expected " + str + ", but had '" + ((this.currentPosition == C().length() || this.currentPosition <= 0) ? "EOF" : String.valueOf(C().charAt(this.currentPosition - 1))) + "' instead", this.currentPosition - 1, null, 4, null);
        throw new w7.i();
    }

    private final String K() {
        String str = this.peekedString;
        kotlin.jvm.internal.t.g(str);
        this.peekedString = null;
        return str;
    }

    private final int d(CharSequence charSequence, int i10) {
        int i11 = i10 + 4;
        if (i11 < charSequence.length()) {
            this.escapedString.append((char) ((B(charSequence, i10) << 12) + (B(charSequence, i10 + 1) << 8) + (B(charSequence, i10 + 2) << 4) + B(charSequence, i10 + 3)));
            return i11;
        }
        this.currentPosition = i10;
        v();
        if (this.currentPosition + 4 < charSequence.length()) {
            return d(charSequence, this.currentPosition);
        }
        y(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new w7.i();
    }

    public static /* synthetic */ Void y(a aVar, String str, int i10, String str2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i11 & 2) != 0) {
            i10 = aVar.currentPosition;
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return aVar.x(str, i10, str2);
    }

    public final void A(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        x("Encountered an unknown key '" + key + '\'', kotlin.text.u.i0(J(0, this.currentPosition), key, 0, false, 6, null), b.ignoreUnknownKeysHint);
        throw new w7.i();
    }

    public final void H(boolean z6) {
        ArrayList arrayList = new ArrayList();
        byte bE = E();
        if (bE != 8 && bE != 6) {
            s();
            return;
        }
        while (true) {
            byte bE2 = E();
            if (bE2 != 1) {
                if (bE2 == 8 || bE2 == 6) {
                    arrayList.add(Byte.valueOf(bE2));
                } else if (bE2 == 9) {
                    if (((Number) kotlin.collections.d0.v0(arrayList)).byteValue() != 8) {
                        throw b0.f(this.currentPosition, "found ] instead of } at path: " + this.path, C());
                    }
                    kotlin.collections.a0.M(arrayList);
                } else if (bE2 == 7) {
                    if (((Number) kotlin.collections.d0.v0(arrayList)).byteValue() != 6) {
                        throw b0.f(this.currentPosition, "found } instead of ] at path: " + this.path, C());
                    }
                    kotlin.collections.a0.M(arrayList);
                } else if (bE2 == 10) {
                    y(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new w7.i();
                }
                m();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z6) {
                s();
            } else {
                k();
            }
        }
    }

    public int I() {
        int iG;
        char cCharAt;
        int i10 = this.currentPosition;
        while (true) {
            iG = G(i10);
            if (iG == -1 || !((cCharAt = C().charAt(iG)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i10 = iG + 1;
        }
        this.currentPosition = iG;
        return iG;
    }

    protected final void N(char c7) {
        int i10 = this.currentPosition - 1;
        this.currentPosition = i10;
        if (i10 >= 0 && c7 == '\"' && kotlin.jvm.internal.t.e(s(), "null")) {
            x("Expected string literal but 'null' literal was found", this.currentPosition - 4, b.coerceInputValuesHint);
            throw new w7.i();
        }
        z(b.a(c7));
        throw new w7.i();
    }

    protected void e(int i10, int i11) {
        this.escapedString.append(C(), i10, i11);
    }

    public final long p() {
        boolean z6;
        int iG = G(I());
        if (iG >= C().length() || iG == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new w7.i();
        }
        if (C().charAt(iG) == '\"') {
            iG++;
            if (iG == C().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new w7.i();
            }
            z6 = true;
        } else {
            z6 = false;
        }
        int i10 = iG;
        long j6 = 0;
        boolean z10 = true;
        boolean z11 = false;
        while (z10) {
            char cCharAt = C().charAt(i10);
            if (cCharAt != '-') {
                if (b.a(cCharAt) != 0) {
                    break;
                }
                i10++;
                z10 = i10 != C().length();
                int i11 = cCharAt - '0';
                if (i11 < 0 || i11 >= 10) {
                    y(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, null, 6, null);
                    throw new w7.i();
                }
                j6 = (j6 * ((long) 10)) - ((long) i11);
                if (j6 > 0) {
                    y(this, "Numeric value overflow", 0, null, 6, null);
                    throw new w7.i();
                }
            } else {
                if (i10 != iG) {
                    y(this, "Unexpected symbol '-' in numeric literal", 0, null, 6, null);
                    throw new w7.i();
                }
                i10++;
                z11 = true;
            }
        }
        if (iG == i10 || (z11 && iG == i10 - 1)) {
            y(this, "Expected numeric literal", 0, null, 6, null);
            throw new w7.i();
        }
        if (z6) {
            if (!z10) {
                y(this, "EOF", 0, null, 6, null);
                throw new w7.i();
            }
            if (C().charAt(i10) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new w7.i();
            }
            i10++;
        }
        this.currentPosition = i10;
        if (z11) {
            return j6;
        }
        if (j6 != Long.MIN_VALUE) {
            return -j6;
        }
        y(this, "Numeric value overflow", 0, null, 6, null);
        throw new w7.i();
    }

    @NotNull
    public final String q() {
        return this.peekedString != null ? K() : k();
    }

    @NotNull
    protected final String r(@NotNull CharSequence source, int i10, int i11) {
        int iG;
        kotlin.jvm.internal.t.j(source, "source");
        char cCharAt = source.charAt(i11);
        boolean z6 = false;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iG = G(c(i10, i11));
                if (iG == -1) {
                    y(this, "EOF", iG, null, 4, null);
                    throw new w7.i();
                }
            } else {
                i11++;
                if (i11 >= source.length()) {
                    e(i10, i11);
                    iG = G(i11);
                    if (iG == -1) {
                        y(this, "EOF", iG, null, 4, null);
                        throw new w7.i();
                    }
                } else {
                    continue;
                }
                cCharAt = source.charAt(i11);
            }
            z6 = true;
            i10 = iG;
            i11 = i10;
            cCharAt = source.charAt(i11);
        }
        String strJ = !z6 ? J(i10, i11) : u(i10, i11);
        this.currentPosition = i11 + 1;
        return strJ;
    }

    @NotNull
    public final String s() {
        if (this.peekedString != null) {
            return K();
        }
        int I = I();
        if (I >= C().length() || I == -1) {
            y(this, "EOF", I, null, 4, null);
            throw new w7.i();
        }
        byte bA = b.a(C().charAt(I));
        if (bA == 1) {
            return q();
        }
        if (bA != 0) {
            y(this, "Expected beginning of the string, but got " + C().charAt(I), 0, null, 6, null);
            throw new w7.i();
        }
        boolean z6 = false;
        while (b.a(C().charAt(I)) == 0) {
            I++;
            if (I >= C().length()) {
                e(this.currentPosition, I);
                int iG = G(I);
                if (iG == -1) {
                    this.currentPosition = I;
                    return u(0, 0);
                }
                I = iG;
                z6 = true;
            }
        }
        String strJ = !z6 ? J(this.currentPosition, I) : u(this.currentPosition, I);
        this.currentPosition = I;
        return strJ;
    }

    @NotNull
    public String toString() {
        return "JsonReader(source='" + ((Object) C()) + "', currentPosition=" + this.currentPosition + ')';
    }

    @NotNull
    public final Void x(@NotNull String message, int i10, @NotNull String hint) {
        String str;
        kotlin.jvm.internal.t.j(message, "message");
        kotlin.jvm.internal.t.j(hint, "hint");
        if (hint.length() == 0) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw b0.f(i10, message + " at path: " + this.path.a() + str, C());
    }

    private final int B(CharSequence charSequence, int i10) {
        char cCharAt = charSequence.charAt(i10);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        y(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6, null);
        throw new w7.i();
    }

    private final boolean O() {
        if (C().charAt(this.currentPosition - 1) != '\"') {
            return true;
        }
        return false;
    }

    private final int b(int i10) {
        int iG = G(i10);
        if (iG != -1) {
            int i11 = iG + 1;
            char cCharAt = C().charAt(iG);
            if (cCharAt == 'u') {
                return d(C(), i11);
            }
            char cB = b.b(cCharAt);
            if (cB != 0) {
                this.escapedString.append(cB);
                return i11;
            }
            y(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
            throw new w7.i();
        }
        y(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
        throw new w7.i();
    }

    private final int c(int i10, int i11) {
        e(i10, i11);
        return b(i11 + 1);
    }

    private final boolean h(int i10) {
        int iG = G(i10);
        if (iG < C().length() && iG != -1) {
            int i11 = iG + 1;
            int iCharAt = C().charAt(iG) | ' ';
            if (iCharAt != 102) {
                if (iCharAt == 116) {
                    j("rue", i11);
                    return true;
                }
                y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
                throw new w7.i();
            }
            j("alse", i11);
            return false;
        }
        y(this, "EOF", 0, null, 6, null);
        throw new w7.i();
    }

    private final void j(String str, int i10) {
        if (C().length() - i10 >= str.length()) {
            int length = str.length();
            for (int i11 = 0; i11 < length; i11++) {
                if (str.charAt(i11) != (C().charAt(i10 + i11) | ' ')) {
                    y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
                    throw new w7.i();
                }
            }
            this.currentPosition = i10 + str.length();
            return;
        }
        y(this, "Unexpected end of boolean literal", 0, null, 6, null);
        throw new w7.i();
    }

    private final String u(int i10, int i11) {
        e(i10, i11);
        String string = this.escapedString.toString();
        kotlin.jvm.internal.t.i(string, "escapedString.toString()");
        this.escapedString.setLength(0);
        return string;
    }

    public final byte E() {
        CharSequence charSequenceC = C();
        int i10 = this.currentPosition;
        while (true) {
            int iG = G(i10);
            if (iG != -1) {
                char cCharAt = charSequenceC.charAt(iG);
                if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                    this.currentPosition = iG;
                    return b.a(cCharAt);
                }
                i10 = iG + 1;
            } else {
                this.currentPosition = iG;
                return (byte) 10;
            }
        }
    }

    @Nullable
    public final String F(boolean z6) {
        String strQ;
        byte bE = E();
        if (z6) {
            if (bE != 1 && bE != 0) {
                return null;
            }
            strQ = s();
        } else {
            if (bE != 1) {
                return null;
            }
            strQ = q();
        }
        this.peekedString = strQ;
        return strQ;
    }

    @NotNull
    public String J(int i10, int i11) {
        return C().subSequence(i10, i11).toString();
    }

    public final boolean M() {
        int iG = G(I());
        int length = C().length() - iG;
        if (length < 4 || iG == -1) {
            return true;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if ("null".charAt(i10) != C().charAt(iG + i10)) {
                return true;
            }
        }
        if (length > 4 && b.a(C().charAt(iG + 4)) == 0) {
            return true;
        }
        this.currentPosition = iG + 4;
        return false;
    }

    public final boolean g() {
        return h(I());
    }

    public final boolean i() {
        boolean z6;
        int I = I();
        if (I != C().length()) {
            if (C().charAt(I) == '\"') {
                I++;
                z6 = true;
            } else {
                z6 = false;
            }
            boolean zH = h(I);
            if (z6) {
                if (this.currentPosition != C().length()) {
                    if (C().charAt(this.currentPosition) == '\"') {
                        this.currentPosition++;
                    } else {
                        y(this, "Expected closing quotation mark", 0, null, 6, null);
                        throw new w7.i();
                    }
                } else {
                    y(this, "EOF", 0, null, 6, null);
                    throw new w7.i();
                }
            }
            return zH;
        }
        y(this, "EOF", 0, null, 6, null);
        throw new w7.i();
    }

    public final byte n(byte b7) {
        byte bM = m();
        if (bM == b7) {
            return bM;
        }
        z(b7);
        throw new w7.i();
    }

    public void o(char c7) {
        v();
        CharSequence charSequenceC = C();
        int i10 = this.currentPosition;
        while (true) {
            int iG = G(i10);
            if (iG != -1) {
                int i11 = iG + 1;
                char cCharAt = charSequenceC.charAt(iG);
                if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                    this.currentPosition = i11;
                    if (cCharAt == c7) {
                        return;
                    } else {
                        N(c7);
                    }
                }
                i10 = i11;
            } else {
                this.currentPosition = iG;
                N(c7);
                return;
            }
        }
    }

    @NotNull
    public final String t() {
        String strS = s();
        if (kotlin.jvm.internal.t.e(strS, "null") && O()) {
            y(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
            throw new w7.i();
        }
        return strS;
    }

    public final void w() {
        if (m() == 10) {
            return;
        }
        y(this, "Expected EOF after parsing, but had " + C().charAt(this.currentPosition - 1) + " instead", 0, null, 6, null);
        throw new w7.i();
    }
}
