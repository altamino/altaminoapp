package h0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.e;
import com.airbnb.lottie.model.animatable.m;
import com.airbnb.lottie.utils.b;
import com.airbnb.lottie.utils.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a<T> {
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final float MAX_CP_VALUE = 100.0f;
    private final e composition;

    @Nullable
    public Float endFrame;

    @Nullable
    public final T endValue;

    @Nullable
    public final Interpolator interpolator;
    public final float startFrame;

    @Nullable
    public final T startValue;
    private float startProgress = Float.MIN_VALUE;
    private float endProgress = Float.MIN_VALUE;

    /* JADX INFO: renamed from: h0.a$a, reason: collision with other inner class name */
    public static class C0382a {
        private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache;

        @Nullable
        private static WeakReference<Interpolator> a(int i10) {
            WeakReference<Interpolator> weakReferenceJ;
            synchronized (C0382a.class) {
                weakReferenceJ = d().j(i10);
            }
            return weakReferenceJ;
        }

        private static SparseArrayCompat<WeakReference<Interpolator>> d() {
            if (pathInterpolatorCache == null) {
                pathInterpolatorCache = new SparseArrayCompat<>();
            }
            return pathInterpolatorCache;
        }

        private static void e(int i10, WeakReference<Interpolator> weakReference) {
            synchronized (C0382a.class) {
                pathInterpolatorCache.o(i10, weakReference);
            }
        }

        private C0382a() {
        }

        public static <T> a<T> b(JSONObject jSONObject, e eVar, float f, m.a<T> aVar) {
            float f6;
            T tA;
            T t5;
            T tA2;
            T tA3;
            PointF pointFB;
            PointF pointFB2;
            Interpolator interpolatorA = null;
            if (jSONObject.has("t")) {
                float fOptDouble = (float) jSONObject.optDouble("t", com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                Object objOpt = jSONObject.opt(CmcdHeadersFactory.STREAMING_FORMAT_SS);
                if (objOpt != null) {
                    tA2 = aVar.a(objOpt, f);
                } else {
                    tA2 = null;
                }
                Object objOpt2 = jSONObject.opt("e");
                if (objOpt2 != null) {
                    tA3 = aVar.a(objOpt2, f);
                } else {
                    tA3 = null;
                }
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("o");
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null) {
                    pointFB = b.b(jSONObjectOptJSONObject, f);
                    pointFB2 = b.b(jSONObjectOptJSONObject2, f);
                } else {
                    pointFB = null;
                    pointFB2 = null;
                }
                if (jSONObject.optInt(CmcdHeadersFactory.STREAMING_FORMAT_HLS, 0) == 1) {
                    interpolatorA = a.LINEAR_INTERPOLATOR;
                    tA3 = tA2;
                } else if (pointFB == null) {
                    interpolatorA = a.LINEAR_INTERPOLATOR;
                } else {
                    float f7 = -f;
                    pointFB.x = com.airbnb.lottie.utils.e.b(pointFB.x, f7, f);
                    pointFB.y = com.airbnb.lottie.utils.e.b(pointFB.y, -100.0f, 100.0f);
                    pointFB2.x = com.airbnb.lottie.utils.e.b(pointFB2.x, f7, f);
                    float fB = com.airbnb.lottie.utils.e.b(pointFB2.y, -100.0f, 100.0f);
                    pointFB2.y = fB;
                    int iG = f.g(pointFB.x, pointFB.y, pointFB2.x, fB);
                    WeakReference<Interpolator> weakReferenceA = a(iG);
                    if (weakReferenceA != null) {
                        interpolatorA = weakReferenceA.get();
                    }
                    if (weakReferenceA == null || interpolatorA == null) {
                        interpolatorA = PathInterpolatorCompat.a(pointFB.x / f, pointFB.y / f, pointFB2.x / f, pointFB2.y / f);
                        try {
                            e(iG, new WeakReference(interpolatorA));
                        } catch (ArrayIndexOutOfBoundsException unused) {
                        }
                    }
                }
                t5 = tA3;
                f6 = fOptDouble;
                tA = tA2;
            } else {
                f6 = 0.0f;
                tA = aVar.a(jSONObject, f);
                t5 = tA;
            }
            return new a<>(eVar, tA, t5, interpolatorA, f6, null);
        }

        public static <T> List<a<T>> c(JSONArray jSONArray, e eVar, float f, m.a<T> aVar) {
            int length = jSONArray.length();
            if (length == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(b(jSONArray.optJSONObject(i10), eVar, f, aVar));
            }
            a.f(arrayList);
            return arrayList;
        }
    }

    public boolean e() {
        return this.interpolator == null;
    }

    public float c() {
        if (this.endProgress == Float.MIN_VALUE) {
            if (this.endFrame == null) {
                this.endProgress = 1.0f;
            } else {
                this.endProgress = d() + ((this.endFrame.floatValue() - this.startFrame) / this.composition.l());
            }
        }
        return this.endProgress;
    }

    public float d() {
        if (this.startProgress == Float.MIN_VALUE) {
            this.startProgress = (this.startFrame - this.composition.v()) / this.composition.l();
        }
        return this.startProgress;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.startValue + ", endValue=" + this.endValue + ", startFrame=" + this.startFrame + ", endFrame=" + this.endFrame + ", interpolator=" + this.interpolator + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public a(e eVar, @Nullable T t5, @Nullable T t10, @Nullable Interpolator interpolator, float f, @Nullable Float f6) {
        this.composition = eVar;
        this.startValue = t5;
        this.endValue = t10;
        this.interpolator = interpolator;
        this.startFrame = f;
        this.endFrame = f6;
    }

    public static void f(List<? extends a<?>> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            a<?> aVar = list.get(i11);
            i11++;
            aVar.endFrame = Float.valueOf(list.get(i11).startFrame);
        }
        a<?> aVar2 = list.get(i10);
        if (aVar2.startValue == null) {
            list.remove(aVar2);
        }
    }

    public boolean b(@FloatRange float f) {
        if (f >= d() && f <= c()) {
            return true;
        }
        return false;
    }
}
