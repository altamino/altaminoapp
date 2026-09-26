package com.google.common.base;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d implements p<Character> {
    private static final int DISTINCT_CHARS = 65536;

    static abstract class a extends d {
        @Override // com.google.common.base.p
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.b(ch);
        }

        a() {
        }
    }

    private static final class b extends a {
        private final char match;

        @Override // com.google.common.base.d
        public boolean e(char c7) {
            return c7 == this.match;
        }

        public String toString() {
            String strG = d.g(this.match);
            StringBuilder sb = new StringBuilder(String.valueOf(strG).length() + 18);
            sb.append("CharMatcher.is('");
            sb.append(strG);
            sb.append("')");
            return sb.toString();
        }

        b(char c7) {
            this.match = c7;
        }
    }

    /* JADX INFO: renamed from: com.google.common.base.d$d, reason: collision with other inner class name */
    private static final class C0215d extends c {
        static final C0215d INSTANCE = new C0215d();

        @Override // com.google.common.base.d
        public boolean e(char c7) {
            return false;
        }

        private C0215d() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.d
        public int c(CharSequence charSequence, int i10) {
            o.m(i10, charSequence.length());
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(char c7) {
        char[] cArr = {kotlinx.serialization.json.internal.b.STRING_ESC, kotlinx.serialization.json.internal.b.UNICODE_ESC, 0, 0, 0, 0};
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c7 & 15);
            c7 = (char) (c7 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public abstract boolean e(char c7);

    static abstract class c extends a {
        private final String description;

        public final String toString() {
            return this.description;
        }

        c(String str) {
            this.description = (String) o.k(str);
        }
    }

    public static d d(char c7) {
        return new b(c7);
    }

    public static d f() {
        return C0215d.INSTANCE;
    }

    protected d() {
    }

    @Deprecated
    public boolean b(Character ch) {
        return e(ch.charValue());
    }

    public int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        o.m(i10, length);
        while (i10 < length) {
            if (e(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
