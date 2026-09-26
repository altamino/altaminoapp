package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    static final BidiFormatter DEFAULT_LTR_INSTANCE;
    static final BidiFormatter DEFAULT_RTL_INSTANCE;
    static final TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = 8234;
    private static final char LRM = 8206;
    private static final String LRM_STRING;
    private static final char PDF = 8236;
    private static final char RLE = 8235;
    private static final char RLM = 8207;
    private static final String RLM_STRING;
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        public Builder() {
            c(BidiFormatter.e(Locale.getDefault()));
        }

        private static BidiFormatter b(boolean z6) {
            return z6 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
        }

        private void c(boolean z6) {
            this.mIsRtlContext = z6;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public BidiFormatter a() {
            return (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) ? b(this.mIsRtlContext) : new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat);
        }

        public Builder(boolean z6) {
            c(z6);
        }

        public Builder(Locale locale) {
            c(BidiFormatter.e(locale));
        }
    }

    private static class DirectionalityEstimator {
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final CharSequence text;
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private static final byte[] DIR_TYPE_CACHE = new byte[DIR_TYPE_CACHE_SIZE];

        int d() {
            this.charIndex = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (this.charIndex < this.length && i10 == 0) {
                byte b7 = b();
                if (b7 != 0) {
                    if (b7 == 1 || b7 == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (b7 != 9) {
                        switch (b7) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i11 != 0) {
                return i11;
            }
            while (this.charIndex > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i10 == i12) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i10 == i12) {
                            return 1;
                        }
                        break;
                    case 18:
                        i12++;
                        continue;
                    default:
                        continue;
                }
                i12--;
            }
            return 0;
        }

        static {
            for (int i10 = 0; i10 < DIR_TYPE_CACHE_SIZE; i10++) {
                DIR_TYPE_CACHE[i10] = Character.getDirectionality(i10);
            }
        }

        private static byte c(char c7) {
            return c7 < DIR_TYPE_CACHE_SIZE ? DIR_TYPE_CACHE[c7] : Character.getDirectionality(c7);
        }

        private byte f() {
            char cCharAt;
            int i10 = this.charIndex;
            do {
                int i11 = this.charIndex;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i12 = i11 - 1;
                this.charIndex = i12;
                cCharAt = charSequence.charAt(i12);
                this.lastChar = cCharAt;
                if (cCharAt == '&') {
                    return com.google.common.base.c.FF;
                }
            } while (cCharAt != ';');
            this.charIndex = i10;
            this.lastChar = ';';
            return com.google.common.base.c.CR;
        }

        private byte g() {
            char cCharAt;
            do {
                int i10 = this.charIndex;
                if (i10 >= this.length) {
                    return com.google.common.base.c.FF;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i10 + 1;
                cCharAt = charSequence.charAt(i10);
                this.lastChar = cCharAt;
            } while (cCharAt != ';');
            return com.google.common.base.c.FF;
        }

        private byte h() {
            char cCharAt;
            int i10 = this.charIndex;
            while (true) {
                int i11 = this.charIndex;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i12 = i11 - 1;
                this.charIndex = i12;
                char cCharAt2 = charSequence.charAt(i12);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '<') {
                    return com.google.common.base.c.FF;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i13 = this.charIndex;
                        if (i13 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.text;
                        int i14 = i13 - 1;
                        this.charIndex = i14;
                        cCharAt = charSequence2.charAt(i14);
                        this.lastChar = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.charIndex = i10;
            this.lastChar = '>';
            return com.google.common.base.c.CR;
        }

        private byte i() {
            char cCharAt;
            int i10 = this.charIndex;
            while (true) {
                int i11 = this.charIndex;
                if (i11 >= this.length) {
                    this.charIndex = i10;
                    this.lastChar = '<';
                    return com.google.common.base.c.CR;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i11 + 1;
                char cCharAt2 = charSequence.charAt(i11);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '>') {
                    return com.google.common.base.c.FF;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i12 = this.charIndex;
                        if (i12 >= this.length) {
                            break;
                        }
                        CharSequence charSequence2 = this.text;
                        this.charIndex = i12 + 1;
                        cCharAt = charSequence2.charAt(i12);
                        this.lastChar = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.text.charAt(this.charIndex - 1);
            this.lastChar = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.charIndex--;
            byte bC = c(this.lastChar);
            if (!this.isHtml) {
                return bC;
            }
            char c7 = this.lastChar;
            if (c7 == '>') {
                return h();
            }
            return c7 == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.text.charAt(this.charIndex);
            this.lastChar = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.charIndex++;
            byte bC = c(this.lastChar);
            if (!this.isHtml) {
                return bC;
            }
            char c7 = this.lastChar;
            if (c7 == '<') {
                return i();
            }
            return c7 == '&' ? g() : bC;
        }

        int e() {
            this.charIndex = this.length;
            int i10 = 0;
            while (true) {
                int i11 = i10;
                while (this.charIndex > 0) {
                    byte bA = a();
                    if (bA == 0) {
                        if (i10 == 0) {
                            return -1;
                        }
                        if (i11 == 0) {
                        }
                    } else if (bA == 1 || bA == 2) {
                        if (i10 == 0) {
                            return 1;
                        }
                        if (i11 == 0) {
                        }
                    } else if (bA != 9) {
                        switch (bA) {
                            case 14:
                            case 15:
                                if (i11 == i10) {
                                    return -1;
                                }
                                i10--;
                                break;
                            case 16:
                            case 17:
                                if (i11 == i10) {
                                    return 1;
                                }
                                i10--;
                                break;
                            case 18:
                                i10++;
                                break;
                            default:
                                if (i11 != 0) {
                                }
                                break;
                        }
                    } else {
                        continue;
                    }
                }
                return 0;
            }
        }

        DirectionalityEstimator(CharSequence charSequence, boolean z6) {
            this.text = charSequence;
            this.isHtml = z6;
            this.length = charSequence.length();
        }
    }

    public boolean d() {
        return (this.mFlags & 2) != 0;
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        DEFAULT_TEXT_DIRECTION_HEURISTIC = textDirectionHeuristicCompat;
        LRM_STRING = Character.toString(LRM);
        RLM_STRING = Character.toString(RLM);
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    private static int a(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).e();
    }

    public static BidiFormatter c() {
        return new Builder().a();
    }

    public CharSequence h(CharSequence charSequence) {
        return i(charSequence, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    public CharSequence i(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z6) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = textDirectionHeuristicCompat.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z6) {
            spannableStringBuilder.append((CharSequence) g(charSequence, zA ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (zA != this.mIsRtlContext) {
            spannableStringBuilder.append(zA ? RLE : LRE);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(PDF);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z6) {
            spannableStringBuilder.append((CharSequence) f(charSequence, zA ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return spannableStringBuilder;
    }

    public String j(String str) {
        return k(str, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    public String k(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z6) {
        if (str == null) {
            return null;
        }
        return i(str, textDirectionHeuristicCompat, z6).toString();
    }

    BidiFormatter(boolean z6, int i10, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mIsRtlContext = z6;
        this.mFlags = i10;
        this.mDefaultTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
    }

    static boolean e(Locale locale) {
        if (TextUtilsCompat.a(locale) == 1) {
            return true;
        }
        return false;
    }

    private String f(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean zA = textDirectionHeuristicCompat.a(charSequence, 0, charSequence.length());
        if (!this.mIsRtlContext && (zA || b(charSequence) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            if (!zA || b(charSequence) == -1) {
                return RLM_STRING;
            }
            return "";
        }
        return "";
    }

    private String g(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean zA = textDirectionHeuristicCompat.a(charSequence, 0, charSequence.length());
        if (!this.mIsRtlContext && (zA || a(charSequence) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            if (!zA || a(charSequence) == -1) {
                return RLM_STRING;
            }
            return "";
        }
        return "";
    }
}
