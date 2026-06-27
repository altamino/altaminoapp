package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.FileCompositionLoader;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.JsonCompositionLoader;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Utils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
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
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class LottieComposition {
    private final Rect bounds;
    private final SparseArrayCompat<FontCharacter> characters;
    private final float dpScale;
    private final long endFrame;
    private final Map<String, Font> fonts;
    private final float frameRate;
    private final Map<String, LottieImageAsset> images;
    private final LongSparseArray<Layer> layerMap;
    private final List<Layer> layers;
    private final int majorVersion;
    private final int minorVersion;
    private final int patchVersion;
    private final PerformanceTracker performanceTracker;
    private final Map<String, List<Layer>> precomps;
    private final long startFrame;
    private final HashSet<String> warnings;

    private LottieComposition(Rect rect, long j, long j2, float f, float f2, int i, int i2, int i3) {
        this.precomps = new HashMap();
        this.images = new HashMap();
        this.fonts = new HashMap();
        this.characters = new SparseArrayCompat<>();
        this.layerMap = new LongSparseArray<>();
        this.layers = new ArrayList();
        this.warnings = new HashSet<>();
        this.performanceTracker = new PerformanceTracker();
        this.bounds = rect;
        this.startFrame = j;
        this.endFrame = j2;
        this.frameRate = f;
        this.dpScale = f2;
        this.majorVersion = i;
        this.minorVersion = i2;
        this.patchVersion = i3;
        if (Utils.isAtLeastVersion(this, 4, 5, 0)) {
            return;
        }
        addWarning("Lottie only supports bodymovin >= 4.5.0");
    }

    public void addWarning(String str) {
        Log.w(L.TAG, str);
        this.warnings.add(str);
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.performanceTracker.setEnabled(z);
    }

    public PerformanceTracker getPerformanceTracker() {
        return this.performanceTracker;
    }

    public Layer layerModelForId(long j) {
        return this.layerMap.get(j);
    }

    public Rect getBounds() {
        return this.bounds;
    }

    public long getDuration() {
        return (long) (((this.endFrame - this.startFrame) / this.frameRate) * 1000.0f);
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public int getMinorVersion() {
        return this.minorVersion;
    }

    public int getPatchVersion() {
        return this.patchVersion;
    }

    public long getStartFrame() {
        return this.startFrame;
    }

    public long getEndFrame() {
        return this.endFrame;
    }

    public List<Layer> getLayers() {
        return this.layers;
    }

    public List<Layer> getPrecomps(String str) {
        return this.precomps.get(str);
    }

    public SparseArrayCompat<FontCharacter> getCharacters() {
        return this.characters;
    }

    public Map<String, Font> getFonts() {
        return this.fonts;
    }

    Map<String, LottieImageAsset> getImages() {
        return this.images;
    }

    public float getDurationFrames() {
        return (getDuration() * this.frameRate) / 1000.0f;
    }

    public float getDpScale() {
        return this.dpScale;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator<Layer> it = this.layers.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString("\t"));
        }
        return sb.toString();
    }

    public static class Factory {
        public static Cancellable fromAssetFileName(Context context, String str, OnCompositionLoadedListener onCompositionLoadedListener) {
            try {
                return fromInputStream(context, context.getAssets().open(str), onCompositionLoadedListener);
            } catch (IOException e) {
                throw new IllegalStateException("Unable to find file " + str, e);
            }
        }

        public static Cancellable fromInputStream(Context context, InputStream inputStream, OnCompositionLoadedListener onCompositionLoadedListener) {
            FileCompositionLoader fileCompositionLoader = new FileCompositionLoader(context.getResources(), onCompositionLoadedListener);
            fileCompositionLoader.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, inputStream);
            return fileCompositionLoader;
        }

        public static Cancellable fromJson(Resources resources, JSONObject jSONObject, OnCompositionLoadedListener onCompositionLoadedListener) {
            JsonCompositionLoader jsonCompositionLoader = new JsonCompositionLoader(resources, onCompositionLoadedListener);
            jsonCompositionLoader.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, jSONObject);
            return jsonCompositionLoader;
        }

        public static LottieComposition fromInputStream(Resources resources, InputStream inputStream) {
            try {
                try {
                    try {
                        byte[] bArr = new byte[inputStream.available()];
                        inputStream.read(bArr);
                        return fromJsonSync(resources, new JSONObject(new String(bArr, C.UTF8_NAME)));
                    } catch (JSONException e) {
                        Log.e(L.TAG, "Failed to load composition.", new IllegalStateException("Unable to load JSON.", e));
                        Utils.closeQuietly(inputStream);
                        return null;
                    }
                } catch (IOException e2) {
                    Log.e(L.TAG, "Failed to load composition.", new IllegalStateException("Unable to find file.", e2));
                    Utils.closeQuietly(inputStream);
                    return null;
                }
            } finally {
                Utils.closeQuietly(inputStream);
            }
        }

        public static LottieComposition fromJsonSync(Resources resources, JSONObject jSONObject) {
            float f = resources.getDisplayMetrics().density;
            int iOptInt = jSONObject.optInt("w", -1);
            int iOptInt2 = jSONObject.optInt("h", -1);
            Rect rect = (iOptInt == -1 || iOptInt2 == -1) ? null : new Rect(0, 0, (int) (iOptInt * f), (int) (iOptInt2 * f));
            long jOptLong = jSONObject.optLong(IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, 0L);
            long jOptLong2 = jSONObject.optLong("op", 0L);
            float fOptDouble = (float) jSONObject.optDouble("fr", 0.0d);
            String[] strArrSplit = jSONObject.optString("v").split("[.]");
            LottieComposition lottieComposition = new LottieComposition(rect, jOptLong, jOptLong2, fOptDouble, f, Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("assets");
            parseImages(jSONArrayOptJSONArray, lottieComposition);
            parsePrecomps(jSONArrayOptJSONArray, lottieComposition);
            parseFonts(jSONObject.optJSONObject("fonts"), lottieComposition);
            parseChars(jSONObject.optJSONArray("chars"), lottieComposition);
            parseLayers(jSONObject, lottieComposition);
            return lottieComposition;
        }

        private static void parseLayers(JSONObject jSONObject, LottieComposition lottieComposition) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("layers");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                Layer layerNewInstance = Layer.Factory.newInstance(jSONArrayOptJSONArray.optJSONObject(i2), lottieComposition);
                if (layerNewInstance.getLayerType() == Layer.LayerType.Image) {
                    i++;
                }
                addLayer(lottieComposition.layers, lottieComposition.layerMap, layerNewInstance);
            }
            if (i > 4) {
                lottieComposition.addWarning("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }

        private static void parsePrecomps(JSONArray jSONArray, LottieComposition lottieComposition) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("layers");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                    LongSparseArray longSparseArray = new LongSparseArray();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        Layer layerNewInstance = Layer.Factory.newInstance(jSONArrayOptJSONArray.optJSONObject(i2), lottieComposition);
                        longSparseArray.put(layerNewInstance.getId(), layerNewInstance);
                        arrayList.add(layerNewInstance);
                    }
                    lottieComposition.precomps.put(jSONObjectOptJSONObject.optString("id"), arrayList);
                }
            }
        }

        private static void parseImages(JSONArray jSONArray, LottieComposition lottieComposition) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject.has(TtmlNode.TAG_P)) {
                    LottieImageAsset lottieImageAssetNewInstance = LottieImageAsset.Factory.newInstance(jSONObjectOptJSONObject);
                    lottieComposition.images.put(lottieImageAssetNewInstance.getId(), lottieImageAssetNewInstance);
                }
            }
        }

        private static void parseFonts(JSONObject jSONObject, LottieComposition lottieComposition) {
            JSONArray jSONArrayOptJSONArray;
            if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("list")) == null) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                Font fontNewInstance = Font.Factory.newInstance(jSONArrayOptJSONArray.optJSONObject(i));
                lottieComposition.fonts.put(fontNewInstance.getName(), fontNewInstance);
            }
        }

        private static void parseChars(JSONArray jSONArray, LottieComposition lottieComposition) {
            if (jSONArray == null) {
                return;
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                FontCharacter fontCharacterNewInstance = FontCharacter.Factory.newInstance(jSONArray.optJSONObject(i), lottieComposition);
                lottieComposition.characters.put(fontCharacterNewInstance.hashCode(), fontCharacterNewInstance);
            }
        }

        private static void addLayer(List<Layer> list, LongSparseArray<Layer> longSparseArray, Layer layer) {
            list.add(layer);
            longSparseArray.put(layer.getId(), layer);
        }
    }
}
