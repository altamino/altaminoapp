package io.ktor.http;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.collections.z0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    @NotNull
    private static final Set<Character> ATTRIBUTE_CHARACTERS;

    @NotNull
    private static final Set<Character> HEX_ALPHABET;

    @NotNull
    private static final List<Byte> SPECIAL_SYMBOLS;

    @NotNull
    private static final Set<Byte> URL_ALPHABET;

    @NotNull
    private static final Set<Character> URL_ALPHABET_CHARS;

    @NotNull
    private static final List<Byte> URL_PROTOCOL_PART;

    @NotNull
    private static final Set<Character> VALID_PATH_PART;

    static final class a extends kotlin.jvm.internal.v implements e8.l<Byte, w7.l0> {
        final /* synthetic */ boolean $spaceToPlus;
        final /* synthetic */ StringBuilder $this_buildString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(StringBuilder sb, boolean z6) {
            super(1);
            this.$this_buildString = sb;
            this.$spaceToPlus = z6;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Byte b7) {
            b(b7.byteValue());
            return w7.l0.INSTANCE;
        }

        public final void b(byte b7) {
            if (!b.URL_ALPHABET.contains(Byte.valueOf(b7)) && !b.SPECIAL_SYMBOLS.contains(Byte.valueOf(b7))) {
                if (this.$spaceToPlus && b7 == 32) {
                    this.$this_buildString.append('+');
                    return;
                } else {
                    this.$this_buildString.append(b.u(b7));
                    return;
                }
            }
            this.$this_buildString.append((char) b7);
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.b$b, reason: collision with other inner class name */
    static final class C0409b extends kotlin.jvm.internal.v implements e8.l<Byte, w7.l0> {
        final /* synthetic */ StringBuilder $this_buildString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0409b(StringBuilder sb) {
            super(1);
            this.$this_buildString = sb;
        }

        public final void b(byte b7) {
            this.$this_buildString.append(b.u(b7));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Byte b7) {
            b(b7.byteValue());
            return w7.l0.INSTANCE;
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.l<Byte, w7.l0> {
        final /* synthetic */ boolean $encodeFull;
        final /* synthetic */ boolean $spaceToPlus;
        final /* synthetic */ StringBuilder $this_buildString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z6, StringBuilder sb, boolean z10) {
            super(1);
            this.$spaceToPlus = z6;
            this.$this_buildString = sb;
            this.$encodeFull = z10;
        }

        public final void b(byte b7) {
            if (b7 == 32) {
                if (this.$spaceToPlus) {
                    this.$this_buildString.append('+');
                    return;
                } else {
                    this.$this_buildString.append("%20");
                    return;
                }
            }
            if (b.URL_ALPHABET.contains(Byte.valueOf(b7)) || (!this.$encodeFull && b.URL_PROTOCOL_PART.contains(Byte.valueOf(b7)))) {
                this.$this_buildString.append((char) b7);
            } else {
                this.$this_buildString.append(b.u(b7));
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Byte b7) {
            b(b7.byteValue());
            return w7.l0.INSTANCE;
        }
    }

    private static final int e(char c7) {
        if ('0' <= c7 && c7 < ':') {
            return c7 - '0';
        }
        if ('A' <= c7 && c7 < 'G') {
            return c7 - '7';
        }
        if ('a' > c7 || c7 >= 'g') {
            return -1;
        }
        return c7 - 'W';
    }

    private static final String g(String str, int i10, int i11, boolean z6, Charset charset) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (z6 && cCharAt == '+')) {
                return f(str, i10, i11, i12, z6, charset);
            }
        }
        if (i10 == 0 && i11 == str.length()) {
            return str;
        }
        String strSubstring = str.substring(i10, i11);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private static final void s(r7.j jVar, e8.l<? super Byte, w7.l0> lVar) throws Throwable {
        boolean z6 = true;
        s7.a aVarB = s7.g.b(jVar, 1);
        if (aVarB == null) {
            return;
        }
        while (true) {
            try {
                if (aVarB.j() > aVarB.h()) {
                    lVar.invoke(Byte.valueOf(aVarB.k()));
                } else {
                    try {
                        aVarB = s7.g.c(jVar, aVarB);
                        if (aVarB == null) {
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z6 = false;
                        if (z6) {
                            s7.g.a(jVar, aVarB);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static final char t(int i10) {
        return (char) ((i10 < 0 || i10 >= 10) ? ((char) (i10 + 65)) - '\n' : i10 + 48);
    }

    static {
        List listD0 = kotlin.collections.d0.D0(kotlin.collections.d0.C0(new j8.c('a', 'z'), new j8.c('A', org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_ZERO)), new j8.c('0', '9'));
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(listD0, 10));
        Iterator it = listD0.iterator();
        while (it.hasNext()) {
            arrayList.add(Byte.valueOf((byte) ((Character) it.next()).charValue()));
        }
        URL_ALPHABET = kotlin.collections.d0.Y0(arrayList);
        URL_ALPHABET_CHARS = kotlin.collections.d0.Y0(kotlin.collections.d0.D0(kotlin.collections.d0.C0(new j8.c('a', 'z'), new j8.c('A', org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_ZERO)), new j8.c('0', '9')));
        HEX_ALPHABET = kotlin.collections.d0.Y0(kotlin.collections.d0.D0(kotlin.collections.d0.C0(new j8.c('a', 'f'), new j8.c('A', 'F')), new j8.c('0', '9')));
        Set setI = y0.i(Character.valueOf(kotlinx.serialization.json.internal.b.COLON), '/', '?', '#', Character.valueOf(kotlinx.serialization.json.internal.b.BEGIN_LIST), Character.valueOf(kotlinx.serialization.json.internal.b.END_LIST), '@', '!', '$', '&', '\'', '(', ')', '*', Character.valueOf(kotlinx.serialization.json.internal.b.COMMA), ';', '=', '-', '.', '_', '~', '+');
        ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(setI, 10));
        Iterator it2 = setI.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Byte.valueOf((byte) ((Character) it2.next()).charValue()));
        }
        URL_PROTOCOL_PART = arrayList2;
        VALID_PATH_PART = y0.i(Character.valueOf(kotlinx.serialization.json.internal.b.COLON), '@', '!', '$', '&', '\'', '(', ')', '*', '+', Character.valueOf(kotlinx.serialization.json.internal.b.COMMA), ';', '=', '-', '.', '_', '~');
        ATTRIBUTE_CHARACTERS = z0.k(URL_ALPHABET_CHARS, y0.i('!', '#', '$', '&', '+', '-', '.', '^', '_', '`', '|', '~'));
        List listP = kotlin.collections.v.p('-', '.', '_', '~');
        ArrayList arrayList3 = new ArrayList(kotlin.collections.w.x(listP, 10));
        Iterator it3 = listP.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Byte.valueOf((byte) ((Character) it3.next()).charValue()));
        }
        SPECIAL_SYMBOLS = arrayList3;
    }

    private static final String f(CharSequence charSequence, int i10, int i11, int i12, boolean z6, Charset charset) throws i0 {
        int i13 = i11 - i10;
        if (i13 > 255) {
            i13 /= 3;
        }
        StringBuilder sb = new StringBuilder(i13);
        if (i12 > i10) {
            sb.append(charSequence, i10, i12);
        }
        byte[] bArr = null;
        while (i12 < i11) {
            char cCharAt = charSequence.charAt(i12);
            if (z6 && cCharAt == '+') {
                sb.append(' ');
            } else if (cCharAt == '%') {
                if (bArr == null) {
                    bArr = new byte[(i11 - i12) / 3];
                }
                int i14 = 0;
                while (i12 < i11 && charSequence.charAt(i12) == '%') {
                    int i15 = i12 + 2;
                    if (i15 >= i11) {
                        throw new i0("Incomplete trailing HEX escape: " + charSequence.subSequence(i12, charSequence.length()).toString() + ", in " + ((Object) charSequence) + " at " + i12);
                    }
                    int i16 = i12 + 1;
                    int iE = e(charSequence.charAt(i16));
                    int iE2 = e(charSequence.charAt(i15));
                    if (iE == -1 || iE2 == -1) {
                        throw new i0("Wrong HEX escape: %" + charSequence.charAt(i16) + charSequence.charAt(i15) + ", in " + ((Object) charSequence) + ", at " + i12);
                    }
                    bArr[i14] = (byte) ((iE * 16) + iE2);
                    i12 += 3;
                    i14++;
                }
                sb.append(new String(bArr, 0, i14, charset));
            } else {
                sb.append(cCharAt);
            }
            i12++;
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "sb.toString()");
        return string;
    }

    @NotNull
    public static final String h(@NotNull String str, int i10, int i11, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(charset, "charset");
        return g(str, i10, i11, false, charset);
    }

    public static /* synthetic */ String i(String str, int i10, int i11, Charset charset, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return h(str, i10, i11, charset);
    }

    @NotNull
    public static final String j(@NotNull String str, int i10, int i11, boolean z6, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(charset, "charset");
        return g(str, i10, i11, z6, charset);
    }

    public static /* synthetic */ String k(String str, int i10, int i11, boolean z6, Charset charset, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            z6 = false;
        }
        if ((i12 & 8) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return j(str, i10, i11, z6, charset);
    }

    @NotNull
    public static final String l(@NotNull String str, boolean z6) throws Throwable {
        kotlin.jvm.internal.t.j(str, "<this>");
        StringBuilder sb = new StringBuilder();
        CharsetEncoder charsetEncoderNewEncoder = kotlin.text.d.UTF_8.newEncoder();
        kotlin.jvm.internal.t.i(charsetEncoderNewEncoder, "UTF_8.newEncoder()");
        s(q7.b.d(charsetEncoderNewEncoder, str, 0, 0, 6, null), new a(sb, z6));
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String m(String str, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return l(str, z6);
    }

    @NotNull
    public static final String n(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return l(str, true);
    }

    @NotNull
    public static final String o(@NotNull String str, boolean z6) throws Throwable {
        int i10;
        kotlin.jvm.internal.t.j(str, "<this>");
        StringBuilder sb = new StringBuilder();
        Charset charset = kotlin.text.d.UTF_8;
        int i11 = 0;
        while (i11 < str.length()) {
            char cCharAt = str.charAt(i11);
            if ((!z6 && cCharAt == '/') || URL_ALPHABET_CHARS.contains(Character.valueOf(cCharAt)) || VALID_PATH_PART.contains(Character.valueOf(cCharAt))) {
                sb.append(cCharAt);
                i11++;
            } else {
                if (cCharAt == '%' && (i10 = i11 + 2) < str.length()) {
                    Set<Character> set = HEX_ALPHABET;
                    int i12 = i11 + 1;
                    if (set.contains(Character.valueOf(str.charAt(i12))) && set.contains(Character.valueOf(str.charAt(i10)))) {
                        sb.append(cCharAt);
                        sb.append(str.charAt(i12));
                        sb.append(str.charAt(i10));
                        i11 += 3;
                    }
                }
                int i13 = kotlin.text.c.i(cCharAt) ? 2 : 1;
                CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
                kotlin.jvm.internal.t.i(charsetEncoderNewEncoder, "charset.newEncoder()");
                int i14 = i13 + i11;
                s(q7.b.c(charsetEncoderNewEncoder, str, i11, i14), new C0409b(sb));
                i11 = i14;
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @NotNull
    public static final String p(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return o(str, true);
    }

    @NotNull
    public static final String q(@NotNull String str, boolean z6, boolean z10, @NotNull Charset charset) throws Throwable {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(charset, "charset");
        StringBuilder sb = new StringBuilder();
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        kotlin.jvm.internal.t.i(charsetEncoderNewEncoder, "charset.newEncoder()");
        s(q7.b.d(charsetEncoderNewEncoder, str, 0, 0, 6, null), new c(z10, sb, z6));
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String r(String str, boolean z6, boolean z10, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return q(str, z6, z10, charset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String u(byte b7) {
        return kotlin.text.t.q(new char[]{'%', t((b7 & 255) >> 4), t(b7 & com.google.common.base.c.SI)});
    }
}
