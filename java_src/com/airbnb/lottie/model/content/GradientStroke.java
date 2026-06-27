package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GradientStroke implements ContentModel {
    private final ShapeStroke.LineCapType capType;
    private final AnimatableFloatValue dashOffset;
    private final AnimatablePointValue endPoint;
    private final AnimatableGradientColorValue gradientColor;
    private final GradientType gradientType;
    private final ShapeStroke.LineJoinType joinType;
    private final List<AnimatableFloatValue> lineDashPattern;
    private final String name;
    private final AnimatableIntegerValue opacity;
    private final AnimatablePointValue startPoint;
    private final AnimatableFloatValue width;

    private GradientStroke(String str, GradientType gradientType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2) {
        this.name = str;
        this.gradientType = gradientType;
        this.gradientColor = animatableGradientColorValue;
        this.opacity = animatableIntegerValue;
        this.startPoint = animatablePointValue;
        this.endPoint = animatablePointValue2;
        this.width = animatableFloatValue;
        this.capType = lineCapType;
        this.joinType = lineJoinType;
        this.lineDashPattern = list;
        this.dashOffset = animatableFloatValue2;
    }

    public String getName() {
        return this.name;
    }

    public GradientType getGradientType() {
        return this.gradientType;
    }

    public AnimatableGradientColorValue getGradientColor() {
        return this.gradientColor;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public AnimatablePointValue getStartPoint() {
        return this.startPoint;
    }

    public AnimatablePointValue getEndPoint() {
        return this.endPoint;
    }

    public AnimatableFloatValue getWidth() {
        return this.width;
    }

    public ShapeStroke.LineCapType getCapType() {
        return this.capType;
    }

    public ShapeStroke.LineJoinType getJoinType() {
        return this.joinType;
    }

    public List<AnimatableFloatValue> getLineDashPattern() {
        return this.lineDashPattern;
    }

    public AnimatableFloatValue getDashOffset() {
        return this.dashOffset;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }

    static class Factory {
        static GradientStroke newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            ShapeStroke.LineJoinType lineJoinType;
            AnimatableFloatValue animatableFloatValue;
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("g");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("k")) {
                jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject("k");
            }
            AnimatableGradientColorValue animatableGradientColorValueNewInstance = jSONObjectOptJSONObject != null ? AnimatableGradientColorValue.Factory.newInstance(jSONObjectOptJSONObject, lottieComposition) : null;
            String str = "o";
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            AnimatableIntegerValue animatableIntegerValueNewInstance = jSONObjectOptJSONObject2 != null ? AnimatableIntegerValue.Factory.newInstance(jSONObjectOptJSONObject2, lottieComposition) : null;
            GradientType gradientType = jSONObject.optInt("t", 1) == 1 ? GradientType.Linear : GradientType.Radial;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("s");
            AnimatablePointValue animatablePointValueNewInstance = jSONObjectOptJSONObject3 != null ? AnimatablePointValue.Factory.newInstance(jSONObjectOptJSONObject3, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("e");
            AnimatablePointValue animatablePointValueNewInstance2 = jSONObjectOptJSONObject4 != null ? AnimatablePointValue.Factory.newInstance(jSONObjectOptJSONObject4, lottieComposition) : null;
            AnimatableFloatValue animatableFloatValueNewInstance = AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("w"), lottieComposition);
            ShapeStroke.LineCapType lineCapType = ShapeStroke.LineCapType.values()[jSONObject.optInt("lc") - 1];
            ShapeStroke.LineJoinType lineJoinType2 = ShapeStroke.LineJoinType.values()[jSONObject.optInt("lj") - 1];
            ArrayList arrayList = new ArrayList();
            if (jSONObject.has("d")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("d");
                lineJoinType = lineJoinType2;
                int i = 0;
                AnimatableFloatValue animatableFloatValueNewInstance2 = null;
                while (i < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i);
                    JSONArray jSONArray = jSONArrayOptJSONArray;
                    String strOptString2 = jSONObjectOptJSONObject5.optString("n");
                    String str2 = str;
                    if (strOptString2.equals(str)) {
                        animatableFloatValueNewInstance2 = AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject5.optJSONObject("v"), lottieComposition);
                    } else if (strOptString2.equals("d") || strOptString2.equals("g")) {
                        arrayList.add(AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject5.optJSONObject("v"), lottieComposition));
                    }
                    i++;
                    jSONArrayOptJSONArray = jSONArray;
                    str = str2;
                }
                if (arrayList.size() == 1) {
                    arrayList.add(arrayList.get(0));
                }
                animatableFloatValue = animatableFloatValueNewInstance2;
            } else {
                lineJoinType = lineJoinType2;
                animatableFloatValue = null;
            }
            return new GradientStroke(strOptString, gradientType, animatableGradientColorValueNewInstance, animatableIntegerValueNewInstance, animatablePointValueNewInstance, animatablePointValueNewInstance2, animatableFloatValueNewInstance, lineCapType, lineJoinType, arrayList, animatableFloatValue);
        }
    }
}
