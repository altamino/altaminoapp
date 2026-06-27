package com.airbnb.lottie.animation;

import android.graphics.PointF;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.JsonUtils;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Keyframe<T> {
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final float MAX_CP_VALUE = 100.0f;
    private final LottieComposition composition;
    public Float endFrame;
    public final T endValue;
    public final Interpolator interpolator;
    public final float startFrame;
    public final T startValue;
    private float startProgress = Float.MIN_VALUE;
    private float endProgress = Float.MIN_VALUE;

    public static void setEndFrames(List<? extends Keyframe<?>> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            Keyframe<?> keyframe = list.get(i2);
            i2++;
            keyframe.endFrame = Float.valueOf(list.get(i2).startFrame);
        }
        Keyframe<?> keyframe2 = list.get(i);
        if (keyframe2.startValue == null) {
            list.remove(keyframe2);
        }
    }

    public Keyframe(LottieComposition lottieComposition, T t, T t2, Interpolator interpolator, float f, Float f2) {
        this.composition = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public float getStartProgress() {
        if (this.startProgress == Float.MIN_VALUE) {
            this.startProgress = (this.startFrame - this.composition.getStartFrame()) / this.composition.getDurationFrames();
        }
        return this.startProgress;
    }

    public float getEndProgress() {
        if (this.endProgress == Float.MIN_VALUE) {
            if (this.endFrame == null) {
                this.endProgress = 1.0f;
            } else {
                this.endProgress = getStartProgress() + ((this.endFrame.floatValue() - this.startFrame) / this.composition.getDurationFrames());
            }
        }
        return this.endProgress;
    }

    public boolean isStatic() {
        return this.interpolator == null;
    }

    public boolean containsProgress(float f) {
        return f >= getStartProgress() && f <= getEndProgress();
    }

    public String toString() {
        return "Keyframe{startValue=" + this.startValue + ", endValue=" + this.endValue + ", startFrame=" + this.startFrame + ", endFrame=" + this.endFrame + ", interpolator=" + this.interpolator + '}';
    }

    public static class Factory {
        private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache;

        private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache() {
            if (pathInterpolatorCache == null) {
                pathInterpolatorCache = new SparseArrayCompat<>();
            }
            return pathInterpolatorCache;
        }

        private static WeakReference<Interpolator> getInterpolator(int i) {
            WeakReference<Interpolator> weakReference;
            synchronized (Factory.class) {
                weakReference = pathInterpolatorCache().get(i);
            }
            return weakReference;
        }

        private static void putInterpolator(int i, WeakReference<Interpolator> weakReference) {
            synchronized (Factory.class) {
                pathInterpolatorCache.put(i, weakReference);
            }
        }

        private Factory() {
        }

        public static <T> Keyframe<T> newInstance(JSONObject jSONObject, LottieComposition lottieComposition, float f, AnimatableValue.Factory<T> factory) {
            T tValueFromObject;
            T t;
            Interpolator interpolator;
            float f2;
            PointF pointFPointFromJsonObject;
            PointF pointFPointFromJsonObject2;
            Interpolator interpolatorCreate;
            if (jSONObject.has("t")) {
                float fOptDouble = (float) jSONObject.optDouble("t", 0.0d);
                Object objOpt = jSONObject.opt("s");
                T tValueFromObject2 = objOpt != null ? factory.valueFromObject(objOpt, f) : null;
                Object objOpt2 = jSONObject.opt("e");
                T tValueFromObject3 = objOpt2 != null ? factory.valueFromObject(objOpt2, f) : null;
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("o");
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("i");
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject2 == null) {
                    pointFPointFromJsonObject = null;
                    pointFPointFromJsonObject2 = null;
                } else {
                    pointFPointFromJsonObject = JsonUtils.pointFromJsonObject(jSONObjectOptJSONObject, f);
                    pointFPointFromJsonObject2 = JsonUtils.pointFromJsonObject(jSONObjectOptJSONObject2, f);
                }
                if (jSONObject.optInt("h", 0) == 1) {
                    interpolatorCreate = Keyframe.LINEAR_INTERPOLATOR;
                    tValueFromObject3 = tValueFromObject2;
                } else if (pointFPointFromJsonObject == null) {
                    interpolatorCreate = Keyframe.LINEAR_INTERPOLATOR;
                } else {
                    float f3 = -f;
                    pointFPointFromJsonObject.x = MiscUtils.clamp(pointFPointFromJsonObject.x, f3, f);
                    pointFPointFromJsonObject.y = MiscUtils.clamp(pointFPointFromJsonObject.y, -100.0f, 100.0f);
                    pointFPointFromJsonObject2.x = MiscUtils.clamp(pointFPointFromJsonObject2.x, f3, f);
                    pointFPointFromJsonObject2.y = MiscUtils.clamp(pointFPointFromJsonObject2.y, -100.0f, 100.0f);
                    int iHashFor = Utils.hashFor(pointFPointFromJsonObject.x, pointFPointFromJsonObject.y, pointFPointFromJsonObject2.x, pointFPointFromJsonObject2.y);
                    WeakReference<Interpolator> interpolator2 = getInterpolator(iHashFor);
                    interpolatorCreate = interpolator2 != null ? interpolator2.get() : null;
                    if (interpolator2 == null || interpolatorCreate == null) {
                        interpolatorCreate = PathInterpolatorCompat.create(pointFPointFromJsonObject.x / f, pointFPointFromJsonObject.y / f, pointFPointFromJsonObject2.x / f, pointFPointFromJsonObject2.y / f);
                        try {
                            putInterpolator(iHashFor, new WeakReference(interpolatorCreate));
                        } catch (ArrayIndexOutOfBoundsException unused) {
                        }
                    }
                }
                t = tValueFromObject3;
                f2 = fOptDouble;
                tValueFromObject = tValueFromObject2;
                interpolator = interpolatorCreate;
            } else {
                tValueFromObject = factory.valueFromObject(jSONObject, f);
                t = tValueFromObject;
                interpolator = null;
                f2 = 0.0f;
            }
            return new Keyframe<>(lottieComposition, tValueFromObject, t, interpolator, f2, null);
        }

        public static <T> List<Keyframe<T>> parseKeyframes(JSONArray jSONArray, LottieComposition lottieComposition, float f, AnimatableValue.Factory<T> factory) {
            int length = jSONArray.length();
            if (length == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < length; i++) {
                arrayList.add(newInstance(jSONArray.optJSONObject(i), lottieComposition, f, factory));
            }
            Keyframe.setEndFrames(arrayList);
            return arrayList;
        }
    }
}
