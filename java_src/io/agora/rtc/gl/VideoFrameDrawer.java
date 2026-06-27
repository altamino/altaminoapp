package io.agora.rtc.gl;

import android.graphics.Matrix;
import android.graphics.Point;
import android.opengl.GLES20;
import io.agora.rtc.gl.RendererCommon;
import io.agora.rtc.gl.VideoFrame;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
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

    public VideoFrameDrawer() {
        AnonymousClass1 anonymousClass1 = null;
        this.yuvUploader = new YuvUploader(anonymousClass1);
        this.rgbaUploader = new RGBAUploader(anonymousClass1);
    }

    static void drawTexture(RendererCommon.GlDrawer glDrawer, VideoFrame.TextureBuffer textureBuffer, Matrix matrix, int i, int i2, int i3, int i4, int i5, int i6) {
        Matrix matrix2 = new Matrix(textureBuffer.getTransformMatrix());
        matrix2.preConcat(matrix);
        float[] fArrConvertMatrixFromAndroidGraphicsMatrix = RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrix2);
        int i7 = AnonymousClass1.$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[textureBuffer.getType().ordinal()];
        if (i7 == 1) {
            glDrawer.drawOes(textureBuffer.getTextureId(), fArrConvertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
        } else {
            if (i7 == 2) {
                glDrawer.drawRgb(textureBuffer.getTextureId(), fArrConvertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
                return;
            }
            throw new RuntimeException("Unknown texture type.");
        }
    }

    /* renamed from: io.agora.rtc.gl.VideoFrameDrawer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type = new int[VideoFrame.TextureBuffer.Type.values().length];

        static {
            try {
                $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
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

        public int[] uploadYuvData(int i, int i2, int[] iArr, ByteBuffer[] byteBufferArr) {
            ByteBuffer byteBuffer;
            ByteBuffer byteBuffer2;
            int i3 = i / 2;
            int[] iArr2 = {i, i3, i3};
            int i4 = i2 / 2;
            int[] iArr3 = {i2, i4, i4};
            int iMax = 0;
            for (int i5 = 0; i5 < 3; i5++) {
                if (iArr[i5] > iArr2[i5]) {
                    iMax = Math.max(iMax, iArr2[i5] * iArr3[i5]);
                }
            }
            if (iMax > 0 && ((byteBuffer2 = this.copyBuffer) == null || byteBuffer2.capacity() < iMax)) {
                this.copyBuffer = ByteBuffer.allocateDirect(iMax);
            }
            if (this.yuvTextures == null) {
                this.yuvTextures = new int[3];
                for (int i6 = 0; i6 < 3; i6++) {
                    this.yuvTextures[i6] = GlUtil.generateTexture(3553);
                }
            }
            for (int i7 = 0; i7 < 3; i7++) {
                GLES20.glActiveTexture(33984 + i7);
                GLES20.glBindTexture(3553, this.yuvTextures[i7]);
                if (iArr[i7] == iArr2[i7]) {
                    byteBuffer = byteBufferArr[i7];
                } else {
                    byteBuffer = this.copyBuffer;
                }
                GLES20.glTexImage2D(3553, 0, 6409, iArr2[i7], iArr3[i7], 0, 6409, 5121, byteBuffer);
            }
            return this.yuvTextures;
        }

        public int[] uploadFromBuffer(VideoFrame.I420Buffer i420Buffer) {
            return uploadYuvData(i420Buffer.getWidth(), i420Buffer.getHeight(), new int[]{i420Buffer.getStrideY(), i420Buffer.getStrideU(), i420Buffer.getStrideV()}, new ByteBuffer[]{i420Buffer.getDataY(), i420Buffer.getDataU(), i420Buffer.getDataV()});
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
    }

    private static int distance(float f, float f2, float f3, float f4) {
        return (int) Math.round(Math.hypot(f3 - f, f4 - f2));
    }

    private void calculateTransformedRenderSize(int i, int i2, Matrix matrix) {
        if (matrix == null) {
            this.renderWidth = i;
            this.renderHeight = i2;
            return;
        }
        matrix.mapPoints(this.dstPoints, srcPoints);
        for (int i3 = 0; i3 < 3; i3++) {
            float[] fArr = this.dstPoints;
            int i4 = i3 * 2;
            int i5 = i4 + 0;
            fArr[i5] = fArr[i5] * i;
            int i6 = i4 + 1;
            fArr[i6] = fArr[i6] * i2;
        }
        float[] fArr2 = this.dstPoints;
        this.renderWidth = distance(fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
        float[] fArr3 = this.dstPoints;
        this.renderHeight = distance(fArr3[0], fArr3[1], fArr3[4], fArr3[5]);
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer) {
        drawFrame(videoFrame, glDrawer, null);
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix) {
        drawFrame(videoFrame, glDrawer, matrix, 0, 0, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix, int i, int i2, int i3, int i4) {
        calculateTransformedRenderSize(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), matrix);
        boolean z = videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer;
        boolean z2 = videoFrame.getBuffer() instanceof RgbaBuffer;
        this.renderMatrix.reset();
        this.renderMatrix.preTranslate(0.5f, 0.5f);
        if (!z) {
            this.renderMatrix.preScale(1.0f, -1.0f);
        }
        this.renderMatrix.preRotate(videoFrame.getRotation());
        this.renderMatrix.preTranslate(-0.5f, -0.5f);
        if (matrix != null) {
            this.renderMatrix.preConcat(matrix);
        }
        if (z) {
            this.lastI420Frame = null;
            this.lastRgbaFrame = null;
            drawTexture(glDrawer, (VideoFrame.TextureBuffer) videoFrame.getBuffer(), this.renderMatrix, this.renderWidth, this.renderHeight, i, i2, i3, i4);
        } else {
            if (z2) {
                if (videoFrame != this.lastRgbaFrame) {
                    this.lastRgbaFrame = videoFrame;
                    RgbaBuffer rgbaBuffer = (RgbaBuffer) videoFrame.getBuffer();
                    this.rgbaUploader.uploadData(rgbaBuffer.getBuffer(), rgbaBuffer.getWidth(), rgbaBuffer.getHeight());
                    rgbaBuffer.release();
                }
                glDrawer.drawRgb(this.rgbaUploader.getTextureId(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, i, i2, i3, i4);
                return;
            }
            if (videoFrame != this.lastI420Frame) {
                this.lastI420Frame = videoFrame;
                VideoFrame.I420Buffer i420 = videoFrame.getBuffer().toI420();
                this.yuvUploader.uploadFromBuffer(i420);
                i420.release();
            }
            glDrawer.drawYuv(this.yuvUploader.getYuvTextures(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, i, i2, i3, i4);
        }
    }

    public void release() {
        this.yuvUploader.release();
        this.lastI420Frame = null;
        this.rgbaUploader.release();
        this.lastRgbaFrame = null;
    }

    private static class RGBAUploader {
        private ByteBuffer mData;
        private int mTextureId;

        private RGBAUploader() {
            this.mTextureId = 0;
        }

        /* synthetic */ RGBAUploader(AnonymousClass1 anonymousClass1) {
            this();
        }

        public int uploadData(ByteBuffer byteBuffer, int i, int i2) {
            this.mData = byteBuffer;
            if (this.mTextureId == 0) {
                this.mTextureId = GlUtil.generateTexture(3553);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.mTextureId);
            GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, this.mData);
            GlUtil.checkNoGLES2Error("glTexImage2D");
            return this.mTextureId;
        }

        public int getTextureId() {
            return this.mTextureId;
        }

        public void release() {
            this.mData = null;
            int i = this.mTextureId;
            if (i != 0) {
                GLES20.glDeleteTextures(1, new int[]{i}, 0);
            }
        }
    }
}
