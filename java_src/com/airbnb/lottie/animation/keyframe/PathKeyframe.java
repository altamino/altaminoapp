package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.JsonUtils;
import com.airbnb.lottie.utils.Utils;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PathKeyframe extends Keyframe<PointF> {
    private Path path;

    private PathKeyframe(LottieComposition lottieComposition, PointF pointF, PointF pointF2, Interpolator interpolator, float f, Float f2) {
        super(lottieComposition, pointF, pointF2, interpolator, f, f2);
    }

    public static class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static PathKeyframe newInstance(JSONObject jSONObject, LottieComposition lottieComposition, AnimatableValue.Factory<PointF> factory) {
            PointF pointFPointFromJsonArray;
            T t;
            Keyframe keyframeNewInstance = Keyframe.Factory.newInstance(jSONObject, lottieComposition, lottieComposition.getDpScale(), factory);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ti");
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("to");
            PointF pointFPointFromJsonArray2 = null;
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null) {
                pointFPointFromJsonArray = null;
            } else {
                pointFPointFromJsonArray2 = JsonUtils.pointFromJsonArray(jSONArrayOptJSONArray2, lottieComposition.getDpScale());
                pointFPointFromJsonArray = JsonUtils.pointFromJsonArray(jSONArrayOptJSONArray, lottieComposition.getDpScale());
            }
            PathKeyframe pathKeyframe = new PathKeyframe(lottieComposition, (PointF) keyframeNewInstance.startValue, (PointF) keyframeNewInstance.endValue, keyframeNewInstance.interpolator, keyframeNewInstance.startFrame, keyframeNewInstance.endFrame);
            T t2 = keyframeNewInstance.endValue;
            boolean z = (t2 == 0 || (t = keyframeNewInstance.startValue) == 0 || !((PointF) t).equals(((PointF) t2).x, ((PointF) t2).y)) ? false : true;
            if (pathKeyframe.endValue != 0 && !z) {
                pathKeyframe.path = Utils.createPath((PointF) keyframeNewInstance.startValue, (PointF) keyframeNewInstance.endValue, pointFPointFromJsonArray2, pointFPointFromJsonArray);
            }
            return pathKeyframe;
        }
    }

    Path getPath() {
        return this.path;
    }
}
