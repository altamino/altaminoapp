package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import com.google.common.base.c;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class WebvttCssStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    private static final int OFF = 0;
    private static final int ON = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    private int backgroundColor;

    @ColorInt
    private int fontColor;
    private float fontSize;
    private String targetId = "";
    private String targetTag = "";
    private Set<String> targetClasses = Collections.emptySet();
    private String targetVoice = "";

    @Nullable
    private String fontFamily = null;
    private boolean hasFontColor = false;
    private boolean hasBackgroundColor = false;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;
    private int rubyPosition = -1;
    private boolean combineUpright = false;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleFlags {
    }

    public WebvttCssStyle A(boolean z6) {
        this.underline = z6 ? 1 : 0;
        return this;
    }

    public boolean b() {
        return this.combineUpright;
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

    public int g() {
        return this.rubyPosition;
    }

    public int i() {
        int i10 = this.bold;
        if (i10 == -1 && this.italic == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.italic == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.hasBackgroundColor;
    }

    public boolean k() {
        return this.hasFontColor;
    }

    public boolean l() {
        return this.linethrough == 1;
    }

    public boolean m() {
        return this.underline == 1;
    }

    public WebvttCssStyle n(int i10) {
        this.backgroundColor = i10;
        this.hasBackgroundColor = true;
        return this;
    }

    public WebvttCssStyle o(boolean z6) {
        this.bold = z6 ? 1 : 0;
        return this;
    }

    public WebvttCssStyle p(boolean z6) {
        this.combineUpright = z6;
        return this;
    }

    public WebvttCssStyle q(int i10) {
        this.fontColor = i10;
        this.hasFontColor = true;
        return this;
    }

    public WebvttCssStyle s(float f) {
        this.fontSize = f;
        return this;
    }

    public WebvttCssStyle t(int i10) {
        this.fontSizeUnit = i10;
        return this;
    }

    public WebvttCssStyle u(boolean z6) {
        this.italic = z6 ? 1 : 0;
        return this;
    }

    public WebvttCssStyle v(int i10) {
        this.rubyPosition = i10;
        return this;
    }

    public void x(String str) {
        this.targetId = str;
    }

    public void y(String str) {
        this.targetTag = str;
    }

    public void z(String str) {
        this.targetVoice = str;
    }

    public int a() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public int c() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public int h(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.targetId.isEmpty() && this.targetTag.isEmpty() && this.targetClasses.isEmpty() && this.targetVoice.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iB = B(B(B(0, this.targetId, str, 1073741824), this.targetTag, str2, 2), this.targetVoice, str3, 4);
        if (iB == -1 || !set.containsAll(this.targetClasses)) {
            return 0;
        }
        return iB + (this.targetClasses.size() * 4);
    }

    public WebvttCssStyle r(@Nullable String str) {
        this.fontFamily = str == null ? null : c.e(str);
        return this;
    }

    public void w(String[] strArr) {
        this.targetClasses = new HashSet(Arrays.asList(strArr));
    }

    private static int B(int i10, String str, @Nullable String str2, int i11) {
        if (!str.isEmpty() && i10 != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i10 + i11;
        }
        return i10;
    }
}
