package io.agora.rtc.gl;

import android.graphics.Matrix;
import android.graphics.Point;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class RendererCommon {
    private static float BALANCED_VISIBLE_FRACTION = 0.5625f;

    public interface GlDrawer {
        void drawOes(int oesTextureId, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight);

        void drawRgb(int textureId, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight);

        void drawYuv(int[] yuvTextures, float[] texMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight);

        void release();
    }

    public interface RendererEvents {
        void onFirstFrameRendered();

        void onFrameResolutionChanged(int videoWidth, int videoHeight, int rotation);
    }

    public enum ScalingType {
        SCALE_ASPECT_FIT,
        SCALE_ASPECT_FILL,
        SCALE_ASPECT_BALANCED
    }

    public static class VideoLayoutMeasure {
        private ScalingType scalingTypeMatchOrientation;
        private ScalingType scalingTypeMismatchOrientation;

        public void setScalingType(ScalingType scalingType) {
            this.scalingTypeMatchOrientation = scalingType;
            this.scalingTypeMismatchOrientation = scalingType;
        }

        public void setScalingType(ScalingType scalingTypeMatchOrientation, ScalingType scalingTypeMismatchOrientation) {
            this.scalingTypeMatchOrientation = scalingTypeMatchOrientation;
            this.scalingTypeMismatchOrientation = scalingTypeMismatchOrientation;
        }

        public VideoLayoutMeasure() {
            ScalingType scalingType = ScalingType.SCALE_ASPECT_BALANCED;
            this.scalingTypeMatchOrientation = scalingType;
            this.scalingTypeMismatchOrientation = scalingType;
        }

        public Point measure(int widthSpec, int heightSpec, int frameWidth, int frameHeight) {
            boolean z6;
            ScalingType scalingType;
            int defaultSize = View.getDefaultSize(Integer.MAX_VALUE, widthSpec);
            int defaultSize2 = View.getDefaultSize(Integer.MAX_VALUE, heightSpec);
            if (frameWidth != 0 && frameHeight != 0 && defaultSize != 0 && defaultSize2 != 0) {
                float f = frameWidth / frameHeight;
                float f6 = defaultSize / defaultSize2;
                boolean z10 = false;
                if (f > 1.0f) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (f6 > 1.0f) {
                    z10 = true;
                }
                if (z6 == z10) {
                    scalingType = this.scalingTypeMatchOrientation;
                } else {
                    scalingType = this.scalingTypeMismatchOrientation;
                }
                Point displaySize = RendererCommon.getDisplaySize(scalingType, f, defaultSize, defaultSize2);
                if (View.MeasureSpec.getMode(widthSpec) == 1073741824) {
                    displaySize.x = defaultSize;
                }
                if (View.MeasureSpec.getMode(heightSpec) == 1073741824) {
                    displaySize.y = defaultSize2;
                }
                return displaySize;
            }
            return new Point(defaultSize, defaultSize2);
        }
    }

    public static Point getDisplaySize(ScalingType scalingType, float videoAspectRatio, int maxDisplayWidth, int maxDisplayHeight) {
        return getDisplaySize(convertScalingTypeToVisibleFraction(scalingType), videoAspectRatio, maxDisplayWidth, maxDisplayHeight);
    }

    public static final float[] horizontalFlipMatrix() {
        return new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    }

    public static final float[] identityMatrix() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static final float[] verticalFlipMatrix() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    }

    /* JADX INFO: renamed from: io.agora.rtc.gl.RendererCommon$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType;

        static {
            int[] iArr = new int[ScalingType.values().length];
            $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType = iArr;
            try {
                iArr[ScalingType.SCALE_ASPECT_FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType[ScalingType.SCALE_ASPECT_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType[ScalingType.SCALE_ASPECT_BALANCED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static void adjustOrigin(float[] matrix) {
        float f = matrix[12] - ((matrix[0] + matrix[4]) * 0.5f);
        matrix[12] = f;
        float f6 = matrix[13] - ((matrix[1] + matrix[5]) * 0.5f);
        matrix[13] = f6;
        matrix[12] = f + 0.5f;
        matrix[13] = f6 + 0.5f;
    }

    public static float[] convertMatrixFromAndroidGraphicsMatrix(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return new float[]{fArr[0], fArr[3], 0.0f, fArr[6], fArr[1], fArr[4], 0.0f, fArr[7], 0.0f, 0.0f, 1.0f, 0.0f, fArr[2], fArr[5], 0.0f, fArr[8]};
    }

    public static Matrix convertMatrixToAndroidGraphicsMatrix(float[] matrix4x4) {
        float[] fArr = {matrix4x4[0], matrix4x4[4], matrix4x4[12], matrix4x4[1], matrix4x4[5], matrix4x4[13], matrix4x4[3], matrix4x4[7], matrix4x4[15]};
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return matrix;
    }

    private static float convertScalingTypeToVisibleFraction(ScalingType scalingType) {
        int i10 = AnonymousClass1.$SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType[scalingType.ordinal()];
        if (i10 == 1) {
            return 1.0f;
        }
        if (i10 == 2) {
            return 0.0f;
        }
        if (i10 == 3) {
            return BALANCED_VISIBLE_FRACTION;
        }
        throw new IllegalArgumentException();
    }

    private static Point getDisplaySize(float minVisibleFraction, float videoAspectRatio, int maxDisplayWidth, int maxDisplayHeight) {
        return (minVisibleFraction == 0.0f || videoAspectRatio == 0.0f) ? new Point(maxDisplayWidth, maxDisplayHeight) : new Point(Math.min(maxDisplayWidth, Math.round((maxDisplayHeight / minVisibleFraction) * videoAspectRatio)), Math.min(maxDisplayHeight, Math.round((maxDisplayWidth / minVisibleFraction) / videoAspectRatio)));
    }

    public static float[] getLayoutMatrix(boolean mirror, float videoAspectRatio, float displayAspectRatio) {
        float f;
        float f6;
        if (displayAspectRatio > videoAspectRatio) {
            f6 = videoAspectRatio / displayAspectRatio;
            f = 1.0f;
        } else {
            f = displayAspectRatio / videoAspectRatio;
            f6 = 1.0f;
        }
        if (mirror) {
            f *= -1.0f;
        }
        float[] fArr = new float[16];
        android.opengl.Matrix.setIdentityM(fArr, 0);
        android.opengl.Matrix.scaleM(fArr, 0, f, f6, 1.0f);
        adjustOrigin(fArr);
        return fArr;
    }

    public static float[] multiplyMatrices(float[] a7, float[] b7) {
        float[] fArr = new float[16];
        android.opengl.Matrix.multiplyMM(fArr, 0, a7, 0, b7, 0);
        return fArr;
    }

    public static float[] rotateTextureMatrix(float[] textureMatrix, float rotationDegree) {
        float[] fArr = new float[16];
        android.opengl.Matrix.setRotateM(fArr, 0, rotationDegree, 0.0f, 0.0f, 1.0f);
        adjustOrigin(fArr);
        return multiplyMatrices(textureMatrix, fArr);
    }
}
