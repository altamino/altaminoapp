package com.airbnb.lottie.model.content;

import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;

/* loaded from: classes.dex */
public class Mask {
    private final MaskMode maskMode;
    private final AnimatableShapeValue maskPath;
    private final AnimatableIntegerValue opacity;

    public enum MaskMode {
        MaskModeAdd,
        MaskModeSubtract,
        MaskModeIntersect,
        MaskModeUnknown
    }

    private Mask(MaskMode maskMode, AnimatableShapeValue animatableShapeValue, AnimatableIntegerValue animatableIntegerValue) {
        this.maskMode = maskMode;
        this.maskPath = animatableShapeValue;
        this.opacity = animatableIntegerValue;
    }

    public static class Factory {
        /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.airbnb.lottie.model.content.Mask newMask(org.json.JSONObject r5, com.airbnb.lottie.LottieComposition r6) {
            /*
                java.lang.String r0 = "mode"
                java.lang.String r0 = r5.optString(r0)
                int r1 = r0.hashCode()
                r2 = 97
                r3 = 2
                r4 = 1
                if (r1 == r2) goto L2e
                r2 = 105(0x69, float:1.47E-43)
                if (r1 == r2) goto L24
                r2 = 115(0x73, float:1.61E-43)
                if (r1 == r2) goto L19
                goto L38
            L19:
                java.lang.String r1 = "s"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L38
                r0 = 1
                goto L39
            L24:
                java.lang.String r1 = "i"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L38
                r0 = 2
                goto L39
            L2e:
                java.lang.String r1 = "a"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L38
                r0 = 0
                goto L39
            L38:
                r0 = -1
            L39:
                if (r0 == 0) goto L48
                if (r0 == r4) goto L45
                if (r0 == r3) goto L42
                com.airbnb.lottie.model.content.Mask$MaskMode r0 = com.airbnb.lottie.model.content.Mask.MaskMode.MaskModeUnknown
                goto L4a
            L42:
                com.airbnb.lottie.model.content.Mask$MaskMode r0 = com.airbnb.lottie.model.content.Mask.MaskMode.MaskModeIntersect
                goto L4a
            L45:
                com.airbnb.lottie.model.content.Mask$MaskMode r0 = com.airbnb.lottie.model.content.Mask.MaskMode.MaskModeSubtract
                goto L4a
            L48:
                com.airbnb.lottie.model.content.Mask$MaskMode r0 = com.airbnb.lottie.model.content.Mask.MaskMode.MaskModeAdd
            L4a:
                java.lang.String r1 = "pt"
                org.json.JSONObject r1 = r5.optJSONObject(r1)
                com.airbnb.lottie.model.animatable.AnimatableShapeValue r1 = com.airbnb.lottie.model.animatable.AnimatableShapeValue.Factory.newInstance(r1, r6)
                java.lang.String r2 = "o"
                org.json.JSONObject r5 = r5.optJSONObject(r2)
                com.airbnb.lottie.model.animatable.AnimatableIntegerValue r5 = com.airbnb.lottie.model.animatable.AnimatableIntegerValue.Factory.newInstance(r5, r6)
                com.airbnb.lottie.model.content.Mask r6 = new com.airbnb.lottie.model.content.Mask
                r2 = 0
                r6.<init>(r0, r1, r5)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.content.Mask.Factory.newMask(org.json.JSONObject, com.airbnb.lottie.LottieComposition):com.airbnb.lottie.model.content.Mask");
        }
    }

    public MaskMode getMaskMode() {
        return this.maskMode;
    }

    public AnimatableShapeValue getMaskPath() {
        return this.maskPath;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }
}
