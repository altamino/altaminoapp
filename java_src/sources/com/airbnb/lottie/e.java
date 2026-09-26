package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class e {
    private final Rect bounds;
    private final SparseArrayCompat<com.airbnb.lottie.model.g> characters;
    private final float dpScale;
    private final long endFrame;
    private final Map<String, com.airbnb.lottie.model.f> fonts;
    private final float frameRate;
    private final Map<String, g> images;
    private final LongSparseArray<com.airbnb.lottie.model.layer.d> layerMap;
    private final List<com.airbnb.lottie.model.layer.d> layers;
    private final int majorVersion;
    private final int minorVersion;
    private final int patchVersion;
    private final i performanceTracker;
    private final Map<String, List<com.airbnb.lottie.model.layer.d>> precomps;
    private final long startFrame;
    private final HashSet<String> warnings;

    public static class b {
        public static com.airbnb.lottie.a c(Context context, InputStream inputStream, h hVar) {
            com.airbnb.lottie.model.e eVar = new com.airbnb.lottie.model.e(context.getResources(), hVar);
            eVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, inputStream);
            return eVar;
        }

        @Nullable
        public static e d(Resources resources, InputStream inputStream) {
            try {
                byte[] bArr = new byte[inputStream.available()];
                inputStream.read(bArr);
                return f(resources, new JSONObject(new String(bArr, "UTF-8")));
            } catch (JSONException e) {
                Log.e(d.TAG, "Failed to load composition.", new IllegalStateException("Unable to load JSON.", e));
                return null;
            } catch (IOException e2) {
                Log.e(d.TAG, "Failed to load composition.", new IllegalStateException("Unable to find file.", e2));
                return null;
            } finally {
                com.airbnb.lottie.utils.f.c(inputStream);
            }
        }

        public static com.airbnb.lottie.a e(Resources resources, JSONObject jSONObject, h hVar) {
            com.airbnb.lottie.model.h hVar2 = new com.airbnb.lottie.model.h(resources, hVar);
            hVar2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, jSONObject);
            return hVar2;
        }

        public static e f(Resources resources, JSONObject jSONObject) {
            float f = resources.getDisplayMetrics().density;
            int iOptInt = jSONObject.optInt("w", -1);
            int iOptInt2 = jSONObject.optInt(CmcdHeadersFactory.STREAMING_FORMAT_HLS, -1);
            Rect rect = (iOptInt == -1 || iOptInt2 == -1) ? null : new Rect(0, 0, (int) (iOptInt * f), (int) (iOptInt2 * f));
            long jOptLong = jSONObject.optLong("ip", 0L);
            long jOptLong2 = jSONObject.optLong("op", 0L);
            float fOptDouble = (float) jSONObject.optDouble("fr", com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
            String[] strArrSplit = jSONObject.optString("v").split("[.]");
            e eVar = new e(rect, jOptLong, jOptLong2, fOptDouble, f, Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("assets");
            i(jSONArrayOptJSONArray, eVar);
            k(jSONArrayOptJSONArray, eVar);
            h(jSONObject.optJSONObject("fonts"), eVar);
            g(jSONObject.optJSONArray("chars"), eVar);
            j(jSONObject, eVar);
            return eVar;
        }

        private static void g(@Nullable JSONArray jSONArray, e eVar) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                com.airbnb.lottie.model.g gVarA = com.airbnb.lottie.model.g.a.a(jSONArray.optJSONObject(i10), eVar);
                eVar.characters.o(gVarA.hashCode(), gVarA);
            }
        }

        private static void h(@Nullable JSONObject jSONObject, e eVar) {
            JSONArray jSONArrayOptJSONArray;
            if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("list")) == null) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                com.airbnb.lottie.model.f fVarA = com.airbnb.lottie.model.f.a.a(jSONArrayOptJSONArray.optJSONObject(i10));
                eVar.fonts.put(fVarA.b(), fVarA);
            }
        }

        private static void i(@Nullable JSONArray jSONArray, e eVar) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject.has("p")) {
                    g gVarA = g.b.a(jSONObjectOptJSONObject);
                    eVar.images.put(gVarA.b(), gVarA);
                }
            }
        }

        private static void j(JSONObject jSONObject, e eVar) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("layers");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                com.airbnb.lottie.model.layer.d dVarB = com.airbnb.lottie.model.layer.d.b.b(jSONArrayOptJSONArray.optJSONObject(i11), eVar);
                if (dVarB.d() == com.airbnb.lottie.model.layer.d.c.Image) {
                    i10++;
                }
                a(eVar.layers, eVar.layerMap, dVarB);
            }
            if (i10 > 4) {
                eVar.g("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }

        private static void k(@Nullable JSONArray jSONArray, e eVar) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("layers");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                    LongSparseArray longSparseArray = new LongSparseArray();
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                        com.airbnb.lottie.model.layer.d dVarB = com.airbnb.lottie.model.layer.d.b.b(jSONArrayOptJSONArray.optJSONObject(i11), eVar);
                        longSparseArray.m(dVarB.b(), dVarB);
                        arrayList.add(dVarB);
                    }
                    eVar.precomps.put(jSONObjectOptJSONObject.optString("id"), arrayList);
                }
            }
        }

        private static void a(List<com.airbnb.lottie.model.layer.d> list, LongSparseArray<com.airbnb.lottie.model.layer.d> longSparseArray, com.airbnb.lottie.model.layer.d dVar) {
            list.add(dVar);
            longSparseArray.m(dVar.b(), dVar);
        }

        public static com.airbnb.lottie.a b(Context context, String str, h hVar) {
            try {
                return c(context, context.getAssets().open(str), hVar);
            } catch (IOException e) {
                throw new IllegalStateException("Unable to find file " + str, e);
            }
        }
    }

    public Rect h() {
        return this.bounds;
    }

    public SparseArrayCompat<com.airbnb.lottie.model.g> i() {
        return this.characters;
    }

    public float j() {
        return this.dpScale;
    }

    public long k() {
        return (long) (((this.endFrame - this.startFrame) / this.frameRate) * 1000.0f);
    }

    @RestrictTo
    public long m() {
        return this.endFrame;
    }

    public Map<String, com.airbnb.lottie.model.f> n() {
        return this.fonts;
    }

    Map<String, g> o() {
        return this.images;
    }

    public List<com.airbnb.lottie.model.layer.d> p() {
        return this.layers;
    }

    @RestrictTo
    public int q() {
        return this.majorVersion;
    }

    @RestrictTo
    public int r() {
        return this.minorVersion;
    }

    @RestrictTo
    public int s() {
        return this.patchVersion;
    }

    public i t() {
        return this.performanceTracker;
    }

    @RestrictTo
    public long v() {
        return this.startFrame;
    }

    private e(Rect rect, long j6, long j10, float f, float f6, int i10, int i11, int i12) {
        this.precomps = new HashMap();
        this.images = new HashMap();
        this.fonts = new HashMap();
        this.characters = new SparseArrayCompat<>();
        this.layerMap = new LongSparseArray<>();
        this.layers = new ArrayList();
        this.warnings = new HashSet<>();
        this.performanceTracker = new i();
        this.bounds = rect;
        this.startFrame = j6;
        this.endFrame = j10;
        this.frameRate = f;
        this.dpScale = f6;
        this.majorVersion = i10;
        this.minorVersion = i11;
        this.patchVersion = i12;
        if (com.airbnb.lottie.utils.f.h(this, 4, 5, 0)) {
            return;
        }
        g("Lottie only supports bodymovin >= 4.5.0");
    }

    @RestrictTo
    public void g(String str) {
        Log.w(d.TAG, str);
        this.warnings.add(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator<com.airbnb.lottie.model.layer.d> it = this.layers.iterator();
        while (it.hasNext()) {
            sb.append(it.next().v("\t"));
        }
        return sb.toString();
    }

    @Nullable
    @RestrictTo
    public List<com.airbnb.lottie.model.layer.d> u(String str) {
        return this.precomps.get(str);
    }

    @RestrictTo
    public com.airbnb.lottie.model.layer.d w(long j6) {
        return this.layerMap.h(j6);
    }

    public void x(boolean z6) {
        this.performanceTracker.b(z6);
    }

    public float l() {
        return (k() * this.frameRate) / 1000.0f;
    }
}
