package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class g {
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
    private b textEmphasis;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;
    private int rubyType = -1;
    private int rubyPosition = -1;
    private int textCombine = -1;
    private float shearPercentage = Float.MAX_VALUE;

    public g A(@Nullable String str) {
        this.id = str;
        return this;
    }

    public g B(boolean z6) {
        this.italic = z6 ? 1 : 0;
        return this;
    }

    public g C(boolean z6) {
        this.linethrough = z6 ? 1 : 0;
        return this;
    }

    public g D(@Nullable Layout.Alignment alignment) {
        this.multiRowAlign = alignment;
        return this;
    }

    public g E(int i10) {
        this.rubyPosition = i10;
        return this;
    }

    public g F(int i10) {
        this.rubyType = i10;
        return this;
    }

    public g G(float f) {
        this.shearPercentage = f;
        return this;
    }

    public g H(@Nullable Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public g I(boolean z6) {
        this.textCombine = z6 ? 1 : 0;
        return this;
    }

    public g J(@Nullable b bVar) {
        this.textEmphasis = bVar;
        return this;
    }

    public g K(boolean z6) {
        this.underline = z6 ? 1 : 0;
        return this;
    }

    public g a(@Nullable g gVar) {
        return r(gVar, true);
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
    public b o() {
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

    public g u(int i10) {
        this.backgroundColor = i10;
        this.hasBackgroundColor = true;
        return this;
    }

    public g v(boolean z6) {
        this.bold = z6 ? 1 : 0;
        return this;
    }

    public g w(int i10) {
        this.fontColor = i10;
        this.hasFontColor = true;
        return this;
    }

    public g x(@Nullable String str) {
        this.fontFamily = str;
        return this;
    }

    public g y(float f) {
        this.fontSize = f;
        return this;
    }

    public g z(int i10) {
        this.fontSizeUnit = i10;
        return this;
    }

    private g r(@Nullable g gVar, boolean z6) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.hasFontColor && gVar.hasFontColor) {
                w(gVar.fontColor);
            }
            if (this.bold == -1) {
                this.bold = gVar.bold;
            }
            if (this.italic == -1) {
                this.italic = gVar.italic;
            }
            if (this.fontFamily == null && (str = gVar.fontFamily) != null) {
                this.fontFamily = str;
            }
            if (this.linethrough == -1) {
                this.linethrough = gVar.linethrough;
            }
            if (this.underline == -1) {
                this.underline = gVar.underline;
            }
            if (this.rubyPosition == -1) {
                this.rubyPosition = gVar.rubyPosition;
            }
            if (this.textAlign == null && (alignment2 = gVar.textAlign) != null) {
                this.textAlign = alignment2;
            }
            if (this.multiRowAlign == null && (alignment = gVar.multiRowAlign) != null) {
                this.multiRowAlign = alignment;
            }
            if (this.textCombine == -1) {
                this.textCombine = gVar.textCombine;
            }
            if (this.fontSizeUnit == -1) {
                this.fontSizeUnit = gVar.fontSizeUnit;
                this.fontSize = gVar.fontSize;
            }
            if (this.textEmphasis == null) {
                this.textEmphasis = gVar.textEmphasis;
            }
            if (this.shearPercentage == Float.MAX_VALUE) {
                this.shearPercentage = gVar.shearPercentage;
            }
            if (z6 && !this.hasBackgroundColor && gVar.hasBackgroundColor) {
                u(gVar.backgroundColor);
            }
            if (z6 && this.rubyType == -1 && (i10 = gVar.rubyType) != -1) {
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
