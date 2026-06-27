package com.airbnb.lottie.model.animatable;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ShapeKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableShapeValue extends BaseAnimatableValue<ShapeData, Path> {
    private final Path convertTypePath;

    private AnimatableShapeValue(List<Keyframe<ShapeData>> list, ShapeData shapeData) {
        super(list, shapeData);
        this.convertTypePath = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<ShapeData, Path> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(convertType((ShapeData) this.initialValue));
        }
        return new ShapeKeyframeAnimation(this.keyframes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue
    public Path convertType(ShapeData shapeData) {
        this.convertTypePath.reset();
        MiscUtils.getPathFromData(shapeData, this.convertTypePath);
        return this.convertTypePath;
    }

    public static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableShapeValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, lottieComposition.getDpScale(), lottieComposition, ShapeData.Factory.INSTANCE).parseJson();
            return new AnimatableShapeValue(json.keyframes, (ShapeData) json.initialValue);
        }
    }
}
