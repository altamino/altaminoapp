package io.agora.rtc.gl;

import android.graphics.Matrix;
import android.graphics.Point;
import android.opengl.GLES20;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public class VideoFrameDrawer {
    static final float[] srcPoints = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    private VideoFrame lastI420Frame;
    private VideoFrame lastRgbaFrame;
    private int renderHeight;
    private int renderWidth;
    private final RGBAUploader rgbaUploader;
    private final YuvUploader yuvUploader;
    private final float[] dstPoints = new float[6];
    private final Point renderSize = new Point();
    private final Matrix renderMatrix = new Matrix();

    private static class RGBAUploader {
        private ByteBuffer mData;
        private int mTextureId;

        private RGBAUploader() {
            this.mTextureId = 0;
        }

        public int getTextureId() {
            return this.mTextureId;
        }

        public void release() {
            this.mData = null;
            int i10 = this.mTextureId;
            if (i10 != 0) {
                GLES20.glDeleteTextures(1, new int[]{i10}, 0);
            }
        }

        /* synthetic */ RGBAUploader(AnonymousClass1 anonymousClass1) {
            this();
        }

        public int uploadData(ByteBuffer data, int width, int height) {
            this.mData = data;
            if (this.mTextureId == 0) {
                this.mTextureId = GlUtil.generateTexture(3553);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.mTextureId);
            GLES20.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, 5121, this.mData);
            GlUtil.checkNoGLES2Error("glTexImage2D");
            return this.mTextureId;
        }
    }

    private static class YuvUploader {
        private ByteBuffer copyBuffer;
        private int[] yuvTextures;

        private YuvUploader() {
        }

        /* synthetic */ YuvUploader(AnonymousClass1 anonymousClass1) {
            this();
        }

        public int[] getYuvTextures() {
            return this.yuvTextures;
        }

        public void release() {
            this.copyBuffer = null;
            int[] iArr = this.yuvTextures;
            if (iArr != null) {
                GLES20.glDeleteTextures(3, iArr, 0);
                this.yuvTextures = null;
            }
        }

        public int[] uploadYuvData(int width, int height, int[] strides, ByteBuffer[] planes) {
            ByteBuffer byteBuffer;
            int i10 = width / 2;
            int[] iArr = {width, i10, i10};
            int i11 = height / 2;
            int[] iArr2 = {height, i11, i11};
            int iMax = 0;
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = strides[i12];
                int i14 = iArr[i12];
                if (i13 > i14) {
                    iMax = Math.max(iMax, i14 * iArr2[i12]);
                }
            }
            if (iMax > 0 && ((byteBuffer = this.copyBuffer) == null || byteBuffer.capacity() < iMax)) {
                this.copyBuffer = ByteBuffer.allocateDirect(iMax);
            }
            if (this.yuvTextures == null) {
                this.yuvTextures = new int[3];
                for (int i15 = 0; i15 < 3; i15++) {
                    this.yuvTextures[i15] = GlUtil.generateTexture(3553);
                }
            }
            for (int i16 = 0; i16 < 3; i16++) {
                GLES20.glActiveTexture(33984 + i16);
                GLES20.glBindTexture(3553, this.yuvTextures[i16]);
                int i17 = strides[i16];
                int i18 = iArr[i16];
                GLES20.glTexImage2D(3553, 0, 6409, i18, iArr2[i16], 0, 6409, 5121, i17 == i18 ? planes[i16] : this.copyBuffer);
            }
            return this.yuvTextures;
        }

        public int[] uploadFromBuffer(VideoFrame.I420Buffer buffer) {
            return uploadYuvData(buffer.getWidth(), buffer.getHeight(), new int[]{buffer.getStrideY(), buffer.getStrideU(), buffer.getStrideV()}, new ByteBuffer[]{buffer.getDataY(), buffer.getDataU(), buffer.getDataV()});
        }
    }

    private static int distance(float x1, float y1, float x6, float y6) {
        return (int) Math.round(Math.hypot(x6 - x1, y6 - y1));
    }

    public void drawFrame(VideoFrame frame, RendererCommon.GlDrawer drawer) {
        drawFrame(frame, drawer, null);
    }

    /* JADX INFO: renamed from: io.agora.rtc.gl.VideoFrameDrawer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type;

        static {
            int[] iArr = new int[VideoFrame.TextureBuffer.Type.values().length];
            $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type = iArr;
            try {
                iArr[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void calculateTransformedRenderSize(int frameWidth, int frameHeight, Matrix renderMatrix) {
        if (renderMatrix == null) {
            this.renderWidth = frameWidth;
            this.renderHeight = frameHeight;
            return;
        }
        renderMatrix.mapPoints(this.dstPoints, srcPoints);
        for (int i10 = 0; i10 < 3; i10++) {
            float[] fArr = this.dstPoints;
            int i11 = i10 * 2;
            fArr[i11] = fArr[i11] * frameWidth;
            int i12 = i11 + 1;
            fArr[i12] = fArr[i12] * frameHeight;
        }
        float[] fArr2 = this.dstPoints;
        this.renderWidth = distance(fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
        float[] fArr3 = this.dstPoints;
        this.renderHeight = distance(fArr3[0], fArr3[1], fArr3[4], fArr3[5]);
    }

    static void drawTexture(RendererCommon.GlDrawer drawer, VideoFrame.TextureBuffer buffer, Matrix renderMatrix, int frameWidth, int frameHeight, int viewportX, int viewportY, int viewportWidth, int viewportHeight) {
        Matrix matrix = new Matrix(buffer.getTransformMatrix());
        matrix.preConcat(renderMatrix);
        float[] fArrConvertMatrixFromAndroidGraphicsMatrix = RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrix);
        int i10 = AnonymousClass1.$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[buffer.getType().ordinal()];
        if (i10 == 1) {
            drawer.drawOes(buffer.getTextureId(), fArrConvertMatrixFromAndroidGraphicsMatrix, frameWidth, frameHeight, viewportX, viewportY, viewportWidth, viewportHeight);
        } else {
            if (i10 != 2) {
                throw new RuntimeException("Unknown texture type.");
            }
            drawer.drawRgb(buffer.getTextureId(), fArrConvertMatrixFromAndroidGraphicsMatrix, frameWidth, frameHeight, viewportX, viewportY, viewportWidth, viewportHeight);
        }
    }

    public void drawFrame(VideoFrame frame, RendererCommon.GlDrawer drawer, Matrix additionalRenderMatrix) {
        drawFrame(frame, drawer, additionalRenderMatrix, 0, 0, frame.getRotatedWidth(), frame.getRotatedHeight());
    }

    public void release() {
        this.yuvUploader.release();
        this.lastI420Frame = null;
        this.rgbaUploader.release();
        this.lastRgbaFrame = null;
    }

    public VideoFrameDrawer() {
        AnonymousClass1 anonymousClass1 = null;
        this.yuvUploader = new YuvUploader(anonymousClass1);
        this.rgbaUploader = new RGBAUploader(anonymousClass1);
    }

    public void drawFrame(VideoFrame frame, RendererCommon.GlDrawer drawer, Matrix additionalRenderMatrix, int viewportX, int viewportY, int viewportWidth, int viewportHeight) {
        calculateTransformedRenderSize(frame.getRotatedWidth(), frame.getRotatedHeight(), additionalRenderMatrix);
        boolean z6 = frame.getBuffer() instanceof VideoFrame.TextureBuffer;
        boolean z10 = frame.getBuffer() instanceof RgbaBuffer;
        this.renderMatrix.reset();
        this.renderMatrix.preTranslate(0.5f, 0.5f);
        if (!z6) {
            this.renderMatrix.preScale(1.0f, -1.0f);
        }
        this.renderMatrix.preRotate(frame.getRotation());
        this.renderMatrix.preTranslate(-0.5f, -0.5f);
        if (additionalRenderMatrix != null) {
            this.renderMatrix.preConcat(additionalRenderMatrix);
        }
        if (z6) {
            this.lastI420Frame = null;
            this.lastRgbaFrame = null;
            drawTexture(drawer, (VideoFrame.TextureBuffer) frame.getBuffer(), this.renderMatrix, this.renderWidth, this.renderHeight, viewportX, viewportY, viewportWidth, viewportHeight);
        } else {
            if (z10) {
                if (frame != this.lastRgbaFrame) {
                    this.lastRgbaFrame = frame;
                    RgbaBuffer rgbaBuffer = (RgbaBuffer) frame.getBuffer();
                    this.rgbaUploader.uploadData(rgbaBuffer.getBuffer(), rgbaBuffer.getWidth(), rgbaBuffer.getHeight());
                    rgbaBuffer.release();
                }
                drawer.drawRgb(this.rgbaUploader.getTextureId(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, viewportX, viewportY, viewportWidth, viewportHeight);
                return;
            }
            if (frame != this.lastI420Frame) {
                this.lastI420Frame = frame;
                VideoFrame.I420Buffer i420 = frame.getBuffer().toI420();
                this.yuvUploader.uploadFromBuffer(i420);
                i420.release();
            }
            drawer.drawYuv(this.yuvUploader.getYuvTextures(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, viewportX, viewportY, viewportWidth, viewportHeight);
        }
    }
}
