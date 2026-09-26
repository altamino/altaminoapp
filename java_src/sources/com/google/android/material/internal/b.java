package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class b {
    private static final boolean DEBUG_DRAW = false;
    private static final String ELLIPSIS_NORMAL = "…";
    private static final float FADE_MODE_THRESHOLD_FRACTION_RELATIVE = 0.5f;
    private static final String TAG = "CollapsingTextHelper";
    private boolean boundsChanged;

    @NonNull
    private final Rect collapsedBounds;
    private float collapsedDrawX;
    private float collapsedDrawY;
    private com.google.android.material.resources.a collapsedFontCallback;
    private float collapsedLetterSpacing;
    private ColorStateList collapsedShadowColor;
    private float collapsedShadowDx;
    private float collapsedShadowDy;
    private float collapsedShadowRadius;
    private float collapsedTextBlend;
    private ColorStateList collapsedTextColor;
    private float collapsedTextWidth;
    private Typeface collapsedTypeface;
    private Typeface collapsedTypefaceBold;
    private Typeface collapsedTypefaceDefault;

    @NonNull
    private final RectF currentBounds;
    private float currentDrawX;
    private float currentDrawY;
    private float currentLetterSpacing;
    private int currentOffsetY;
    private int currentShadowColor;
    private float currentShadowDx;
    private float currentShadowDy;
    private float currentShadowRadius;
    private float currentTextSize;
    private Typeface currentTypeface;
    private boolean drawTitle;

    @NonNull
    private final Rect expandedBounds;
    private float expandedDrawX;
    private float expandedDrawY;
    private com.google.android.material.resources.a expandedFontCallback;
    private float expandedFraction;
    private float expandedLetterSpacing;
    private int expandedLineCount;
    private ColorStateList expandedShadowColor;
    private float expandedShadowDx;
    private float expandedShadowDy;
    private float expandedShadowRadius;
    private float expandedTextBlend;
    private ColorStateList expandedTextColor;

    @Nullable
    private Bitmap expandedTitleTexture;
    private Typeface expandedTypeface;
    private Typeface expandedTypefaceBold;
    private Typeface expandedTypefaceDefault;
    private boolean fadeModeEnabled;
    private float fadeModeStartFraction;
    private float fadeModeThresholdFraction;
    private boolean isRtl;
    private TimeInterpolator positionInterpolator;
    private float scale;
    private int[] state;

    @Nullable
    private CharSequence text;
    private StaticLayout textLayout;

    @NonNull
    private final TextPaint textPaint;
    private TimeInterpolator textSizeInterpolator;

    @Nullable
    private CharSequence textToDraw;
    private CharSequence textToDrawCollapsed;
    private Paint texturePaint;

    @NonNull
    private final TextPaint tmpPaint;
    private boolean useTexture;
    private final View view;
    private static final boolean USE_SCALING_TEXTURE = false;

    @NonNull
    private static final Paint DEBUG_DRAW_PAINT = null;
    private int expandedTextGravity = 16;
    private int collapsedTextGravity = 16;
    private float expandedTextSize = 15.0f;
    private float collapsedTextSize = 15.0f;
    private boolean isRtlTextDirectionHeuristicsEnabled = true;
    private int maxLines = 1;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = o.DEFAULT_HYPHENATION_FREQUENCY;

    class a implements com.google.android.material.resources.a.InterfaceC0207a {
        a() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0207a
        public void a(Typeface typeface) {
            b.this.h0(typeface);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.b$b, reason: collision with other inner class name */
    class C0204b implements com.google.android.material.resources.a.InterfaceC0207a {
        C0204b() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0207a
        public void a(Typeface typeface) {
            b.this.s0(typeface);
        }
    }

    private boolean I0() {
        return this.maxLines > 1 && (!this.isRtl || this.fadeModeEnabled) && !this.useTexture;
    }

    private static boolean Q(float f, float f6) {
        return Math.abs(f - f6) < 1.0E-5f;
    }

    private float e() {
        float f = this.fadeModeStartFraction;
        return f + ((1.0f - f) * 0.5f);
    }

    private void h(float f) {
        i(f, false);
    }

    private StaticLayout k(int i10, float f, boolean z6) {
        return (StaticLayout) Preconditions.i(o.b(this.text, this.textPaint, (int) f).d(TextUtils.TruncateAt.END).g(z6).c(i10 == 1 ? Layout.Alignment.ALIGN_NORMAL : K()).f(false).i(i10).h(this.lineSpacingAdd, this.lineSpacingMultiplier).e(this.hyphenationFrequency).a());
    }

    private void m(@NonNull Canvas canvas, float f, float f6) {
        int alpha = this.textPaint.getAlpha();
        canvas.translate(f, f6);
        float f7 = alpha;
        this.textPaint.setAlpha((int) (this.expandedTextBlend * f7));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            TextPaint textPaint = this.textPaint;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, i3.a.a(this.currentShadowColor, textPaint.getAlpha()));
        }
        this.textLayout.draw(canvas);
        this.textPaint.setAlpha((int) (this.collapsedTextBlend * f7));
        if (i10 >= 31) {
            TextPaint textPaint2 = this.textPaint;
            textPaint2.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, i3.a.a(this.currentShadowColor, textPaint2.getAlpha()));
        }
        int lineBaseline = this.textLayout.getLineBaseline(0);
        CharSequence charSequence = this.textToDrawCollapsed;
        float f10 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f10, this.textPaint);
        if (i10 >= 31) {
            this.textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, this.currentShadowColor);
        }
        if (this.fadeModeEnabled) {
            return;
        }
        String strTrim = this.textToDrawCollapsed.toString().trim();
        if (strTrim.endsWith(ELLIPSIS_NORMAL)) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.textPaint.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.textLayout.getLineEnd(0), str.length()), 0.0f, f10, (Paint) this.textPaint);
    }

    @ColorInt
    private int w(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.state;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public int A() {
        return this.expandedTextGravity;
    }

    @RequiresApi
    public void A0(@FloatRange float f) {
        this.lineSpacingMultiplier = f;
    }

    public float D() {
        return this.expandedFraction;
    }

    public void D0(boolean z6) {
        this.isRtlTextDirectionHeuristicsEnabled = z6;
    }

    public float E() {
        return this.fadeModeThresholdFraction;
    }

    @RequiresApi
    public int F() {
        return this.hyphenationFrequency;
    }

    public int J() {
        return this.maxLines;
    }

    @Nullable
    public TimeInterpolator L() {
        return this.positionInterpolator;
    }

    @Nullable
    public CharSequence M() {
        return this.text;
    }

    public void Y() {
        Z(false);
    }

    public void j0(int i10) {
        this.currentOffsetY = i10;
    }

    public ColorStateList p() {
        return this.collapsedTextColor;
    }

    public int q() {
        return this.collapsedTextGravity;
    }

    public void u0(float f) {
        float fA = MathUtils.a(f, 0.0f, 1.0f);
        if (fA != this.expandedFraction) {
            this.expandedFraction = fA;
            c();
        }
    }

    public void v0(boolean z6) {
        this.fadeModeEnabled = z6;
    }

    @RequiresApi
    public void x0(int i10) {
        this.hyphenationFrequency = i10;
    }

    public int y() {
        return this.expandedLineCount;
    }

    @RequiresApi
    public void z0(float f) {
        this.lineSpacingAdd = f;
    }

    private Layout.Alignment K() {
        int iB = GravityCompat.b(this.expandedTextGravity, this.isRtl ? 1 : 0) & 7;
        if (iB == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (iB != 5) {
            return this.isRtl ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return this.isRtl ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
    }

    private void N(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.collapsedTextSize);
        textPaint.setTypeface(this.collapsedTypeface);
        textPaint.setLetterSpacing(this.collapsedLetterSpacing);
    }

    private void O(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.expandedTextSize);
        textPaint.setTypeface(this.expandedTypeface);
        textPaint.setLetterSpacing(this.expandedLetterSpacing);
    }

    private void P(float f) {
        if (this.fadeModeEnabled) {
            this.currentBounds.set(f < this.fadeModeThresholdFraction ? this.expandedBounds : this.collapsedBounds);
            return;
        }
        this.currentBounds.left = U(this.expandedBounds.left, this.collapsedBounds.left, f, this.positionInterpolator);
        this.currentBounds.top = U(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
        this.currentBounds.right = U(this.expandedBounds.right, this.collapsedBounds.right, f, this.positionInterpolator);
        this.currentBounds.bottom = U(this.expandedBounds.bottom, this.collapsedBounds.bottom, f, this.positionInterpolator);
    }

    private boolean R() {
        return ViewCompat.D(this.view) == 1;
    }

    private boolean T(@NonNull CharSequence charSequence, boolean z6) {
        return (z6 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).a(charSequence, 0, charSequence.length());
    }

    private static float U(float f, float f6, float f7, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f7 = timeInterpolator.getInterpolation(f7);
        }
        return e3.a.a(f, f6, f7);
    }

    @ColorInt
    private static int a(@ColorInt int i10, @ColorInt int i11, @FloatRange float f) {
        float f6 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i10) * f6) + (Color.alpha(i11) * f)), Math.round((Color.red(i10) * f6) + (Color.red(i11) * f)), Math.round((Color.green(i10) * f6) + (Color.green(i11) * f)), Math.round((Color.blue(i10) * f6) + (Color.blue(i11) * f)));
    }

    private static boolean a0(@NonNull Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    private void b(boolean z6) {
        StaticLayout staticLayout;
        i(1.0f, z6);
        CharSequence charSequence = this.textToDraw;
        if (charSequence != null && (staticLayout = this.textLayout) != null) {
            this.textToDrawCollapsed = TextUtils.ellipsize(charSequence, this.textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.textToDrawCollapsed;
        float fW = 0.0f;
        if (charSequence2 != null) {
            this.collapsedTextWidth = W(this.textPaint, charSequence2);
        } else {
            this.collapsedTextWidth = 0.0f;
        }
        int iB = GravityCompat.b(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i10 = iB & 112;
        if (i10 == 48) {
            this.collapsedDrawY = this.collapsedBounds.top;
        } else if (i10 != 80) {
            this.collapsedDrawY = this.collapsedBounds.centerY() - ((this.textPaint.descent() - this.textPaint.ascent()) / 2.0f);
        } else {
            this.collapsedDrawY = this.collapsedBounds.bottom + this.textPaint.ascent();
        }
        int i11 = iB & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i11 == 1) {
            this.collapsedDrawX = this.collapsedBounds.centerX() - (this.collapsedTextWidth / 2.0f);
        } else if (i11 != 5) {
            this.collapsedDrawX = this.collapsedBounds.left;
        } else {
            this.collapsedDrawX = this.collapsedBounds.right - this.collapsedTextWidth;
        }
        i(0.0f, z6);
        StaticLayout staticLayout2 = this.textLayout;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.textLayout;
        if (staticLayout3 == null || this.maxLines <= 1) {
            CharSequence charSequence3 = this.textToDraw;
            if (charSequence3 != null) {
                fW = W(this.textPaint, charSequence3);
            }
        } else {
            fW = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.textLayout;
        this.expandedLineCount = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int iB2 = GravityCompat.b(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i12 = iB2 & 112;
        if (i12 == 48) {
            this.expandedDrawY = this.expandedBounds.top;
        } else if (i12 != 80) {
            this.expandedDrawY = this.expandedBounds.centerY() - (height / 2.0f);
        } else {
            this.expandedDrawY = (this.expandedBounds.bottom - height) + this.textPaint.descent();
        }
        int i13 = iB2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i13 == 1) {
            this.expandedDrawX = this.expandedBounds.centerX() - (fW / 2.0f);
        } else if (i13 != 5) {
            this.expandedDrawX = this.expandedBounds.left;
        } else {
            this.expandedDrawX = this.expandedBounds.right - fW;
        }
        j();
        y0(this.expandedFraction);
    }

    private void c() {
        g(this.expandedFraction);
    }

    private float d(@FloatRange float f) {
        float f6 = this.fadeModeThresholdFraction;
        return f <= f6 ? e3.a.b(1.0f, 0.0f, this.fadeModeStartFraction, f6, f) : e3.a.b(0.0f, 1.0f, f6, 1.0f, f);
    }

    private void e0(float f) {
        this.collapsedTextBlend = f;
        ViewCompat.k0(this.view);
    }

    private void i(float f, boolean z6) {
        boolean z10;
        float f6;
        float f7;
        boolean z11;
        if (this.text == null) {
            return;
        }
        float fWidth = this.collapsedBounds.width();
        float fWidth2 = this.expandedBounds.width();
        if (Q(f, 1.0f)) {
            f6 = this.collapsedTextSize;
            f7 = this.collapsedLetterSpacing;
            this.scale = 1.0f;
            Typeface typeface = this.currentTypeface;
            Typeface typeface2 = this.collapsedTypeface;
            if (typeface != typeface2) {
                this.currentTypeface = typeface2;
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            float f10 = this.expandedTextSize;
            float f11 = this.expandedLetterSpacing;
            Typeface typeface3 = this.currentTypeface;
            Typeface typeface4 = this.expandedTypeface;
            if (typeface3 != typeface4) {
                this.currentTypeface = typeface4;
                z10 = true;
            } else {
                z10 = false;
            }
            if (Q(f, 0.0f)) {
                this.scale = 1.0f;
            } else {
                this.scale = U(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator) / this.expandedTextSize;
            }
            float f12 = this.collapsedTextSize / this.expandedTextSize;
            fWidth = (!z6 && fWidth2 * f12 > fWidth) ? Math.min(fWidth / f12, fWidth2) : fWidth2;
            f6 = f10;
            f7 = f11;
            z11 = z10;
        }
        if (fWidth > 0.0f) {
            z11 = ((this.currentTextSize > f6 ? 1 : (this.currentTextSize == f6 ? 0 : -1)) != 0) || ((this.currentLetterSpacing > f7 ? 1 : (this.currentLetterSpacing == f7 ? 0 : -1)) != 0) || this.boundsChanged || z11;
            this.currentTextSize = f6;
            this.currentLetterSpacing = f7;
            this.boundsChanged = false;
        }
        if (this.textToDraw == null || z11) {
            this.textPaint.setTextSize(this.currentTextSize);
            this.textPaint.setTypeface(this.currentTypeface);
            this.textPaint.setLetterSpacing(this.currentLetterSpacing);
            this.textPaint.setLinearText(this.scale != 1.0f);
            this.isRtl = f(this.text);
            StaticLayout staticLayoutK = k(I0() ? this.maxLines : 1, fWidth, this.isRtl);
            this.textLayout = staticLayoutK;
            this.textToDraw = staticLayoutK.getText();
        }
    }

    private boolean i0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.collapsedFontCallback;
        if (aVar != null) {
            aVar.c();
        }
        if (this.collapsedTypefaceDefault == typeface) {
            return false;
        }
        this.collapsedTypefaceDefault = typeface;
        Typeface typefaceB = com.google.android.material.resources.h.b(this.view.getContext().getResources().getConfiguration(), typeface);
        this.collapsedTypefaceBold = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.collapsedTypefaceDefault;
        }
        this.collapsedTypeface = typefaceB;
        return true;
    }

    private void j() {
        Bitmap bitmap = this.expandedTitleTexture;
        if (bitmap != null) {
            bitmap.recycle();
            this.expandedTitleTexture = null;
        }
    }

    private void n() {
        if (this.expandedTitleTexture != null || this.expandedBounds.isEmpty() || TextUtils.isEmpty(this.textToDraw)) {
            return;
        }
        g(0.0f);
        int width = this.textLayout.getWidth();
        int height = this.textLayout.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.expandedTitleTexture = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.textLayout.draw(new Canvas(this.expandedTitleTexture));
        if (this.texturePaint == null) {
            this.texturePaint = new Paint(3);
        }
    }

    private void o0(float f) {
        this.expandedTextBlend = f;
        ViewCompat.k0(this.view);
    }

    private float s(int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) - (this.collapsedTextWidth / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.isRtl ? this.collapsedBounds.left : this.collapsedBounds.right - this.collapsedTextWidth;
        }
        return this.isRtl ? this.collapsedBounds.right - this.collapsedTextWidth : this.collapsedBounds.left;
    }

    private float t(@NonNull RectF rectF, int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) + (this.collapsedTextWidth / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.isRtl ? rectF.left + this.collapsedTextWidth : this.collapsedBounds.right;
        }
        return this.isRtl ? this.collapsedBounds.right : rectF.left + this.collapsedTextWidth;
    }

    private boolean t0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.expandedFontCallback;
        if (aVar != null) {
            aVar.c();
        }
        if (this.expandedTypefaceDefault == typeface) {
            return false;
        }
        this.expandedTypefaceDefault = typeface;
        Typeface typefaceB = com.google.android.material.resources.h.b(this.view.getContext().getResources().getConfiguration(), typeface);
        this.expandedTypefaceBold = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.expandedTypefaceDefault;
        }
        this.expandedTypeface = typefaceB;
        return true;
    }

    @ColorInt
    private int x() {
        return w(this.expandedTextColor);
    }

    public float B() {
        O(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public void B0(int i10) {
        if (i10 != this.maxLines) {
            this.maxLines = i10;
            j();
            Y();
        }
    }

    public Typeface C() {
        Typeface typeface = this.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void C0(TimeInterpolator timeInterpolator) {
        this.positionInterpolator = timeInterpolator;
        Y();
    }

    public final boolean E0(int[] iArr) {
        this.state = iArr;
        if (!S()) {
            return false;
        }
        Y();
        return true;
    }

    public void F0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.text, charSequence)) {
            this.text = charSequence;
            this.textToDraw = null;
            j();
            Y();
        }
    }

    public int G() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public void G0(TimeInterpolator timeInterpolator) {
        this.textSizeInterpolator = timeInterpolator;
        Y();
    }

    @RequiresApi
    public float H() {
        return this.textLayout.getSpacingAdd();
    }

    @RequiresApi
    public float I() {
        return this.textLayout.getSpacingMultiplier();
    }

    public final boolean S() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.collapsedTextColor;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.expandedTextColor) != null && colorStateList.isStateful());
    }

    public void V(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.collapsedTypefaceDefault;
            if (typeface != null) {
                this.collapsedTypefaceBold = com.google.android.material.resources.h.b(configuration, typeface);
            }
            Typeface typeface2 = this.expandedTypefaceDefault;
            if (typeface2 != null) {
                this.expandedTypefaceBold = com.google.android.material.resources.h.b(configuration, typeface2);
            }
            Typeface typeface3 = this.collapsedTypefaceBold;
            if (typeface3 == null) {
                typeface3 = this.collapsedTypefaceDefault;
            }
            this.collapsedTypeface = typeface3;
            Typeface typeface4 = this.expandedTypefaceBold;
            if (typeface4 == null) {
                typeface4 = this.expandedTypefaceDefault;
            }
            this.expandedTypeface = typeface4;
            Z(true);
        }
    }

    void X() {
        this.drawTitle = this.collapsedBounds.width() > 0 && this.collapsedBounds.height() > 0 && this.expandedBounds.width() > 0 && this.expandedBounds.height() > 0;
    }

    public void Z(boolean z6) {
        if ((this.view.getHeight() <= 0 || this.view.getWidth() <= 0) && !z6) {
            return;
        }
        b(z6);
        c();
    }

    public void b0(int i10, int i11, int i12, int i13) {
        if (a0(this.collapsedBounds, i10, i11, i12, i13)) {
            return;
        }
        this.collapsedBounds.set(i10, i11, i12, i13);
        this.boundsChanged = true;
        X();
    }

    public void c0(@NonNull Rect rect) {
        b0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void d0(int i10) {
        com.google.android.material.resources.d dVar = new com.google.android.material.resources.d(this.view.getContext(), i10);
        if (dVar.i() != null) {
            this.collapsedTextColor = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.collapsedTextSize = dVar.j();
        }
        ColorStateList colorStateList = dVar.shadowColor;
        if (colorStateList != null) {
            this.collapsedShadowColor = colorStateList;
        }
        this.collapsedShadowDx = dVar.shadowDx;
        this.collapsedShadowDy = dVar.shadowDy;
        this.collapsedShadowRadius = dVar.shadowRadius;
        this.collapsedLetterSpacing = dVar.letterSpacing;
        com.google.android.material.resources.a aVar = this.collapsedFontCallback;
        if (aVar != null) {
            aVar.c();
        }
        this.collapsedFontCallback = new com.google.android.material.resources.a(new a(), dVar.e());
        dVar.h(this.view.getContext(), this.collapsedFontCallback);
        Y();
    }

    public void f0(ColorStateList colorStateList) {
        if (this.collapsedTextColor != colorStateList) {
            this.collapsedTextColor = colorStateList;
            Y();
        }
    }

    public void g0(int i10) {
        if (this.collapsedTextGravity != i10) {
            this.collapsedTextGravity = i10;
            Y();
        }
    }

    public void k0(int i10, int i11, int i12, int i13) {
        if (a0(this.expandedBounds, i10, i11, i12, i13)) {
            return;
        }
        this.expandedBounds.set(i10, i11, i12, i13);
        this.boundsChanged = true;
        X();
    }

    public void l0(@NonNull Rect rect) {
        k0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void m0(float f) {
        if (this.expandedLetterSpacing != f) {
            this.expandedLetterSpacing = f;
            Y();
        }
    }

    public void n0(int i10) {
        com.google.android.material.resources.d dVar = new com.google.android.material.resources.d(this.view.getContext(), i10);
        if (dVar.i() != null) {
            this.expandedTextColor = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.expandedTextSize = dVar.j();
        }
        ColorStateList colorStateList = dVar.shadowColor;
        if (colorStateList != null) {
            this.expandedShadowColor = colorStateList;
        }
        this.expandedShadowDx = dVar.shadowDx;
        this.expandedShadowDy = dVar.shadowDy;
        this.expandedShadowRadius = dVar.shadowRadius;
        this.expandedLetterSpacing = dVar.letterSpacing;
        com.google.android.material.resources.a aVar = this.expandedFontCallback;
        if (aVar != null) {
            aVar.c();
        }
        this.expandedFontCallback = new com.google.android.material.resources.a(new C0204b(), dVar.e());
        dVar.h(this.view.getContext(), this.expandedFontCallback);
        Y();
    }

    public void o(@NonNull RectF rectF, int i10, int i11) {
        this.isRtl = f(this.text);
        rectF.left = s(i10, i11);
        rectF.top = this.collapsedBounds.top;
        rectF.right = t(rectF, i10, i11);
        rectF.bottom = this.collapsedBounds.top + r();
    }

    public void p0(ColorStateList colorStateList) {
        if (this.expandedTextColor != colorStateList) {
            this.expandedTextColor = colorStateList;
            Y();
        }
    }

    public void q0(int i10) {
        if (this.expandedTextGravity != i10) {
            this.expandedTextGravity = i10;
            Y();
        }
    }

    public float r() {
        N(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public void r0(float f) {
        if (this.expandedTextSize != f) {
            this.expandedTextSize = f;
            Y();
        }
    }

    public Typeface u() {
        Typeface typeface = this.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @ColorInt
    public int v() {
        return w(this.collapsedTextColor);
    }

    public void w0(float f) {
        this.fadeModeStartFraction = f;
        this.fadeModeThresholdFraction = e();
    }

    public float z() {
        O(this.tmpPaint);
        return (-this.tmpPaint.ascent()) + this.tmpPaint.descent();
    }

    public b(View view) {
        this.view = view;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        this.fadeModeThresholdFraction = e();
        V(view.getContext().getResources().getConfiguration());
    }

    private float W(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private boolean f(@NonNull CharSequence charSequence) {
        boolean zR = R();
        if (this.isRtlTextDirectionHeuristicsEnabled) {
            return T(charSequence, zR);
        }
        return zR;
    }

    private void g(float f) {
        float f6;
        P(f);
        if (this.fadeModeEnabled) {
            if (f < this.fadeModeThresholdFraction) {
                this.currentDrawX = this.expandedDrawX;
                this.currentDrawY = this.expandedDrawY;
                y0(0.0f);
                f6 = 0.0f;
            } else {
                this.currentDrawX = this.collapsedDrawX;
                this.currentDrawY = this.collapsedDrawY - Math.max(0, this.currentOffsetY);
                y0(1.0f);
                f6 = 1.0f;
            }
        } else {
            this.currentDrawX = U(this.expandedDrawX, this.collapsedDrawX, f, this.positionInterpolator);
            this.currentDrawY = U(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
            y0(f);
            f6 = f;
        }
        TimeInterpolator timeInterpolator = e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR;
        e0(1.0f - U(0.0f, 1.0f, 1.0f - f, timeInterpolator));
        o0(U(1.0f, 0.0f, f, timeInterpolator));
        if (this.collapsedTextColor != this.expandedTextColor) {
            this.textPaint.setColor(a(x(), v(), f6));
        } else {
            this.textPaint.setColor(v());
        }
        float f7 = this.collapsedLetterSpacing;
        float f10 = this.expandedLetterSpacing;
        if (f7 != f10) {
            this.textPaint.setLetterSpacing(U(f10, f7, f, timeInterpolator));
        } else {
            this.textPaint.setLetterSpacing(f7);
        }
        this.currentShadowRadius = U(this.expandedShadowRadius, this.collapsedShadowRadius, f, null);
        this.currentShadowDx = U(this.expandedShadowDx, this.collapsedShadowDx, f, null);
        this.currentShadowDy = U(this.expandedShadowDy, this.collapsedShadowDy, f, null);
        int iA = a(w(this.expandedShadowColor), w(this.collapsedShadowColor), f);
        this.currentShadowColor = iA;
        this.textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, iA);
        if (this.fadeModeEnabled) {
            this.textPaint.setAlpha((int) (d(f) * this.textPaint.getAlpha()));
        }
        ViewCompat.k0(this.view);
    }

    private void y0(float f) {
        boolean z6;
        h(f);
        if (USE_SCALING_TEXTURE && this.scale != 1.0f) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.useTexture = z6;
        if (z6) {
            n();
        }
        ViewCompat.k0(this.view);
    }

    public void H0(Typeface typeface) {
        boolean zI0 = i0(typeface);
        boolean zT0 = t0(typeface);
        if (zI0 || zT0) {
            Y();
        }
    }

    public void h0(Typeface typeface) {
        if (i0(typeface)) {
            Y();
        }
    }

    public void l(@NonNull Canvas canvas) {
        boolean z6;
        int iSave = canvas.save();
        if (this.textToDraw != null && this.drawTitle) {
            this.textPaint.setTextSize(this.currentTextSize);
            float f = this.currentDrawX;
            float f6 = this.currentDrawY;
            if (this.useTexture && this.expandedTitleTexture != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            float f7 = this.scale;
            if (f7 != 1.0f && !this.fadeModeEnabled) {
                canvas.scale(f7, f7, f, f6);
            }
            if (z6) {
                canvas.drawBitmap(this.expandedTitleTexture, f, f6, this.texturePaint);
                canvas.restoreToCount(iSave);
                return;
            }
            if (I0() && (!this.fadeModeEnabled || this.expandedFraction > this.fadeModeThresholdFraction)) {
                m(canvas, this.currentDrawX - this.textLayout.getLineStart(0), f6);
            } else {
                canvas.translate(f, f6);
                this.textLayout.draw(canvas);
            }
            canvas.restoreToCount(iSave);
        }
    }

    public void s0(Typeface typeface) {
        if (t0(typeface)) {
            Y();
        }
    }
}
