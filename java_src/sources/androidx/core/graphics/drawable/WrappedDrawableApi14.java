package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes11.dex */
class WrappedDrawableApi14 extends Drawable implements Drawable.Callback, WrappedDrawable, TintAwareDrawable {
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private boolean mColorFilterSet;
    private int mCurrentColor;
    private PorterDuff.Mode mCurrentMode;
    Drawable mDrawable;
    private boolean mMutated;
    WrappedDrawableState mState;

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final Drawable b() {
        return this.mDrawable;
    }

    protected boolean c() {
        return true;
    }

    @NonNull
    private WrappedDrawableState d() {
        return new WrappedDrawableState(this.mState);
    }

    private void e(@Nullable Resources resources) {
        Drawable.ConstantState constantState;
        WrappedDrawableState wrappedDrawableState = this.mState;
        if (wrappedDrawableState == null || (constantState = wrappedDrawableState.mDrawableState) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.mDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            WrappedDrawableState wrappedDrawableState = this.mState;
            if (wrappedDrawableState != null) {
                wrappedDrawableState.mDrawableState = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.mDrawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        WrappedDrawableState wrappedDrawableState = this.mState;
        if (wrappedDrawableState == null || !wrappedDrawableState.a()) {
            return null;
        }
        this.mState.mChangingConfigurations = getChangingConfigurations();
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.mDrawable.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public int getLayoutDirection() {
        return DrawableCompat.f(this.mDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.mDrawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.mDrawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.mDrawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.mDrawable.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.mDrawable.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public boolean isAutoMirrored() {
        return DrawableCompat.h(this.mDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState = d();
            Drawable drawable = this.mDrawable;
            if (drawable != null) {
                drawable.mutate();
            }
            WrappedDrawableState wrappedDrawableState = this.mState;
            if (wrappedDrawableState != null) {
                Drawable drawable2 = this.mDrawable;
                wrappedDrawableState.mDrawableState = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public boolean onLayoutDirectionChanged(int i10) {
        return DrawableCompat.m(this.mDrawable, i10);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        return this.mDrawable.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mDrawable.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void setAutoMirrored(boolean z6) {
        DrawableCompat.j(this.mDrawable, z6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i10) {
        this.mDrawable.setChangingConfigurations(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z6) {
        this.mDrawable.setDither(z6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
        this.mDrawable.setFilterBitmap(z6);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return f(iArr) || this.mDrawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.mState.mTint = colorStateList;
        f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.mState.mTintMode = mode;
        f(getState());
    }

    WrappedDrawableApi14(@NonNull WrappedDrawableState wrappedDrawableState, @Nullable Resources resources) {
        this.mState = wrappedDrawableState;
        e(resources);
    }

    private boolean f(int[] iArr) {
        if (!c()) {
            return false;
        }
        WrappedDrawableState wrappedDrawableState = this.mState;
        ColorStateList colorStateList = wrappedDrawableState.mTint;
        PorterDuff.Mode mode = wrappedDrawableState.mTintMode;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.mColorFilterSet || colorForState != this.mCurrentColor || mode != this.mCurrentMode) {
                setColorFilter(colorForState, mode);
                this.mCurrentColor = colorForState;
                this.mCurrentMode = mode;
                this.mColorFilterSet = true;
                return true;
            }
        } else {
            this.mColorFilterSet = false;
            clearColorFilter();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations;
        int changingConfigurations2 = super.getChangingConfigurations();
        WrappedDrawableState wrappedDrawableState = this.mState;
        if (wrappedDrawableState != null) {
            changingConfigurations = wrappedDrawableState.getChangingConfigurations();
        } else {
            changingConfigurations = 0;
        }
        return changingConfigurations2 | changingConfigurations | this.mDrawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        WrappedDrawableState wrappedDrawableState;
        if (c() && (wrappedDrawableState = this.mState) != null) {
            colorStateList = wrappedDrawableState.mTint;
        } else {
            colorStateList = null;
        }
        if ((colorStateList != null && colorStateList.isStateful()) || this.mDrawable.isStateful()) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        scheduleSelf(runnable, j6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        if (!super.setVisible(z6, z10) && !this.mDrawable.setVisible(z6, z10)) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
