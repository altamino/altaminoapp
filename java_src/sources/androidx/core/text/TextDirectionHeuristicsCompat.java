package androidx.core.text;

import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public final class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicInternal(null, true);
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;

    private interface TextDirectionAlgorithm {
        int a(CharSequence charSequence, int i10, int i11);
    }

    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        protected abstract boolean b();

        private boolean c(CharSequence charSequence, int i10, int i11) {
            int iA = this.mAlgorithm.a(charSequence, i10, i11);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean a(CharSequence charSequence, int i10, int i11) {
            if (charSequence == null || i10 < 0 || i11 < 0 || charSequence.length() - i11 < i10) {
                throw new IllegalArgumentException();
            }
            return this.mAlgorithm == null ? b() : c(charSequence, i10, i11);
        }

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }
    }

    static int a(int i10) {
        if (i10 != 0) {
            return (i10 == 1 || i10 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }

    private static class AnyStrong implements TextDirectionAlgorithm {
        static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
        private final boolean mLookForRtl;

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z6 = false;
            while (i10 < i12) {
                int iA = TextDirectionHeuristicsCompat.a(Character.getDirectionality(charSequence.charAt(i10)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                    } else if (!this.mLookForRtl) {
                        return 1;
                    }
                    i10++;
                    z6 = z6;
                } else if (this.mLookForRtl) {
                    return 0;
                }
                z6 = true;
                i10++;
                z6 = z6;
            }
            if (z6) {
                return this.mLookForRtl ? 1 : 0;
            }
            return 2;
        }

        private AnyStrong(boolean z6) {
            this.mLookForRtl = z6;
        }
    }

    private static class FirstStrong implements TextDirectionAlgorithm {
        static final FirstStrong INSTANCE = new FirstStrong();

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int iB = 2;
            while (i10 < i12 && iB == 2) {
                iB = TextDirectionHeuristicsCompat.b(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return iB;
        }

        private FirstStrong() {
        }
    }

    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean b() {
            return this.mDefaultIsRtl;
        }

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z6) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z6;
        }
    }

    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean b() {
            if (TextUtilsCompat.a(Locale.getDefault()) == 1) {
                return true;
            }
            return false;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(firstStrong, false);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(firstStrong, true);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false);
        LOCALE = TextDirectionHeuristicLocale.INSTANCE;
    }

    private TextDirectionHeuristicsCompat() {
    }
}
