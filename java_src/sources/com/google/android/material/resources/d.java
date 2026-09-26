package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import d3.l;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class d {
    private static final String TAG = "TextAppearance";
    private static final int TYPEFACE_MONOSPACE = 3;
    private static final int TYPEFACE_SANS = 1;
    private static final int TYPEFACE_SERIF = 2;
    private Typeface font;

    @Nullable
    public final String fontFamily;

    @FontRes
    private final int fontFamilyResourceId;
    private boolean fontResolved = false;
    public final boolean hasLetterSpacing;
    public final float letterSpacing;

    @Nullable
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final boolean textAllCaps;

    @Nullable
    private ColorStateList textColor;

    @Nullable
    public final ColorStateList textColorHint;

    @Nullable
    public final ColorStateList textColorLink;
    private float textSize;
    public final int textStyle;
    public final int typeface;

    class a extends ResourcesCompat.FontCallback {
        final /* synthetic */ f val$callback;

        a(f fVar) {
            this.val$callback = fVar;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: h */
        public void f(int i10) {
            d.this.fontResolved = true;
            this.val$callback.a(i10);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* JADX INFO: renamed from: i */
        public void g(@NonNull Typeface typeface) {
            d dVar = d.this;
            dVar.font = Typeface.create(typeface, dVar.textStyle);
            d.this.fontResolved = true;
            this.val$callback.b(d.this.font, false);
        }
    }

    class b extends f {
        final /* synthetic */ f val$callback;
        final /* synthetic */ Context val$context;
        final /* synthetic */ TextPaint val$textPaint;

        b(Context context, TextPaint textPaint, f fVar) {
            this.val$context = context;
            this.val$textPaint = textPaint;
            this.val$callback = fVar;
        }

        @Override // com.google.android.material.resources.f
        public void a(int i10) {
            this.val$callback.a(i10);
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z6) {
            d.this.p(this.val$context, this.val$textPaint, typeface);
            this.val$callback.b(typeface, z6);
        }
    }

    @Nullable
    public ColorStateList i() {
        return this.textColor;
    }

    public float j() {
        return this.textSize;
    }

    public void k(@Nullable ColorStateList colorStateList) {
        this.textColor = colorStateList;
    }

    public void l(float f) {
        this.textSize = f;
    }

    private void d() {
        String str;
        if (this.font == null && (str = this.fontFamily) != null) {
            this.font = Typeface.create(str, this.textStyle);
        }
        if (this.font == null) {
            int i10 = this.typeface;
            if (i10 == 1) {
                this.font = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.font = Typeface.SERIF;
            } else if (i10 != 3) {
                this.font = Typeface.DEFAULT;
            } else {
                this.font = Typeface.MONOSPACE;
            }
            this.font = Typeface.create(this.font, this.textStyle);
        }
    }

    @NonNull
    @VisibleForTesting
    public Typeface f(@NonNull Context context) {
        if (this.fontResolved) {
            return this.font;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceG = ResourcesCompat.g(context, this.fontFamilyResourceId);
                this.font = typefaceG;
                if (typefaceG != null) {
                    this.font = Typeface.create(typefaceG, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d(TAG, "Error loading font " + this.fontFamily, e);
            }
        }
        d();
        this.fontResolved = true;
        return this.font;
    }

    public d(@NonNull Context context, @StyleRes int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, l.TextAppearance);
        l(typedArrayObtainStyledAttributes.getDimension(l.TextAppearance_android_textSize, 0.0f));
        k(c.a(context, typedArrayObtainStyledAttributes, l.TextAppearance_android_textColor));
        this.textColorHint = c.a(context, typedArrayObtainStyledAttributes, l.TextAppearance_android_textColorHint);
        this.textColorLink = c.a(context, typedArrayObtainStyledAttributes, l.TextAppearance_android_textColorLink);
        this.textStyle = typedArrayObtainStyledAttributes.getInt(l.TextAppearance_android_textStyle, 0);
        this.typeface = typedArrayObtainStyledAttributes.getInt(l.TextAppearance_android_typeface, 1);
        int iF = c.f(typedArrayObtainStyledAttributes, l.TextAppearance_fontFamily, l.TextAppearance_android_fontFamily);
        this.fontFamilyResourceId = typedArrayObtainStyledAttributes.getResourceId(iF, 0);
        this.fontFamily = typedArrayObtainStyledAttributes.getString(iF);
        this.textAllCaps = typedArrayObtainStyledAttributes.getBoolean(l.TextAppearance_textAllCaps, false);
        this.shadowColor = c.a(context, typedArrayObtainStyledAttributes, l.TextAppearance_android_shadowColor);
        this.shadowDx = typedArrayObtainStyledAttributes.getFloat(l.TextAppearance_android_shadowDx, 0.0f);
        this.shadowDy = typedArrayObtainStyledAttributes.getFloat(l.TextAppearance_android_shadowDy, 0.0f);
        this.shadowRadius = typedArrayObtainStyledAttributes.getFloat(l.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, l.MaterialTextAppearance);
        int i11 = l.MaterialTextAppearance_android_letterSpacing;
        this.hasLetterSpacing = typedArrayObtainStyledAttributes2.hasValue(i11);
        this.letterSpacing = typedArrayObtainStyledAttributes2.getFloat(i11, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private boolean m(Context context) {
        Typeface typefaceC;
        if (e.a()) {
            return true;
        }
        int i10 = this.fontFamilyResourceId;
        if (i10 != 0) {
            typefaceC = ResourcesCompat.c(context, i10);
        } else {
            typefaceC = null;
        }
        if (typefaceC != null) {
            return true;
        }
        return false;
    }

    public Typeface e() {
        d();
        return this.font;
    }

    public void g(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, fVar));
    }

    public void h(@NonNull Context context, @NonNull f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.fontFamilyResourceId;
        if (i10 == 0) {
            this.fontResolved = true;
        }
        if (this.fontResolved) {
            fVar.b(this.font, true);
            return;
        }
        try {
            ResourcesCompat.i(context, i10, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.fontResolved = true;
            fVar.a(1);
        } catch (Exception e) {
            Log.d(TAG, "Error loading font " + this.fontFamily, e);
            this.fontResolved = true;
            fVar.a(-3);
        }
    }

    public void n(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        int colorForState;
        int colorForState2;
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            colorForState = colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor());
        } else {
            colorForState = ViewCompat.MEASURED_STATE_MASK;
        }
        textPaint.setColor(colorForState);
        float f = this.shadowRadius;
        float f6 = this.shadowDx;
        float f7 = this.shadowDy;
        ColorStateList colorStateList2 = this.shadowColor;
        if (colorStateList2 != null) {
            colorForState2 = colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor());
        } else {
            colorForState2 = 0;
        }
        textPaint.setShadowLayer(f, f6, f7, colorForState2);
    }

    public void o(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void p(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        boolean z6;
        float f;
        Typeface typefaceA = h.a(context, typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i10 = this.textStyle & (~typeface.getStyle());
        if ((i10 & 1) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        textPaint.setFakeBoldText(z6);
        if ((i10 & 2) != 0) {
            f = -0.25f;
        } else {
            f = 0.0f;
        }
        textPaint.setTextSkewX(f);
        textPaint.setTextSize(this.textSize);
        if (this.hasLetterSpacing) {
            textPaint.setLetterSpacing(this.letterSpacing);
        }
    }
}
