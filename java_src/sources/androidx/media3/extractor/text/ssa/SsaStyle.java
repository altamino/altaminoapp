package androidx.media3.extractor.text.ssa;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.c;
import com.google.common.primitives.e;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
final class SsaStyle {
    public static final int SSA_ALIGNMENT_BOTTOM_CENTER = 2;
    public static final int SSA_ALIGNMENT_BOTTOM_LEFT = 1;
    public static final int SSA_ALIGNMENT_BOTTOM_RIGHT = 3;
    public static final int SSA_ALIGNMENT_MIDDLE_CENTER = 5;
    public static final int SSA_ALIGNMENT_MIDDLE_LEFT = 4;
    public static final int SSA_ALIGNMENT_MIDDLE_RIGHT = 6;
    public static final int SSA_ALIGNMENT_TOP_CENTER = 8;
    public static final int SSA_ALIGNMENT_TOP_LEFT = 7;
    public static final int SSA_ALIGNMENT_TOP_RIGHT = 9;
    public static final int SSA_ALIGNMENT_UNKNOWN = -1;
    public static final int SSA_BORDER_STYLE_BOX = 3;
    public static final int SSA_BORDER_STYLE_OUTLINE = 1;
    public static final int SSA_BORDER_STYLE_UNKNOWN = -1;
    private static final String TAG = "SsaStyle";
    public final int alignment;
    public final boolean bold;
    public final int borderStyle;
    public final float fontSize;
    public final boolean italic;
    public final String name;

    @Nullable
    @ColorInt
    public final Integer outlineColor;

    @Nullable
    @ColorInt
    public final Integer primaryColor;
    public final boolean strikeout;
    public final boolean underline;

    static final class Overrides {
        private static final String TAG = "SsaStyle.Overrides";
        public final int alignment;

        @Nullable
        public final PointF position;
        private static final Pattern BRACES_PATTERN = Pattern.compile("\\{([^}]*)\\}");
        private static final String PADDED_DECIMAL_PATTERN = "\\s*\\d+(?:\\.\\d+)?\\s*";
        private static final Pattern POSITION_PATTERN = Pattern.compile(Util.D("\\\\pos\\((%1$s),(%1$s)\\)", PADDED_DECIMAL_PATTERN));
        private static final Pattern MOVE_PATTERN = Pattern.compile(Util.D("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", PADDED_DECIMAL_PATTERN));
        private static final Pattern ALIGNMENT_OVERRIDE_PATTERN = Pattern.compile("\\\\an(\\d+)");

        private static int a(String str) {
            Matcher matcher = ALIGNMENT_OVERRIDE_PATTERN.matcher(str);
            if (matcher.find()) {
                return SsaStyle.e((String) Assertions.e(matcher.group(1)));
            }
            return -1;
        }

        public static Overrides b(String str) {
            Matcher matcher = BRACES_PATTERN.matcher(str);
            PointF pointF = null;
            int i10 = -1;
            while (matcher.find()) {
                String str2 = (String) Assertions.e(matcher.group(1));
                try {
                    PointF pointFC = c(str2);
                    if (pointFC != null) {
                        pointF = pointFC;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int iA = a(str2);
                    if (iA != -1) {
                        i10 = iA;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new Overrides(i10, pointF);
        }

        @Nullable
        private static PointF c(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = POSITION_PATTERN.matcher(str);
            Matcher matcher2 = MOVE_PATTERN.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    Log.f(TAG, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) Assertions.e(strGroup)).trim()), Float.parseFloat(((String) Assertions.e(strGroup2)).trim()));
        }

        public static String d(String str) {
            return BRACES_PATTERN.matcher(str).replaceAll("");
        }

        private Overrides(int i10, @Nullable PointF pointF) {
            this.alignment = i10;
            this.position = pointF;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SsaAlignment {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SsaBorderStyle {
    }

    private static boolean c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i10) {
        return i10 == 1 || i10 == 3;
    }

    private static boolean f(String str) {
        try {
            int i10 = Integer.parseInt(str);
            return i10 == 1 || i10 == -1;
        } catch (NumberFormatException e) {
            Log.j(TAG, "Failed to parse boolean value: '" + str + "'", e);
            return false;
        }
    }

    static final class Format {
        public final int alignmentIndex;
        public final int boldIndex;
        public final int borderStyleIndex;
        public final int fontSizeIndex;
        public final int italicIndex;
        public final int length;
        public final int nameIndex;
        public final int outlineColorIndex;
        public final int primaryColorIndex;
        public final int strikeoutIndex;
        public final int underlineIndex;

        @Nullable
        public static Format a(String str) {
            String[] strArrSplit = TextUtils.split(str.substring(7), ",");
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            for (int i20 = 0; i20 < strArrSplit.length; i20++) {
                String strE = c.e(strArrSplit[i20].trim());
                strE.hashCode();
                switch (strE) {
                    case "italic":
                        i16 = i20;
                        break;
                    case "underline":
                        i17 = i20;
                        break;
                    case "strikeout":
                        i18 = i20;
                        break;
                    case "primarycolour":
                        i12 = i20;
                        break;
                    case "bold":
                        i15 = i20;
                        break;
                    case "name":
                        i10 = i20;
                        break;
                    case "fontsize":
                        i14 = i20;
                        break;
                    case "borderstyle":
                        i19 = i20;
                        break;
                    case "alignment":
                        i11 = i20;
                        break;
                    case "outlinecolour":
                        i13 = i20;
                        break;
                }
            }
            if (i10 != -1) {
                return new Format(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, strArrSplit.length);
            }
            return null;
        }

        private Format(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.nameIndex = i10;
            this.alignmentIndex = i11;
            this.primaryColorIndex = i12;
            this.outlineColorIndex = i13;
            this.fontSizeIndex = i14;
            this.boldIndex = i15;
            this.italicIndex = i16;
            this.underlineIndex = i17;
            this.strikeoutIndex = i18;
            this.borderStyleIndex = i19;
            this.length = i20;
        }
    }

    @Nullable
    public static SsaStyle b(String str, Format format) {
        Assertions.a(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i10 = format.length;
        if (length != i10) {
            Log.i(TAG, Util.D("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i10), Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            String strTrim = strArrSplit[format.nameIndex].trim();
            int i11 = format.alignmentIndex;
            int iE = i11 != -1 ? e(strArrSplit[i11].trim()) : -1;
            int i12 = format.primaryColorIndex;
            Integer numH = i12 != -1 ? h(strArrSplit[i12].trim()) : null;
            int i13 = format.outlineColorIndex;
            Integer numH2 = i13 != -1 ? h(strArrSplit[i13].trim()) : null;
            int i14 = format.fontSizeIndex;
            float fI = i14 != -1 ? i(strArrSplit[i14].trim()) : -3.4028235E38f;
            int i15 = format.boldIndex;
            boolean z6 = i15 != -1 && f(strArrSplit[i15].trim());
            int i16 = format.italicIndex;
            boolean z10 = i16 != -1 && f(strArrSplit[i16].trim());
            int i17 = format.underlineIndex;
            boolean z11 = i17 != -1 && f(strArrSplit[i17].trim());
            int i18 = format.strikeoutIndex;
            boolean z12 = i18 != -1 && f(strArrSplit[i18].trim());
            int i19 = format.borderStyleIndex;
            return new SsaStyle(strTrim, iE, numH, numH2, fI, z6, z10, z11, z12, i19 != -1 ? g(strArrSplit[i19].trim()) : -1);
        } catch (RuntimeException e) {
            Log.j(TAG, "Skipping malformed 'Style:' line: '" + str + "'", e);
            return null;
        }
    }

    @Nullable
    @ColorInt
    public static Integer h(String str) {
        try {
            long j6 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            Assertions.a(j6 <= 4294967295L);
            return Integer.valueOf(Color.argb(e.d(((j6 >> 24) & 255) ^ 255), e.d(j6 & 255), e.d((j6 >> 8) & 255), e.d((j6 >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            Log.j(TAG, "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    private SsaStyle(String str, int i10, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f, boolean z6, boolean z10, boolean z11, boolean z12, int i11) {
        this.name = str;
        this.alignment = i10;
        this.primaryColor = num;
        this.outlineColor = num2;
        this.fontSize = f;
        this.bold = z6;
        this.italic = z10;
        this.underline = z11;
        this.strikeout = z12;
        this.borderStyle = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(String str) {
        try {
            int i10 = Integer.parseInt(str.trim());
            if (c(i10)) {
                return i10;
            }
        } catch (NumberFormatException unused) {
        }
        Log.i(TAG, "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static int g(String str) {
        try {
            int i10 = Integer.parseInt(str.trim());
            if (d(i10)) {
                return i10;
            }
        } catch (NumberFormatException unused) {
        }
        Log.i(TAG, "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            Log.j(TAG, "Failed to parse font size: '" + str + "'", e);
            return -3.4028235E38f;
        }
    }
}
