package com.airbnb.lottie.model.layer;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.utils.Utils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class Layer {
    private static final String TAG = "Layer";
    private final LottieComposition composition;
    private final List<Keyframe<Float>> inOutKeyframes;
    private final long layerId;
    private final String layerName;
    private final LayerType layerType;
    private final List<Mask> masks;
    private final MatteType matteType;
    private final long parentId;
    private final int preCompHeight;
    private final int preCompWidth;
    private final String refId;
    private final List<ContentModel> shapes;
    private final int solidColor;
    private final int solidHeight;
    private final int solidWidth;
    private final float startProgress;
    private final AnimatableTextFrame text;
    private final AnimatableTextProperties textProperties;
    private final AnimatableFloatValue timeRemapping;
    private final float timeStretch;
    private final AnimatableTransform transform;

    public enum LayerType {
        PreComp,
        Solid,
        Image,
        Null,
        Shape,
        Text,
        Unknown
    }

    enum MatteType {
        None,
        Add,
        Invert,
        Unknown
    }

    private Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, int i4, int i5, AnimatableTextFrame animatableTextFrame, AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, AnimatableFloatValue animatableFloatValue) {
        this.shapes = list;
        this.composition = lottieComposition;
        this.layerName = str;
        this.layerId = j;
        this.layerType = layerType;
        this.parentId = j2;
        this.refId = str2;
        this.masks = list2;
        this.transform = animatableTransform;
        this.solidWidth = i;
        this.solidHeight = i2;
        this.solidColor = i3;
        this.timeStretch = f;
        this.startProgress = f2;
        this.preCompWidth = i4;
        this.preCompHeight = i5;
        this.text = animatableTextFrame;
        this.textProperties = animatableTextProperties;
        this.inOutKeyframes = list3;
        this.matteType = matteType;
        this.timeRemapping = animatableFloatValue;
    }

    LottieComposition getComposition() {
        return this.composition;
    }

    float getTimeStretch() {
        return this.timeStretch;
    }

    float getStartProgress() {
        return this.startProgress;
    }

    List<Keyframe<Float>> getInOutKeyframes() {
        return this.inOutKeyframes;
    }

    public long getId() {
        return this.layerId;
    }

    String getName() {
        return this.layerName;
    }

    String getRefId() {
        return this.refId;
    }

    int getPreCompWidth() {
        return this.preCompWidth;
    }

    int getPreCompHeight() {
        return this.preCompHeight;
    }

    List<Mask> getMasks() {
        return this.masks;
    }

    public LayerType getLayerType() {
        return this.layerType;
    }

    MatteType getMatteType() {
        return this.matteType;
    }

    long getParentId() {
        return this.parentId;
    }

    List<ContentModel> getShapes() {
        return this.shapes;
    }

    AnimatableTransform getTransform() {
        return this.transform;
    }

    int getSolidColor() {
        return this.solidColor;
    }

    int getSolidHeight() {
        return this.solidHeight;
    }

    int getSolidWidth() {
        return this.solidWidth;
    }

    AnimatableTextFrame getText() {
        return this.text;
    }

    AnimatableTextProperties getTextProperties() {
        return this.textProperties;
    }

    AnimatableFloatValue getTimeRemapping() {
        return this.timeRemapping;
    }

    public String toString() {
        return toString("");
    }

    public String toString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(getName());
        sb.append("\n");
        Layer layerLayerModelForId = this.composition.layerModelForId(getParentId());
        if (layerLayerModelForId != null) {
            sb.append("\t\tParents: ");
            sb.append(layerLayerModelForId.getName());
            Layer layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId.getParentId());
            while (layerLayerModelForId2 != null) {
                sb.append("->");
                sb.append(layerLayerModelForId2.getName());
                layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId2.getParentId());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!getMasks().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(getMasks().size());
            sb.append("\n");
        }
        if (getSolidWidth() != 0 && getSolidHeight() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(getSolidWidth()), Integer.valueOf(getSolidHeight()), Integer.valueOf(getSolidColor())));
        }
        if (!this.shapes.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (ContentModel contentModel : this.shapes) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(contentModel);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public static class Factory {
        public static Layer newInstance(LottieComposition lottieComposition) {
            Rect bounds = lottieComposition.getBounds();
            return new Layer(Collections.emptyList(), lottieComposition, "root", -1L, LayerType.PreComp, -1L, null, Collections.emptyList(), AnimatableTransform.Factory.newInstance(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, Collections.emptyList(), MatteType.None, null);
        }

        public static Layer newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            LayerType layerType;
            int iOptInt;
            int iOptInt2;
            int color;
            AnimatableTextFrame animatableTextFrame;
            AnimatableTextProperties animatableTextPropertiesNewInstance;
            int iOptInt3;
            int iOptInt4;
            float f;
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            String strOptString = jSONObject.optString("nm");
            String strOptString2 = jSONObject.optString("refId");
            if (strOptString.endsWith(".ai") || jSONObject.optString("cl", "").equals("ai")) {
                lottieComposition.addWarning("Convert your Illustrator layers to shape layers.");
            }
            long jOptLong = jSONObject.optLong("ind");
            int iOptInt5 = jSONObject.optInt("ty", -1);
            if (iOptInt5 < LayerType.Unknown.ordinal()) {
                layerType = LayerType.values()[iOptInt5];
            } else {
                layerType = LayerType.Unknown;
            }
            if (layerType == LayerType.Text && !Utils.isAtLeastVersion(lottieComposition, 4, 8, 0)) {
                layerType = LayerType.Unknown;
                lottieComposition.addWarning("Text is only supported on bodymovin >= 4.8.0");
            }
            LayerType layerType2 = layerType;
            long jOptLong2 = jSONObject.optLong("parent", -1L);
            if (layerType2 == LayerType.Solid) {
                iOptInt = (int) (jSONObject.optInt("sw") * lottieComposition.getDpScale());
                iOptInt2 = (int) (jSONObject.optInt("sh") * lottieComposition.getDpScale());
                color = Color.parseColor(jSONObject.optString("sc"));
            } else {
                iOptInt = 0;
                iOptInt2 = 0;
                color = 0;
            }
            AnimatableTransform animatableTransformNewInstance = AnimatableTransform.Factory.newInstance(jSONObject.optJSONObject("ks"), lottieComposition);
            MatteType matteType = MatteType.values()[jSONObject.optInt(TtmlNode.TAG_TT)];
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("masksProperties");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    arrayList4.add(Mask.Factory.newMask(jSONArrayOptJSONArray.optJSONObject(i), lottieComposition));
                }
            }
            ArrayList arrayList6 = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("shapes");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    ContentModel contentModelShapeItemWithJson = ShapeGroup.shapeItemWithJson(jSONArrayOptJSONArray2.optJSONObject(i2), lottieComposition);
                    if (contentModelShapeItemWithJson != null) {
                        arrayList6.add(contentModelShapeItemWithJson);
                    }
                }
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("t");
            if (jSONObjectOptJSONObject != null) {
                AnimatableTextFrame animatableTextFrameNewInstance = AnimatableTextFrame.Factory.newInstance(jSONObjectOptJSONObject.optJSONObject("d"), lottieComposition);
                animatableTextPropertiesNewInstance = AnimatableTextProperties.Factory.newInstance(jSONObjectOptJSONObject.optJSONArray("a").optJSONObject(0), lottieComposition);
                animatableTextFrame = animatableTextFrameNewInstance;
            } else {
                animatableTextFrame = null;
                animatableTextPropertiesNewInstance = null;
            }
            if (jSONObject.has("ef")) {
                lottieComposition.addWarning("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape.");
            }
            float fOptDouble = (float) jSONObject.optDouble("sr", 1.0d);
            float fOptDouble2 = ((float) jSONObject.optDouble("st")) / lottieComposition.getDurationFrames();
            if (layerType2 == LayerType.PreComp) {
                iOptInt3 = (int) (jSONObject.optInt("w") * lottieComposition.getDpScale());
                iOptInt4 = (int) (jSONObject.optInt("h") * lottieComposition.getDpScale());
            } else {
                iOptInt3 = 0;
                iOptInt4 = 0;
            }
            float fOptLong = jSONObject.optLong(IjkMediaPlayer.OnNativeInvokeListener.ARG_IP) / fOptDouble;
            float fOptLong2 = jSONObject.optLong("op") / fOptDouble;
            if (fOptLong > 0.0f) {
                f = fOptDouble;
                arrayList = arrayList6;
                arrayList2 = arrayList4;
                arrayList3 = arrayList5;
                arrayList3.add(new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(fOptLong)));
            } else {
                f = fOptDouble;
                arrayList = arrayList6;
                arrayList2 = arrayList4;
                arrayList3 = arrayList5;
            }
            if (fOptLong2 <= 0.0f) {
                fOptLong2 = lottieComposition.getEndFrame() + 1;
            }
            ArrayList arrayList7 = arrayList3;
            arrayList7.add(new Keyframe(lottieComposition, Float.valueOf(1.0f), Float.valueOf(1.0f), null, fOptLong, Float.valueOf(fOptLong2)));
            arrayList7.add(new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, fOptLong2, Float.valueOf(Float.MAX_VALUE)));
            return new Layer(arrayList, lottieComposition, strOptString, jOptLong, layerType2, jOptLong2, strOptString2, arrayList2, animatableTransformNewInstance, iOptInt, iOptInt2, color, f, fOptDouble2, iOptInt3, iOptInt4, animatableTextFrame, animatableTextPropertiesNewInstance, arrayList7, matteType, jSONObject.has("tm") ? AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("tm"), lottieComposition, false) : null);
        }
    }
}
