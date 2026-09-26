package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
class DrawableContainer extends Drawable implements Drawable.Callback {
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_DITHER = true;
    private static final String TAG = "DrawableContainer";
    private Runnable mAnimationRunnable;
    private BlockInvalidateCallback mBlockInvalidateCallback;
    private Drawable mCurrDrawable;
    private DrawableContainerState mDrawableContainerState;
    private long mEnterAnimationEnd;
    private long mExitAnimationEnd;
    private boolean mHasAlpha;
    private Rect mHotspotBounds;
    private Drawable mLastDrawable;
    private boolean mMutated;
    private int mAlpha = 255;
    private int mCurIndex = -1;

    static class BlockInvalidateCallback implements Drawable.Callback {
        private Drawable.Callback mCallback;

        public Drawable.Callback a() {
            Drawable.Callback callback = this.mCallback;
            this.mCallback = null;
            return callback;
        }

        public BlockInvalidateCallback b(Drawable.Callback callback) {
            this.mCallback = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
            Drawable.Callback callback = this.mCallback;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j6);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.mCallback;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        BlockInvalidateCallback() {
        }
    }

    static abstract class DrawableContainerState extends Drawable.ConstantState {
        boolean mAutoMirrored;
        boolean mCanConstantState;
        int mChangingConfigurations;
        boolean mCheckedConstantSize;
        boolean mCheckedConstantState;
        boolean mCheckedOpacity;
        boolean mCheckedPadding;
        boolean mCheckedStateful;
        int mChildrenChangingConfigurations;
        ColorFilter mColorFilter;
        int mConstantHeight;
        int mConstantMinimumHeight;
        int mConstantMinimumWidth;
        Rect mConstantPadding;
        boolean mConstantSize;
        int mConstantWidth;
        int mDensity;
        boolean mDither;
        SparseArray<Drawable.ConstantState> mDrawableFutures;
        Drawable[] mDrawables;
        int mEnterFadeDuration;
        int mExitFadeDuration;
        boolean mHasColorFilter;
        boolean mHasTintList;
        boolean mHasTintMode;
        int mLayoutDirection;
        boolean mMutated;
        int mNumChildren;
        int mOpacity;
        final DrawableContainer mOwner;
        Resources mSourceRes;
        boolean mStateful;
        ColorStateList mTintList;
        PorterDuff.Mode mTintMode;
        boolean mVariablePadding;

        protected void d() {
            this.mCheckedConstantSize = true;
            e();
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            this.mConstantHeight = -1;
            this.mConstantWidth = -1;
            this.mConstantMinimumHeight = 0;
            this.mConstantMinimumWidth = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.mConstantWidth) {
                    this.mConstantWidth = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.mConstantHeight) {
                    this.mConstantHeight = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.mConstantMinimumWidth) {
                    this.mConstantMinimumWidth = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.mConstantMinimumHeight) {
                    this.mConstantMinimumHeight = minimumHeight;
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations | this.mChildrenChangingConfigurations;
        }

        public final int h() {
            return this.mNumChildren;
        }

        void p() {
            this.mCheckedOpacity = false;
            this.mCheckedStateful = false;
        }

        public final boolean q() {
            return this.mConstantSize;
        }

        public final void u(boolean z6) {
            this.mConstantSize = z6;
        }

        public final void v(int i10) {
            this.mEnterFadeDuration = i10;
        }

        public final void w(int i10) {
            this.mExitFadeDuration = i10;
        }

        public final void y(boolean z6) {
            this.mVariablePadding = z6;
        }

        private void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.mDrawableFutures;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.mDrawables[this.mDrawableFutures.keyAt(i10)] = t(this.mDrawableFutures.valueAt(i10).newDrawable(this.mSourceRes));
                }
                this.mDrawableFutures = null;
            }
        }

        private Drawable t(Drawable drawable) {
            DrawableCompat.m(drawable, this.mLayoutDirection);
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.mOwner);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i10 = this.mNumChildren;
            if (i10 >= this.mDrawables.length) {
                o(i10, i10 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.mOwner);
            this.mDrawables[i10] = drawable;
            this.mNumChildren++;
            this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
            p();
            this.mConstantPadding = null;
            this.mCheckedPadding = false;
            this.mCheckedConstantSize = false;
            this.mCheckedConstantState = false;
            return i10;
        }

        @RequiresApi
        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i10 = this.mNumChildren;
                Drawable[] drawableArr = this.mDrawables;
                for (int i11 = 0; i11 < i10; i11++) {
                    Drawable drawable = drawableArr[i11];
                    if (drawable != null && DrawableCompat.b(drawable)) {
                        DrawableCompat.a(drawableArr[i11], theme);
                        this.mChildrenChangingConfigurations |= drawableArr[i11].getChangingConfigurations();
                    }
                }
                z(Api21Impl.c(theme));
            }
        }

        public boolean c() {
            if (this.mCheckedConstantState) {
                return this.mCanConstantState;
            }
            e();
            this.mCheckedConstantState = true;
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getConstantState() == null) {
                    this.mCanConstantState = false;
                    return false;
                }
            }
            this.mCanConstantState = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi
        public boolean canApplyTheme() {
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.mDrawableFutures.get(i11);
                    if (constantState != null && Api21Impl.a(constantState)) {
                        return true;
                    }
                } else if (DrawableCompat.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        final int f() {
            return this.mDrawables.length;
        }

        public final Drawable g(int i10) {
            int iIndexOfKey;
            Drawable drawable = this.mDrawables[i10];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.mDrawableFutures;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i10)) < 0) {
                return null;
            }
            Drawable drawableT = t(this.mDrawableFutures.valueAt(iIndexOfKey).newDrawable(this.mSourceRes));
            this.mDrawables[i10] = drawableT;
            this.mDrawableFutures.removeAt(iIndexOfKey);
            if (this.mDrawableFutures.size() == 0) {
                this.mDrawableFutures = null;
            }
            return drawableT;
        }

        public final int i() {
            if (!this.mCheckedConstantSize) {
                d();
            }
            return this.mConstantHeight;
        }

        public final int j() {
            if (!this.mCheckedConstantSize) {
                d();
            }
            return this.mConstantMinimumHeight;
        }

        public final int k() {
            if (!this.mCheckedConstantSize) {
                d();
            }
            return this.mConstantMinimumWidth;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.mVariablePadding) {
                return null;
            }
            Rect rect2 = this.mConstantPadding;
            if (rect2 != null || this.mCheckedPadding) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i12 = rect3.left;
                    if (i12 > rect.left) {
                        rect.left = i12;
                    }
                    int i13 = rect3.top;
                    if (i13 > rect.top) {
                        rect.top = i13;
                    }
                    int i14 = rect3.right;
                    if (i14 > rect.right) {
                        rect.right = i14;
                    }
                    int i15 = rect3.bottom;
                    if (i15 > rect.bottom) {
                        rect.bottom = i15;
                    }
                }
            }
            this.mCheckedPadding = true;
            this.mConstantPadding = rect;
            return rect;
        }

        public final int m() {
            if (!this.mCheckedConstantSize) {
                d();
            }
            return this.mConstantWidth;
        }

        public final int n() {
            if (this.mCheckedOpacity) {
                return this.mOpacity;
            }
            e();
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            int opacity = i10 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i11 = 1; i11 < i10; i11++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i11].getOpacity());
            }
            this.mOpacity = opacity;
            this.mCheckedOpacity = true;
            return opacity;
        }

        public void o(int i10, int i11) {
            Drawable[] drawableArr = new Drawable[i11];
            Drawable[] drawableArr2 = this.mDrawables;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i10);
            }
            this.mDrawables = drawableArr;
        }

        public final boolean r() {
            if (this.mCheckedStateful) {
                return this.mStateful;
            }
            e();
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            boolean z6 = false;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].isStateful()) {
                    z6 = true;
                    break;
                }
            }
            this.mStateful = z6;
            this.mCheckedStateful = true;
            return z6;
        }

        void s() {
            int i10 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null) {
                    drawable.mutate();
                }
            }
            this.mMutated = true;
        }

        final boolean x(int i10, int i11) {
            int i12 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            boolean z6 = false;
            for (int i13 = 0; i13 < i12; i13++) {
                Drawable drawable = drawableArr[i13];
                if (drawable != null) {
                    boolean zM = DrawableCompat.m(drawable, i10);
                    if (i13 == i11) {
                        z6 = zM;
                    }
                }
            }
            this.mLayoutDirection = i10;
            return z6;
        }

        final void z(Resources resources) {
            if (resources != null) {
                this.mSourceRes = resources;
                int iF = DrawableContainer.f(resources, this.mDensity);
                int i10 = this.mDensity;
                this.mDensity = iF;
                if (i10 != iF) {
                    this.mCheckedConstantSize = false;
                    this.mCheckedPadding = false;
                }
            }
        }

        DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            Resources resources2;
            int i10;
            this.mVariablePadding = false;
            this.mConstantSize = false;
            this.mDither = true;
            this.mEnterFadeDuration = 0;
            this.mExitFadeDuration = 0;
            this.mOwner = drawableContainer;
            if (resources != null) {
                resources2 = resources;
            } else if (drawableContainerState != null) {
                resources2 = drawableContainerState.mSourceRes;
            } else {
                resources2 = null;
            }
            this.mSourceRes = resources2;
            if (drawableContainerState != null) {
                i10 = drawableContainerState.mDensity;
            } else {
                i10 = 0;
            }
            int iF = DrawableContainer.f(resources, i10);
            this.mDensity = iF;
            if (drawableContainerState != null) {
                this.mChangingConfigurations = drawableContainerState.mChangingConfigurations;
                this.mChildrenChangingConfigurations = drawableContainerState.mChildrenChangingConfigurations;
                this.mCheckedConstantState = true;
                this.mCanConstantState = true;
                this.mVariablePadding = drawableContainerState.mVariablePadding;
                this.mConstantSize = drawableContainerState.mConstantSize;
                this.mDither = drawableContainerState.mDither;
                this.mMutated = drawableContainerState.mMutated;
                this.mLayoutDirection = drawableContainerState.mLayoutDirection;
                this.mEnterFadeDuration = drawableContainerState.mEnterFadeDuration;
                this.mExitFadeDuration = drawableContainerState.mExitFadeDuration;
                this.mAutoMirrored = drawableContainerState.mAutoMirrored;
                this.mColorFilter = drawableContainerState.mColorFilter;
                this.mHasColorFilter = drawableContainerState.mHasColorFilter;
                this.mTintList = drawableContainerState.mTintList;
                this.mTintMode = drawableContainerState.mTintMode;
                this.mHasTintList = drawableContainerState.mHasTintList;
                this.mHasTintMode = drawableContainerState.mHasTintMode;
                if (drawableContainerState.mDensity == iF) {
                    if (drawableContainerState.mCheckedPadding) {
                        this.mConstantPadding = drawableContainerState.mConstantPadding != null ? new Rect(drawableContainerState.mConstantPadding) : null;
                        this.mCheckedPadding = true;
                    }
                    if (drawableContainerState.mCheckedConstantSize) {
                        this.mConstantWidth = drawableContainerState.mConstantWidth;
                        this.mConstantHeight = drawableContainerState.mConstantHeight;
                        this.mConstantMinimumWidth = drawableContainerState.mConstantMinimumWidth;
                        this.mConstantMinimumHeight = drawableContainerState.mConstantMinimumHeight;
                        this.mCheckedConstantSize = true;
                    }
                }
                if (drawableContainerState.mCheckedOpacity) {
                    this.mOpacity = drawableContainerState.mOpacity;
                    this.mCheckedOpacity = true;
                }
                if (drawableContainerState.mCheckedStateful) {
                    this.mStateful = drawableContainerState.mStateful;
                    this.mCheckedStateful = true;
                }
                Drawable[] drawableArr = drawableContainerState.mDrawables;
                this.mDrawables = new Drawable[drawableArr.length];
                this.mNumChildren = drawableContainerState.mNumChildren;
                SparseArray<Drawable.ConstantState> sparseArray = drawableContainerState.mDrawableFutures;
                if (sparseArray != null) {
                    this.mDrawableFutures = sparseArray.clone();
                } else {
                    this.mDrawableFutures = new SparseArray<>(this.mNumChildren);
                }
                int i11 = this.mNumChildren;
                for (int i12 = 0; i12 < i11; i12++) {
                    Drawable drawable = drawableArr[i12];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.mDrawableFutures.put(i12, constantState);
                        } else {
                            this.mDrawables[i12] = drawableArr[i12];
                        }
                    }
                }
                return;
            }
            this.mDrawables = new Drawable[10];
            this.mNumChildren = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    void a(boolean z6) {
        boolean z10;
        Drawable drawable;
        long j6;
        boolean z11 = true;
        this.mHasAlpha = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            long j10 = this.mEnterAnimationEnd;
            if (j10 != 0) {
                if (j10 <= jUptimeMillis) {
                    drawable2.setAlpha(this.mAlpha);
                    this.mEnterAnimationEnd = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j10 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mEnterFadeDuration)) * this.mAlpha) / 255);
                    z10 = true;
                }
            }
            drawable = this.mLastDrawable;
            if (drawable != null) {
                j6 = this.mExitAnimationEnd;
                if (j6 == 0) {
                    if (j6 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.mLastDrawable = null;
                        this.mExitAnimationEnd = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j6 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                    }
                }
                if (z6 || !z11) {
                }
                scheduleSelf(this.mAnimationRunnable, jUptimeMillis + 16);
                return;
            }
            this.mExitAnimationEnd = 0L;
            z11 = z10;
            if (z6) {
            }
        }
        this.mEnterAnimationEnd = 0L;
        z10 = false;
        drawable = this.mLastDrawable;
        if (drawable != null) {
            j6 = this.mExitAnimationEnd;
            if (j6 == 0) {
                if (j6 <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.mLastDrawable = null;
                    this.mExitAnimationEnd = 0L;
                } else {
                    drawable.setAlpha(((((int) ((j6 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                }
            }
            if (z6) {
            }
        }
        this.mExitAnimationEnd = 0L;
        z11 = z10;
        if (z6) {
        }
    }

    DrawableContainerState b() {
        return this.mDrawableContainerState;
    }

    int c() {
        return this.mCurIndex;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.mCurrDrawable;
    }

    @RequiresApi
    private static class Api21Impl {
        private Api21Impl() {
        }

        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    private void d(Drawable drawable) {
        if (this.mBlockInvalidateCallback == null) {
            this.mBlockInvalidateCallback = new BlockInvalidateCallback();
        }
        drawable.setCallback(this.mBlockInvalidateCallback.b(drawable.getCallback()));
        try {
            if (this.mDrawableContainerState.mEnterFadeDuration <= 0 && this.mHasAlpha) {
                drawable.setAlpha(this.mAlpha);
            }
            DrawableContainerState drawableContainerState = this.mDrawableContainerState;
            if (drawableContainerState.mHasColorFilter) {
                drawable.setColorFilter(drawableContainerState.mColorFilter);
            } else {
                if (drawableContainerState.mHasTintList) {
                    DrawableCompat.o(drawable, drawableContainerState.mTintList);
                }
                DrawableContainerState drawableContainerState2 = this.mDrawableContainerState;
                if (drawableContainerState2.mHasTintMode) {
                    DrawableCompat.p(drawable, drawableContainerState2.mTintMode);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.mDrawableContainerState.mDither);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            DrawableCompat.m(drawable, DrawableCompat.f(this));
            DrawableCompat.j(drawable, this.mDrawableContainerState.mAutoMirrored);
            Rect rect = this.mHotspotBounds;
            if (rect != null) {
                DrawableCompat.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.mBlockInvalidateCallback.a());
        }
    }

    static int f(@Nullable Resources resources, int i10) {
        if (resources != null) {
            i10 = resources.getDisplayMetrics().densityDpi;
        }
        if (i10 == 0) {
            return 160;
        }
        return i10;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.mDrawableContainerState.b(theme);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public boolean canApplyTheme() {
        return this.mDrawableContainerState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.mLastDrawable;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    boolean g(int i10) {
        if (i10 == this.mCurIndex) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.mDrawableContainerState.mExitFadeDuration > 0) {
            Drawable drawable = this.mLastDrawable;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.mCurrDrawable;
            if (drawable2 != null) {
                this.mLastDrawable = drawable2;
                this.mExitAnimationEnd = ((long) this.mDrawableContainerState.mExitFadeDuration) + jUptimeMillis;
            } else {
                this.mLastDrawable = null;
                this.mExitAnimationEnd = 0L;
            }
        } else {
            Drawable drawable3 = this.mCurrDrawable;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i10 >= 0) {
            DrawableContainerState drawableContainerState = this.mDrawableContainerState;
            if (i10 < drawableContainerState.mNumChildren) {
                Drawable drawableG = drawableContainerState.g(i10);
                this.mCurrDrawable = drawableG;
                this.mCurIndex = i10;
                if (drawableG != null) {
                    int i11 = this.mDrawableContainerState.mEnterFadeDuration;
                    if (i11 > 0) {
                        this.mEnterAnimationEnd = jUptimeMillis + ((long) i11);
                    }
                    d(drawableG);
                }
            } else {
                this.mCurrDrawable = null;
                this.mCurIndex = -1;
            }
        } else {
            this.mCurrDrawable = null;
            this.mCurIndex = -1;
        }
        if (this.mEnterAnimationEnd != 0 || this.mExitAnimationEnd != 0) {
            Runnable runnable = this.mAnimationRunnable;
            if (runnable == null) {
                this.mAnimationRunnable = new Runnable() { // from class: androidx.appcompat.graphics.drawable.DrawableContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawableContainer.this.a(true);
                        DrawableContainer.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.mDrawableContainerState.c()) {
            return null;
        }
        this.mDrawableContainerState.mChangingConfigurations = getChangingConfigurations();
        return this.mDrawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.mHotspotBounds;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.mDrawableContainerState.q()) {
            return this.mDrawableContainerState.i();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.mDrawableContainerState.q()) {
            return this.mDrawableContainerState.m();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.mDrawableContainerState.q()) {
            return this.mDrawableContainerState.j();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.mDrawableContainerState.q()) {
            return this.mDrawableContainerState.k();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.mCurrDrawable;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.mDrawableContainerState.n();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            Api21Impl.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect rectL = this.mDrawableContainerState.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.mCurrDrawable;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i10 = rect.left;
            rect.left = rect.right;
            rect.right = i10;
        }
        return padding;
    }

    void h(DrawableContainerState drawableContainerState) {
        this.mDrawableContainerState = drawableContainerState;
        int i10 = this.mCurIndex;
        if (i10 >= 0) {
            Drawable drawableG = drawableContainerState.g(i10);
            this.mCurrDrawable = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.mLastDrawable = null;
    }

    final void i(Resources resources) {
        this.mDrawableContainerState.z(resources);
    }

    public void invalidateDrawable(@NonNull Drawable drawable) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState != null) {
            drawableContainerState.p();
        }
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mDrawableContainerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mDrawableContainerState.r();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z6;
        Drawable drawable = this.mLastDrawable;
        boolean z10 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.mLastDrawable = null;
            z6 = true;
        } else {
            z6 = false;
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.mHasAlpha) {
                this.mCurrDrawable.setAlpha(this.mAlpha);
            }
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0L;
        } else {
            z10 = z6;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0L;
        } else if (!z10) {
            return;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            DrawableContainerState drawableContainerStateB = b();
            drawableContainerStateB.s();
            h(drawableContainerStateB);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        return this.mDrawableContainerState.x(i10, c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setLevel(i10);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.mHasAlpha && this.mAlpha == i10) {
            return;
        }
        this.mHasAlpha = true;
        this.mAlpha = i10;
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            if (this.mEnterAnimationEnd == 0) {
                drawable.setAlpha(i10);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z6) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState.mAutoMirrored != z6) {
            drawableContainerState.mAutoMirrored = z6;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                DrawableCompat.j(drawable, z6);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasColorFilter = true;
        if (drawableContainerState.mColorFilter != colorFilter) {
            drawableContainerState.mColorFilter = colorFilter;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z6) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState.mDither != z6) {
            drawableContainerState.mDither = z6;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setDither(z6);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f6) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            DrawableCompat.k(drawable, f, f6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Rect rect = this.mHotspotBounds;
        if (rect == null) {
            this.mHotspotBounds = new Rect(i10, i11, i12, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            DrawableCompat.l(drawable, i10, i11, i12, i13);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasTintList = true;
        if (drawableContainerState.mTintList != colorStateList) {
            drawableContainerState.mTintList = colorStateList;
            DrawableCompat.o(this.mCurrDrawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasTintMode = true;
        if (drawableContainerState.mTintMode != mode) {
            drawableContainerState.mTintMode = mode;
            DrawableCompat.p(this.mCurrDrawable, mode);
        }
    }

    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    DrawableContainer() {
    }

    private boolean e() {
        if (isAutoMirrored() && DrawableCompat.f(this) == 1) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mDrawableContainerState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        boolean visible = super.setVisible(z6, z10);
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setVisible(z6, z10);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setVisible(z6, z10);
        }
        return visible;
    }
}
