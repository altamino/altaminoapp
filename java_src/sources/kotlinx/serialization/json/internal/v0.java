package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class v0 extends a {

    @NotNull
    private final String source;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.a
    @NotNull
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public String C() {
        return this.source;
    }

    public v0(@NotNull String source) {
        kotlin.jvm.internal.t.j(source, "source");
        this.source = source;
    }

    @Override // kotlinx.serialization.json.internal.a
    public int I() {
        char cCharAt;
        int i10 = this.currentPosition;
        if (i10 == -1) {
            return i10;
        }
        while (i10 < C().length() && ((cCharAt = C().charAt(i10)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i10++;
        }
        this.currentPosition = i10;
        return i10;
    }

    @Override // kotlinx.serialization.json.internal.a
    public boolean f() {
        int i10 = this.currentPosition;
        if (i10 == -1) {
            return false;
        }
        while (i10 < C().length()) {
            char cCharAt = C().charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i10;
                return D(cCharAt);
            }
            i10++;
        }
        this.currentPosition = i10;
        return false;
    }

    @Override // kotlinx.serialization.json.internal.a
    @NotNull
    public String k() {
        o(b.STRING);
        int i10 = this.currentPosition;
        int iB0 = kotlin.text.u.b0(C(), b.STRING, i10, false, 4, null);
        if (iB0 == -1) {
            z((byte) 1);
            throw new w7.i();
        }
        for (int i11 = i10; i11 < iB0; i11++) {
            if (C().charAt(i11) == '\\') {
                return r(C(), this.currentPosition, i11);
            }
        }
        this.currentPosition = iB0 + 1;
        String strSubstring = C().substring(i10, iB0);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @Override // kotlinx.serialization.json.internal.a
    @Nullable
    public String l(@NotNull String keyToMatch, boolean z6) {
        kotlin.jvm.internal.t.j(keyToMatch, "keyToMatch");
        int i10 = this.currentPosition;
        try {
            if (m() != 6) {
                return null;
            }
            if (!kotlin.jvm.internal.t.e(z6 ? k() : t(), keyToMatch)) {
                return null;
            }
            if (m() != 5) {
                return null;
            }
            return z6 ? q() : t();
        } finally {
            this.currentPosition = i10;
        }
    }

    @Override // kotlinx.serialization.json.internal.a
    public void o(char c7) {
        if (this.currentPosition == -1) {
            N(c7);
        }
        String strC = C();
        while (this.currentPosition < strC.length()) {
            int i10 = this.currentPosition;
            this.currentPosition = i10 + 1;
            char cCharAt = strC.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c7) {
                    return;
                } else {
                    N(c7);
                }
            }
        }
        N(c7);
    }

    @Override // kotlinx.serialization.json.internal.a
    public int G(int i10) {
        if (i10 >= C().length()) {
            return -1;
        }
        return i10;
    }

    @Override // kotlinx.serialization.json.internal.a
    public boolean L() {
        int I = I();
        if (I == C().length() || I == -1 || C().charAt(I) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    @Override // kotlinx.serialization.json.internal.a
    public byte m() {
        byte bA;
        String strC = C();
        do {
            int i10 = this.currentPosition;
            if (i10 != -1 && i10 < strC.length()) {
                int i11 = this.currentPosition;
                this.currentPosition = i11 + 1;
                bA = b.a(strC.charAt(i11));
            } else {
                return (byte) 10;
            }
        } while (bA == 3);
        return bA;
    }
}
