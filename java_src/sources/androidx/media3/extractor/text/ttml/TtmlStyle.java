package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes4.dex */
final class TtmlStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    private static final int OFF = 0;
    private static final int ON = 1;
    public static final int RUBY_TYPE_BASE = 2;
    public static final int RUBY_TYPE_CONTAINER = 1;
    public static final int RUBY_TYPE_DELIMITER = 4;
    public static final int RUBY_TYPE_TEXT = 3;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    public static final float UNSPECIFIED_SHEAR = Float.MAX_VALUE;
    private int backgroundColor;
    private int fontColor;

    @Nullable
    private String fontFamily;
    private float fontSize;
    private boolean hasBackgroundColor;
    private boolean hasFontColor;

    @Nullable
    private String id;

    @Nullable
    private Layout.Alignment multiRowAlign;

    @Nullable
    private Layout.Alignment textAlign;

    @Nullable
    private TextEmphasis textEmphasis;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;
    private int rubyType = -1;
    private int rubyPosition = -1;
    private int textCombine = -1;
    private float shearPercentage = Float.MAX_VALUE;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RubyType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleFlags {
    }

    public TtmlStyle A(@Nullable String str) {
        this.id = str;
        return this;
    }

    public TtmlStyle B(boolean z6) {
        this.italic = z6 ? 1 : 0;
        return this;
    }

    public TtmlStyle C(boolean z6) {
        this.linethrough = z6 ? 1 : 0;
        return this;
    }

    public TtmlStyle D(@Nullable Layout.Alignment alignment) {
        this.multiRowAlign = alignment;
        return this;
    }

    public TtmlStyle E(int i10) {
        this.rubyPosition = i10;
        return this;
    }

    public TtmlStyle F(int i10) {
        this.rubyType = i10;
        return this;
    }

    public TtmlStyle G(float f) {
        this.shearPercentage = f;
        return this;
    }

    public TtmlStyle H(@Nullable Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public TtmlStyle I(boolean z6) {
        this.textCombine = z6 ? 1 : 0;
        return this;
    }

    public TtmlStyle J(@Nullable TextEmphasis textEmphasis) {
        this.textEmphasis = textEmphasis;
        return this;
    }

    public TtmlStyle K(boolean z6) {
        this.underline = z6 ? 1 : 0;
        return this;
    }

    public TtmlStyle a(@Nullable TtmlStyle ttmlStyle) {
        return r(ttmlStyle, true);
    }

    @Nullable
    public String d() {
        return this.fontFamily;
    }

    public float e() {
        return this.fontSize;
    }

    public int f() {
        return this.fontSizeUnit;
    }

    @Nullable
    public String g() {
        return this.id;
    }

    @Nullable
    public Layout.Alignment h() {
        return this.multiRowAlign;
    }

    public int i() {
        return this.rubyPosition;
    }

    public int j() {
        return this.rubyType;
    }

    public float k() {
        return this.shearPercentage;
    }

    public int l() {
        int i10 = this.bold;
        if (i10 == -1 && this.italic == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.italic == 1 ? 2 : 0);
    }

    @Nullable
    public Layout.Alignment m() {
        return this.textAlign;
    }

    public boolean n() {
        return this.textCombine == 1;
    }

    @Nullable
    public TextEmphasis o() {
        return this.textEmphasis;
    }

    public boolean p() {
        return this.hasBackgroundColor;
    }

    public boolean q() {
        return this.hasFontColor;
    }

    public boolean s() {
        return this.linethrough == 1;
    }

    public boolean t() {
        return this.underline == 1;
    }

    public TtmlStyle u(int i10) {
        this.backgroundColor = i10;
        this.hasBackgroundColor = true;
        return this;
    }

    public TtmlStyle v(boolean z6) {
        this.bold = z6 ? 1 : 0;
        return this;
    }

    public TtmlStyle w(int i10) {
        this.fontColor = i10;
        this.hasFontColor = true;
        return this;
    }

    public TtmlStyle x(@Nullable String str) {
        this.fontFamily = str;
        return this;
    }

    public TtmlStyle y(float f) {
        this.fontSize = f;
        return this;
    }

    public TtmlStyle z(int i10) {
        this.fontSizeUnit = i10;
        return this;
    }

    private TtmlStyle r(@Nullable TtmlStyle ttmlStyle, boolean z6) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (ttmlStyle != null) {
            if (!this.hasFontColor && ttmlStyle.hasFontColor) {
                w(ttmlStyle.fontColor);
            }
            if (this.bold == -1) {
                this.bold = ttmlStyle.bold;
            }
            if (this.italic == -1) {
                this.italic = ttmlStyle.italic;
            }
            if (this.fontFamily == null && (str = ttmlStyle.fontFamily) != null) {
                this.fontFamily = str;
            }
            if (this.linethrough == -1) {
                this.linethrough = ttmlStyle.linethrough;
            }
            if (this.underline == -1) {
                this.underline = ttmlStyle.underline;
            }
            if (this.rubyPosition == -1) {
                this.rubyPosition = ttmlStyle.rubyPosition;
            }
            if (this.textAlign == null && (alignment2 = ttmlStyle.textAlign) != null) {
                this.textAlign = alignment2;
            }
            if (this.multiRowAlign == null && (alignment = ttmlStyle.multiRowAlign) != null) {
                this.multiRowAlign = alignment;
            }
            if (this.textCombine == -1) {
                this.textCombine = ttmlStyle.textCombine;
            }
            if (this.fontSizeUnit == -1) {
                this.fontSizeUnit = ttmlStyle.fontSizeUnit;
                this.fontSize = ttmlStyle.fontSize;
            }
            if (this.textEmphasis == null) {
                this.textEmphasis = ttmlStyle.textEmphasis;
            }
            if (this.shearPercentage == Float.MAX_VALUE) {
                this.shearPercentage = ttmlStyle.shearPercentage;
            }
            if (z6 && !this.hasBackgroundColor && ttmlStyle.hasBackgroundColor) {
                u(ttmlStyle.backgroundColor);
            }
            if (z6 && this.rubyType == -1 && (i10 = ttmlStyle.rubyType) != -1) {
                this.rubyType = i10;
            }
        }
        return this;
    }

    public int b() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }
}
