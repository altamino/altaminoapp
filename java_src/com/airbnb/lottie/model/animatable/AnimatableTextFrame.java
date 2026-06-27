package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableTextFrame extends BaseAnimatableValue<DocumentData, DocumentData> {
    AnimatableTextFrame(List<Keyframe<DocumentData>> list, DocumentData documentData) {
        super(list, documentData);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public TextKeyframeAnimation createAnimation() {
        return new TextKeyframeAnimation(this.keyframes);
    }

    public static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableTextFrame newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            if (jSONObject != null && jSONObject.has("x")) {
                lottieComposition.addWarning("Lottie doesn't support expressions.");
            }
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, 1.0f, lottieComposition, ValueFactory.INSTANCE).parseJson();
            return new AnimatableTextFrame(json.keyframes, (DocumentData) json.initialValue);
        }
    }

    private static class ValueFactory implements AnimatableValue.Factory<DocumentData> {
        private static final ValueFactory INSTANCE = new ValueFactory();

        private ValueFactory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public DocumentData valueFromObject(Object obj, float f) {
            return DocumentData.Factory.newInstance((JSONObject) obj);
        }
    }
}
