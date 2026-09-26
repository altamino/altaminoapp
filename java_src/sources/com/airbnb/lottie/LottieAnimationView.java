package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatImageView;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class LottieAnimationView extends AppCompatImageView {
    private static final String TAG = "LottieAnimationView";
    private String animationName;
    private boolean autoPlay;

    @Nullable
    private e composition;

    @Nullable
    private com.airbnb.lottie.a compositionLoader;
    private c defaultCacheStrategy;
    private final h loadedListener;
    private final f lottieDrawable;
    private boolean useHardwareLayer;
    private boolean wasAnimatingWhenDetached;
    private static final Map<String, e> STRONG_REF_CACHE = new HashMap();
    private static final Map<String, WeakReference<e>> WEAK_REF_CACHE = new HashMap();

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String animationName;
        String imageAssetsFolder;
        boolean isAnimating;
        boolean isLooping;
        float progress;

        static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.animationName = parcel.readString();
            this.progress = parcel.readFloat();
            this.isAnimating = parcel.readInt() == 1;
            this.isLooping = parcel.readInt() == 1;
            this.imageAssetsFolder = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeInt(this.isLooping ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
        }
    }

    class a implements h {
        a() {
        }

        @Override // com.airbnb.lottie.h
        public void a(@Nullable e eVar) {
            if (eVar != null) {
                LottieAnimationView.this.setComposition(eVar);
            }
            LottieAnimationView.this.compositionLoader = null;
        }
    }

    class b implements h {
        final /* synthetic */ String val$animationName;
        final /* synthetic */ c val$cacheStrategy;

        b(c cVar, String str) {
            this.val$cacheStrategy = cVar;
            this.val$animationName = str;
        }

        @Override // com.airbnb.lottie.h
        public void a(e eVar) {
            c cVar = this.val$cacheStrategy;
            if (cVar == c.Strong) {
                LottieAnimationView.STRONG_REF_CACHE.put(this.val$animationName, eVar);
            } else if (cVar == c.Weak) {
                LottieAnimationView.WEAK_REF_CACHE.put(this.val$animationName, new WeakReference(eVar));
            }
            LottieAnimationView.this.setComposition(eVar);
        }
    }

    public enum c {
        None,
        Weak,
        Strong
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.loadedListener = new a();
        this.lottieDrawable = new f();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        j(null);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.airbnb.lottie", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public void setAnimation(String str) {
        p(str, this.defaultCacheStrategy);
    }

    private void g() {
        com.airbnb.lottie.a aVar = this.compositionLoader;
        if (aVar != null) {
            aVar.cancel();
            this.compositionLoader = null;
        }
    }

    private void i() {
        setLayerType((this.useHardwareLayer && this.lottieDrawable.x()) ? 2 : 1, null);
    }

    public void cancelAnimation() {
        this.lottieDrawable.h();
        i();
    }

    public void f(@Nullable ColorFilter colorFilter) {
        this.lottieDrawable.d(colorFilter);
    }

    public long getDuration() {
        e eVar = this.composition;
        if (eVar != null) {
            return eVar.k();
        }
        return 0L;
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.lottieDrawable.q();
    }

    @Nullable
    public i getPerformanceTracker() {
        return this.lottieDrawable.s();
    }

    @FloatRange
    public float getProgress() {
        return this.lottieDrawable.t();
    }

    public float getScale() {
        return this.lottieDrawable.u();
    }

    public void h(boolean z6) {
        this.lottieDrawable.j(z6);
    }

    public boolean k() {
        return this.lottieDrawable.x();
    }

    public void l(boolean z6) {
        this.lottieDrawable.z(z6);
    }

    public void m() {
        this.lottieDrawable.A();
        i();
    }

    @VisibleForTesting
    void n() {
        f fVar = this.lottieDrawable;
        if (fVar != null) {
            fVar.C();
        }
    }

    public void o() {
        this.lottieDrawable.D();
        i();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.animationName;
        this.animationName = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.animationName);
        }
        setProgress(savedState.progress);
        l(savedState.isLooping);
        if (savedState.isAnimating) {
            m();
        }
        this.lottieDrawable.H(savedState.imageAssetsFolder);
    }

    public void p(String str, c cVar) {
        this.animationName = str;
        Map<String, WeakReference<e>> map = WEAK_REF_CACHE;
        if (map.containsKey(str)) {
            e eVar = map.get(str).get();
            if (eVar != null) {
                setComposition(eVar);
                return;
            }
        } else {
            Map<String, e> map2 = STRONG_REF_CACHE;
            if (map2.containsKey(str)) {
                setComposition(map2.get(str));
                return;
            }
        }
        this.animationName = str;
        this.lottieDrawable.h();
        g();
        this.compositionLoader = e.b.b(getContext(), str, new b(cVar, str));
    }

    public void setAnimation(JSONObject jSONObject) {
        g();
        this.compositionLoader = e.b.e(getResources(), jSONObject, this.loadedListener);
    }

    public void setComposition(@NonNull e eVar) {
        this.lottieDrawable.setCallback(this);
        boolean zE = this.lottieDrawable.E(eVar);
        i();
        if (zE) {
            setImageDrawable(null);
            setImageDrawable(this.lottieDrawable);
            this.composition = eVar;
            requestLayout();
        }
    }

    public void setFontAssetDelegate(com.airbnb.lottie.b bVar) {
        this.lottieDrawable.F(bVar);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.c cVar) {
        this.lottieDrawable.G(cVar);
    }

    public void setImageAssetsFolder(String str) {
        this.lottieDrawable.H(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (drawable != this.lottieDrawable) {
            n();
        }
        g();
        super.setImageDrawable(drawable);
    }

    public void setMaxFrame(int i10) {
        this.lottieDrawable.I(i10);
    }

    public void setMaxProgress(float f) {
        this.lottieDrawable.J(f);
    }

    public void setMinFrame(int i10) {
        this.lottieDrawable.K(i10);
    }

    public void setMinProgress(float f) {
        this.lottieDrawable.L(f);
    }

    public void setPerformanceTrackingEnabled(boolean z6) {
        this.lottieDrawable.M(z6);
    }

    public void setProgress(@FloatRange float f) {
        this.lottieDrawable.N(f);
    }

    public void setScale(float f) {
        this.lottieDrawable.O(f);
        if (getDrawable() == this.lottieDrawable) {
            setImageDrawable(null);
            setImageDrawable(this.lottieDrawable);
        }
    }

    public void setSpeed(float f) {
        this.lottieDrawable.P(f);
    }

    public void setTextDelegate(l lVar) {
        this.lottieDrawable.Q(lVar);
    }

    private void j(@Nullable AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.LottieAnimationView);
        this.defaultCacheStrategy = c.values()[typedArrayObtainStyledAttributes.getInt(j.LottieAnimationView_lottie_cacheStrategy, c.Weak.ordinal())];
        String string = typedArrayObtainStyledAttributes.getString(j.LottieAnimationView_lottie_fileName);
        if (!isInEditMode() && string != null) {
            setAnimation(string);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(j.LottieAnimationView_lottie_autoPlay, false)) {
            this.lottieDrawable.A();
            this.autoPlay = true;
        }
        this.lottieDrawable.z(typedArrayObtainStyledAttributes.getBoolean(j.LottieAnimationView_lottie_loop, false));
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(j.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(typedArrayObtainStyledAttributes.getFloat(j.LottieAnimationView_lottie_progress, 0.0f));
        h(typedArrayObtainStyledAttributes.getBoolean(j.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        int i10 = j.LottieAnimationView_lottie_colorFilter;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            f(new k(typedArrayObtainStyledAttributes.getColor(i10, 0)));
        }
        int i11 = j.LottieAnimationView_lottie_scale;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.lottieDrawable.O(typedArrayObtainStyledAttributes.getFloat(i11, 1.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (com.airbnb.lottie.utils.f.e(getContext()) == 0.0f) {
            this.lottieDrawable.R();
        }
        i();
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        f fVar = this.lottieDrawable;
        if (drawable2 == fVar) {
            super.invalidateDrawable(fVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autoPlay && this.wasAnimatingWhenDetached) {
            m();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (k()) {
            cancelAnimation();
            this.wasAnimatingWhenDetached = true;
        }
        n();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.animationName;
        savedState.progress = this.lottieDrawable.t();
        savedState.isAnimating = this.lottieDrawable.x();
        savedState.isLooping = this.lottieDrawable.y();
        savedState.imageAssetsFolder = this.lottieDrawable.q();
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        n();
        g();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        n();
        g();
        super.setImageResource(i10);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loadedListener = new a();
        this.lottieDrawable = new f();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        j(attributeSet);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.loadedListener = new a();
        this.lottieDrawable = new f();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        j(attributeSet);
    }
}
