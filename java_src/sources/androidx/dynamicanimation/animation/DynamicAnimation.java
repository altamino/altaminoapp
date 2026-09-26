package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import java.util.ArrayList;
import org.apache.commons.compress.compressors.CompressorStreamFactory;

/* JADX INFO: loaded from: classes7.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler.AnimationFrameCallback {
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;
    private static final float THRESHOLD_MULTIPLIER = 0.75f;
    private static final float UNSET = Float.MAX_VALUE;
    private final ArrayList<OnAnimationEndListener> mEndListeners;
    private long mLastFrameTime;
    float mMaxValue;
    float mMinValue;
    private float mMinVisibleChange;
    final FloatPropertyCompat mProperty;
    boolean mRunning;
    boolean mStartValueIsSet;
    final Object mTarget;
    private final ArrayList<OnAnimationUpdateListener> mUpdateListeners;
    float mValue;
    float mVelocity;
    public static final ViewProperty TRANSLATION_X = new ViewProperty("translationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setTranslationX(f);
        }
    };
    public static final ViewProperty TRANSLATION_Y = new ViewProperty("translationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.2
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setTranslationY(f);
        }
    };
    public static final ViewProperty TRANSLATION_Z = new ViewProperty("translationZ") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.3
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            ViewCompat.Z0(view, f);
        }
    };
    public static final ViewProperty SCALE_X = new ViewProperty("scaleX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.4
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setScaleX(f);
        }
    };
    public static final ViewProperty SCALE_Y = new ViewProperty("scaleY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.5
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setScaleY(f);
        }
    };
    public static final ViewProperty ROTATION = new ViewProperty(Key.ROTATION) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.6
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setRotation(f);
        }
    };
    public static final ViewProperty ROTATION_X = new ViewProperty("rotationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.7
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setRotationX(f);
        }
    };
    public static final ViewProperty ROTATION_Y = new ViewProperty("rotationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.8
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setRotationY(f);
        }
    };
    public static final ViewProperty X = new ViewProperty("x") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.9
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setX(f);
        }
    };
    public static final ViewProperty Y = new ViewProperty("y") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.10
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setY(f);
        }
    };
    public static final ViewProperty Z = new ViewProperty(CompressorStreamFactory.Z) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.11
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            ViewCompat.c1(view, f);
        }
    };
    public static final ViewProperty ALPHA = new ViewProperty("alpha") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.12
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setAlpha(f);
        }
    };
    public static final ViewProperty SCROLL_X = new ViewProperty("scrollX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.13
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setScrollX((int) f);
        }
    };
    public static final ViewProperty SCROLL_Y = new ViewProperty("scrollY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.14
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(View view, float f) {
            view.setScrollY((int) f);
        }
    };

    public interface OnAnimationEndListener {
        void a(DynamicAnimation dynamicAnimation, boolean z6, float f, float f6);
    }

    public interface OnAnimationUpdateListener {
        void a(DynamicAnimation dynamicAnimation, float f, float f6);
    }

    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
        private ViewProperty(String str) {
            super(str);
        }
    }

    DynamicAnimation(final FloatValueHolder floatValueHolder) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = null;
        this.mProperty = new FloatPropertyCompat("FloatValueHolder") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.15
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void a(Object obj, float f) {
                floatValueHolder.a(f);
            }
        };
        this.mMinVisibleChange = 1.0f;
    }

    private void b(boolean z6) {
        this.mRunning = false;
        AnimationHandler.c().f(this);
        this.mLastFrameTime = 0L;
        this.mStartValueIsSet = false;
        for (int i10 = 0; i10 < this.mEndListeners.size(); i10++) {
            if (this.mEndListeners.get(i10) != null) {
                this.mEndListeners.get(i10).a(this, z6, this.mValue, this.mVelocity);
            }
        }
        d(this.mEndListeners);
    }

    float c() {
        return this.mMinVisibleChange * 0.75f;
    }

    abstract boolean f(long j6);

    static class MassState {
        float mValue;
        float mVelocity;

        MassState() {
        }
    }

    @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback
    @RestrictTo
    public boolean a(long j6) {
        long j10 = this.mLastFrameTime;
        if (j10 == 0) {
            this.mLastFrameTime = j6;
            e(this.mValue);
            return false;
        }
        this.mLastFrameTime = j6;
        boolean zF = f(j6 - j10);
        float fMin = Math.min(this.mValue, this.mMaxValue);
        this.mValue = fMin;
        float fMax = Math.max(fMin, this.mMinValue);
        this.mValue = fMax;
        e(fMax);
        if (zF) {
            b(false);
        }
        return zF;
    }

    void e(float f) {
        this.mProperty.a(this.mTarget, f);
        for (int i10 = 0; i10 < this.mUpdateListeners.size(); i10++) {
            if (this.mUpdateListeners.get(i10) != null) {
                this.mUpdateListeners.get(i10).a(this, this.mValue, this.mVelocity);
            }
        }
        d(this.mUpdateListeners);
    }

    private static <T> void d(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    <K> DynamicAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -Float.MAX_VALUE;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = k;
        this.mProperty = floatPropertyCompat;
        if (floatPropertyCompat == ROTATION || floatPropertyCompat == ROTATION_X || floatPropertyCompat == ROTATION_Y) {
            this.mMinVisibleChange = 0.1f;
            return;
        }
        if (floatPropertyCompat == ALPHA) {
            this.mMinVisibleChange = 0.00390625f;
        } else if (floatPropertyCompat == SCALE_X || floatPropertyCompat == SCALE_Y) {
            this.mMinVisibleChange = 0.00390625f;
        } else {
            this.mMinVisibleChange = 1.0f;
        }
    }
}
