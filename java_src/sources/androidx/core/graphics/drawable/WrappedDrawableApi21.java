package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
class WrappedDrawableApi21 extends WrappedDrawableApi14 {
    private static final String TAG = "WrappedDrawableApi21";
    private static Method sIsProjectedDrawableMethod;

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14
    protected boolean c() {
        return false;
    }

    private void g() {
        if (sIsProjectedDrawableMethod == null) {
            try {
                sIsProjectedDrawableMethod = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w(TAG, "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Rect getDirtyBounds() {
        return this.mDrawable.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        this.mDrawable.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.mDrawable;
        if (drawable != null && (method = sIsProjectedDrawableMethod) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e) {
                Log.w(TAG, "Error calling Drawable#isProjected() method", e);
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f6) {
        this.mDrawable.setHotspot(f, f6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        this.mDrawable.setHotspotBounds(i10, i11, i12, i13);
    }

    WrappedDrawableApi21(WrappedDrawableState wrappedDrawableState, Resources resources) {
        super(wrappedDrawableState, resources);
        g();
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable
    public void setTint(int i10) {
        if (c()) {
            super.setTint(i10);
        } else {
            this.mDrawable.setTint(i10);
        }
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (c()) {
            super.setTintList(colorStateList);
        } else {
            this.mDrawable.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (c()) {
            super.setTintMode(mode);
        } else {
            this.mDrawable.setTintMode(mode);
        }
    }
}
