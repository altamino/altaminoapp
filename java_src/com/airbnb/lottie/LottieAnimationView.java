package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.AppCompatImageView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    private String animationName;
    private boolean autoPlay;
    private LottieComposition composition;
    private Cancellable compositionLoader;
    private CacheStrategy defaultCacheStrategy;
    private final OnCompositionLoadedListener loadedListener;
    private final LottieDrawable lottieDrawable;
    private boolean useHardwareLayer;
    private boolean wasAnimatingWhenDetached;
    private static final String TAG = LottieAnimationView.class.getSimpleName();
    private static final Map<String, LottieComposition> STRONG_REF_CACHE = new HashMap();
    private static final Map<String, WeakReference<LottieComposition>> WEAK_REF_CACHE = new HashMap();

    public enum CacheStrategy {
        None,
        Weak,
        Strong
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.loadedListener = new OnCompositionLoadedListener() { // from class: com.airbnb.lottie.LottieAnimationView.1
            @Override // com.airbnb.lottie.OnCompositionLoadedListener
            public void onCompositionLoaded(LottieComposition lottieComposition) {
                if (lottieComposition != null) {
                    LottieAnimationView.this.setComposition(lottieComposition);
                }
                LottieAnimationView.this.compositionLoader = null;
            }
        };
        this.lottieDrawable = new LottieDrawable();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        init(null);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loadedListener = new OnCompositionLoadedListener() { // from class: com.airbnb.lottie.LottieAnimationView.1
            @Override // com.airbnb.lottie.OnCompositionLoadedListener
            public void onCompositionLoaded(LottieComposition lottieComposition) {
                if (lottieComposition != null) {
                    LottieAnimationView.this.setComposition(lottieComposition);
                }
                LottieAnimationView.this.compositionLoader = null;
            }
        };
        this.lottieDrawable = new LottieDrawable();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        init(attributeSet);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.loadedListener = new OnCompositionLoadedListener() { // from class: com.airbnb.lottie.LottieAnimationView.1
            @Override // com.airbnb.lottie.OnCompositionLoadedListener
            public void onCompositionLoaded(LottieComposition lottieComposition) {
                if (lottieComposition != null) {
                    LottieAnimationView.this.setComposition(lottieComposition);
                }
                LottieAnimationView.this.compositionLoader = null;
            }
        };
        this.lottieDrawable = new LottieDrawable();
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.useHardwareLayer = false;
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView);
        this.defaultCacheStrategy = CacheStrategy.values()[typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_cacheStrategy, CacheStrategy.Weak.ordinal())];
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_fileName);
        if (!isInEditMode() && string != null) {
            setAnimation(string);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.lottieDrawable.playAnimation();
            this.autoPlay = true;
        }
        this.lottieDrawable.loop(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false));
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_colorFilter)) {
            addColorFilter(new SimpleColorFilter(typedArrayObtainStyledAttributes.getColor(R$styleable.LottieAnimationView_lottie_colorFilter, 0)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_scale)) {
            this.lottieDrawable.setScale(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_scale, 1.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (Utils.getAnimationScale(getContext()) == 0.0f) {
            this.lottieDrawable.systemAnimationsAreDisabled();
        }
        enableOrDisableHardwareLayer();
    }

    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        recycleBitmaps();
        cancelLoaderTask();
        super.setImageResource(i);
    }

    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (drawable != this.lottieDrawable) {
            recycleBitmaps();
        }
        cancelLoaderTask();
        super.setImageDrawable(drawable);
    }

    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        recycleBitmaps();
        cancelLoaderTask();
        super.setImageBitmap(bitmap);
    }

    public void addColorFilter(ColorFilter colorFilter) {
        this.lottieDrawable.addColorFilter(colorFilter);
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.animationName;
        savedState.progress = this.lottieDrawable.getProgress();
        savedState.isAnimating = this.lottieDrawable.isAnimating();
        savedState.isLooping = this.lottieDrawable.isLooping();
        savedState.imageAssetsFolder = this.lottieDrawable.getImageAssetsFolder();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.animationName = savedState.animationName;
        if (!TextUtils.isEmpty(this.animationName)) {
            setAnimation(this.animationName);
        }
        setProgress(savedState.progress);
        loop(savedState.isLooping);
        if (savedState.isAnimating) {
            playAnimation();
        }
        this.lottieDrawable.setImagesAssetsFolder(savedState.imageAssetsFolder);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autoPlay && this.wasAnimatingWhenDetached) {
            playAnimation();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (isAnimating()) {
            cancelAnimation();
            this.wasAnimatingWhenDetached = true;
        }
        recycleBitmaps();
        super.onDetachedFromWindow();
    }

    void recycleBitmaps() {
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (lottieDrawable != null) {
            lottieDrawable.recycleBitmaps();
        }
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        this.lottieDrawable.enableMergePathsForKitKatAndAbove(z);
    }

    public void setAnimation(String str) {
        setAnimation(str, this.defaultCacheStrategy);
    }

    public void setAnimation(final String str, final CacheStrategy cacheStrategy) {
        this.animationName = str;
        if (WEAK_REF_CACHE.containsKey(str)) {
            LottieComposition lottieComposition = WEAK_REF_CACHE.get(str).get();
            if (lottieComposition != null) {
                setComposition(lottieComposition);
                return;
            }
        } else if (STRONG_REF_CACHE.containsKey(str)) {
            setComposition(STRONG_REF_CACHE.get(str));
            return;
        }
        this.animationName = str;
        this.lottieDrawable.cancelAnimation();
        cancelLoaderTask();
        this.compositionLoader = LottieComposition.Factory.fromAssetFileName(getContext(), str, new OnCompositionLoadedListener() { // from class: com.airbnb.lottie.LottieAnimationView.2
            @Override // com.airbnb.lottie.OnCompositionLoadedListener
            public void onCompositionLoaded(LottieComposition lottieComposition2) {
                CacheStrategy cacheStrategy2 = cacheStrategy;
                if (cacheStrategy2 == CacheStrategy.Strong) {
                    LottieAnimationView.STRONG_REF_CACHE.put(str, lottieComposition2);
                } else if (cacheStrategy2 == CacheStrategy.Weak) {
                    LottieAnimationView.WEAK_REF_CACHE.put(str, new WeakReference(lottieComposition2));
                }
                LottieAnimationView.this.setComposition(lottieComposition2);
            }
        });
    }

    public void setAnimation(JSONObject jSONObject) {
        cancelLoaderTask();
        this.compositionLoader = LottieComposition.Factory.fromJson(getResources(), jSONObject, this.loadedListener);
    }

    private void cancelLoaderTask() {
        Cancellable cancellable = this.compositionLoader;
        if (cancellable != null) {
            cancellable.cancel();
            this.compositionLoader = null;
        }
    }

    public void setComposition(LottieComposition lottieComposition) {
        this.lottieDrawable.setCallback(this);
        boolean composition = this.lottieDrawable.setComposition(lottieComposition);
        enableOrDisableHardwareLayer();
        if (composition) {
            setImageDrawable(null);
            setImageDrawable(this.lottieDrawable);
            this.composition = lottieComposition;
            requestLayout();
        }
    }

    public void loop(boolean z) {
        this.lottieDrawable.loop(z);
    }

    public boolean isAnimating() {
        return this.lottieDrawable.isAnimating();
    }

    public void playAnimation() {
        this.lottieDrawable.playAnimation();
        enableOrDisableHardwareLayer();
    }

    public void resumeAnimation() {
        this.lottieDrawable.resumeAnimation();
        enableOrDisableHardwareLayer();
    }

    public void setMinFrame(int i) {
        this.lottieDrawable.setMinFrame(i);
    }

    public void setMinProgress(float f) {
        this.lottieDrawable.setMinProgress(f);
    }

    public void setMaxFrame(int i) {
        this.lottieDrawable.setMaxFrame(i);
    }

    public void setMaxProgress(float f) {
        this.lottieDrawable.setMaxProgress(f);
    }

    public void setSpeed(float f) {
        this.lottieDrawable.setSpeed(f);
    }

    public void setImageAssetsFolder(String str) {
        this.lottieDrawable.setImagesAssetsFolder(str);
    }

    public String getImageAssetsFolder() {
        return this.lottieDrawable.getImageAssetsFolder();
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.lottieDrawable.setImageAssetDelegate(imageAssetDelegate);
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.lottieDrawable.setFontAssetDelegate(fontAssetDelegate);
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.lottieDrawable.setTextDelegate(textDelegate);
    }

    public void setScale(float f) {
        this.lottieDrawable.setScale(f);
        if (getDrawable() == this.lottieDrawable) {
            setImageDrawable(null);
            setImageDrawable(this.lottieDrawable);
        }
    }

    public float getScale() {
        return this.lottieDrawable.getScale();
    }

    public void cancelAnimation() {
        this.lottieDrawable.cancelAnimation();
        enableOrDisableHardwareLayer();
    }

    public void setProgress(float f) {
        this.lottieDrawable.setProgress(f);
    }

    public float getProgress() {
        return this.lottieDrawable.getProgress();
    }

    public long getDuration() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            return lottieComposition.getDuration();
        }
        return 0L;
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.lottieDrawable.setPerformanceTrackingEnabled(z);
    }

    public PerformanceTracker getPerformanceTracker() {
        return this.lottieDrawable.getPerformanceTracker();
    }

    private void enableOrDisableHardwareLayer() {
        setLayerType(this.useHardwareLayer && this.lottieDrawable.isAnimating() ? 2 : 1, null);
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.airbnb.lottie.LottieAnimationView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        String animationName;
        String imageAssetsFolder;
        boolean isAnimating;
        boolean isLooping;
        float progress;

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
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeInt(this.isLooping ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
        }
    }
}
