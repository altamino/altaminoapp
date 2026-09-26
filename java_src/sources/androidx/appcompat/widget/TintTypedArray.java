package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    public TypedArray r() {
        return this.mWrapped;
    }

    public static TintTypedArray t(Context context, int i10, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i10, iArr));
    }

    public static TintTypedArray u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static TintTypedArray v(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i10, i11));
    }

    public boolean a(int i10, boolean z6) {
        return this.mWrapped.getBoolean(i10, z6);
    }

    public int b(int i10, int i11) {
        return this.mWrapped.getColor(i10, i11);
    }

    public ColorStateList c(int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.mWrapped.hasValue(i10) || (resourceId = this.mWrapped.getResourceId(i10, 0)) == 0 || (colorStateListA = AppCompatResources.a(this.mContext, resourceId)) == null) ? this.mWrapped.getColorStateList(i10) : colorStateListA;
    }

    public float d(int i10, float f) {
        return this.mWrapped.getDimension(i10, f);
    }

    public int e(int i10, int i11) {
        return this.mWrapped.getDimensionPixelOffset(i10, i11);
    }

    public int f(int i10, int i11) {
        return this.mWrapped.getDimensionPixelSize(i10, i11);
    }

    public Drawable g(int i10) {
        int resourceId;
        return (!this.mWrapped.hasValue(i10) || (resourceId = this.mWrapped.getResourceId(i10, 0)) == 0) ? this.mWrapped.getDrawable(i10) : AppCompatResources.b(this.mContext, resourceId);
    }

    public Drawable h(int i10) {
        int resourceId;
        if (!this.mWrapped.hasValue(i10) || (resourceId = this.mWrapped.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.b().d(this.mContext, resourceId, true);
    }

    public float i(int i10, float f) {
        return this.mWrapped.getFloat(i10, f);
    }

    @Nullable
    public Typeface j(@StyleableRes int i10, int i11, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.mWrapped.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        return ResourcesCompat.h(this.mContext, resourceId, this.mTypedValue, i11, fontCallback);
    }

    public int k(int i10, int i11) {
        return this.mWrapped.getInt(i10, i11);
    }

    public int l(int i10, int i11) {
        return this.mWrapped.getInteger(i10, i11);
    }

    public int m(int i10, int i11) {
        return this.mWrapped.getLayoutDimension(i10, i11);
    }

    public int n(int i10, int i11) {
        return this.mWrapped.getResourceId(i10, i11);
    }

    public String o(int i10) {
        return this.mWrapped.getString(i10);
    }

    public CharSequence p(int i10) {
        return this.mWrapped.getText(i10);
    }

    public CharSequence[] q(int i10) {
        return this.mWrapped.getTextArray(i10);
    }

    public boolean s(int i10) {
        return this.mWrapped.hasValue(i10);
    }

    public void w() {
        this.mWrapped.recycle();
    }

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }
}
