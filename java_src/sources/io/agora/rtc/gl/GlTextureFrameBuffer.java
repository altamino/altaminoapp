package io.agora.rtc.gl;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes7.dex */
public class GlTextureFrameBuffer {
    private final int frameBufferId;
    private int height;
    private final int pixelFormat;
    private final int textureId;
    private int width;

    public int getFrameBufferId() {
        return this.frameBufferId;
    }

    public int getHeight() {
        return this.height;
    }

    public int getTextureId() {
        return this.textureId;
    }

    public int getWidth() {
        return this.width;
    }

    public void release() {
        GLES20.glDeleteTextures(1, new int[]{this.textureId}, 0);
        GLES20.glDeleteFramebuffers(1, new int[]{this.frameBufferId}, 0);
        this.width = 0;
        this.height = 0;
    }

    public void setSize(int width, int height) {
        if (width == 0 || height == 0) {
            throw new IllegalArgumentException("Invalid size: " + width + "x" + height);
        }
        if (width == this.width && height == this.height) {
            return;
        }
        this.width = width;
        this.height = height;
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.textureId);
        int i10 = this.pixelFormat;
        GLES20.glTexImage2D(3553, 0, i10, width, height, 0, i10, 5121, null);
        GLES20.glBindTexture(3553, 0);
        GlUtil.checkNoGLES2Error("GlTextureFrameBuffer setSize");
        GLES20.glBindFramebuffer(36160, this.frameBufferId);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.textureId, 0);
        int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (iGlCheckFramebufferStatus == 36053) {
            GLES20.glBindFramebuffer(36160, 0);
            return;
        }
        throw new IllegalStateException("Framebuffer not complete, status: " + iGlCheckFramebufferStatus);
    }

    public GlTextureFrameBuffer(int pixelFormat) {
        switch (pixelFormat) {
            case 6407:
            case 6408:
            case 6409:
                this.pixelFormat = pixelFormat;
                this.textureId = GlUtil.generateTexture(3553);
                this.width = 0;
                this.height = 0;
                int[] iArr = new int[1];
                GLES20.glGenFramebuffers(1, iArr, 0);
                this.frameBufferId = iArr[0];
                return;
            default:
                throw new IllegalArgumentException("Invalid pixel format: " + pixelFormat);
        }
    }
}
