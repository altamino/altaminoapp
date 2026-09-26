package com.narvii.chat.p2a.encoder;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class Watermark {
    private static final String fs_Image = "precision mediump float;varying vec2 v_texCoord;uniform sampler2D s_texture;void main() {  gl_FragColor = texture2D( s_texture, v_texCoord );}";
    private static final String vs_Image = "uniform mat4 uMVPMatrix;attribute vec4 vPosition;attribute vec2 a_texCoord;varying vec2 v_texCoord;void main() {  gl_Position = uMVPMatrix * vPosition;  v_texCoord = a_texCoord;}";
    private Bitmap bitmap;
    private ShortBuffer drawListBuffer;
    private int fragmentShader;
    private int height;
    private int surfaceHeight;
    private int surfaceWidth;
    private FloatBuffer uvBuffer;
    private FloatBuffer vertexBuffer;
    private int vertexShader;
    private int width;
    private int textureId = -1;
    private int sp_Image = -1;
    private float[] mtx = new float[16];

    public boolean isReady() {
        return this.textureId >= 0;
    }

    public void destory() {
        int i10 = this.textureId;
        if (i10 >= 0) {
            GLES20.glDeleteTextures(1, new int[]{i10}, 0);
            GLES20.glDetachShader(this.sp_Image, this.fragmentShader);
            GLES20.glDetachShader(this.sp_Image, this.vertexShader);
            GLES20.glDeleteShader(this.fragmentShader);
            GLES20.glDeleteShader(this.vertexShader);
            GLES20.glDeleteProgram(this.sp_Image);
        }
        this.textureId = -2;
    }

    public void draw() {
        if (this.textureId < 0) {
            return;
        }
        boolean zGlIsEnabled = GLES20.glIsEnabled(3042);
        if (!zGlIsEnabled) {
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, 771);
        }
        GLES20.glBindTexture(3553, this.textureId);
        GLES20.glUseProgram(this.sp_Image);
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.sp_Image, "vPosition");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 3, 5126, false, 0, (Buffer) this.vertexBuffer);
        int iGlGetAttribLocation2 = GLES20.glGetAttribLocation(this.sp_Image, "a_texCoord");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation2);
        GLES20.glVertexAttribPointer(iGlGetAttribLocation2, 2, 5126, false, 0, (Buffer) this.uvBuffer);
        GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.sp_Image, "uMVPMatrix"), 1, false, this.mtx, 0);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.sp_Image, "s_texture"), 0);
        GLES20.glDrawElements(4, 6, 5123, this.drawListBuffer);
        GLES20.glDisableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glDisableVertexAttribArray(iGlGetAttribLocation2);
        GLES20.glBindTexture(3553, 0);
        GLES20.glUseProgram(0);
        if (zGlIsEnabled) {
            return;
        }
        GLES20.glDisable(3042);
    }

    public boolean prepare(int i10, int i11) {
        if (this.textureId == -1) {
            int width = this.bitmap.getWidth();
            float height = this.bitmap.getHeight();
            float f = width;
            float[] fArr = {0.0f, height, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, f, height, 0.0f};
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(48);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
            this.vertexBuffer = floatBufferAsFloatBuffer;
            floatBufferAsFloatBuffer.put(fArr);
            this.vertexBuffer.position(0);
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(12);
            byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
            ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect2.asShortBuffer();
            this.drawListBuffer = shortBufferAsShortBuffer;
            shortBufferAsShortBuffer.put(new short[]{0, 1, 2, 0, 2, 3});
            this.drawListBuffer.position(0);
            ByteBuffer byteBufferAllocateDirect3 = ByteBuffer.allocateDirect(32);
            byteBufferAllocateDirect3.order(ByteOrder.nativeOrder());
            FloatBuffer floatBufferAsFloatBuffer2 = byteBufferAllocateDirect3.asFloatBuffer();
            this.uvBuffer = floatBufferAsFloatBuffer2;
            floatBufferAsFloatBuffer2.put(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f});
            this.uvBuffer.position(0);
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLUtils.texImage2D(3553, 0, this.bitmap, 0);
            this.textureId = iArr[0];
            if (this.sp_Image < 0) {
                this.vertexShader = loadShader(35633, vs_Image);
                this.fragmentShader = loadShader(35632, fs_Image);
                int iGlCreateProgram = GLES20.glCreateProgram();
                this.sp_Image = iGlCreateProgram;
                GLES20.glAttachShader(iGlCreateProgram, this.vertexShader);
                GLES20.glAttachShader(this.sp_Image, this.fragmentShader);
                GLES20.glLinkProgram(this.sp_Image);
                GLES20.glUseProgram(this.sp_Image);
            }
        }
        if (i10 != this.surfaceWidth || i11 != this.surfaceHeight) {
            this.surfaceWidth = i10;
            this.surfaceHeight = i11;
            float[] fArr2 = new float[16];
            float[] fArr3 = new float[16];
            Arrays.fill(fArr2, 0.0f);
            Arrays.fill(fArr3, 0.0f);
            Arrays.fill(this.mtx, 0.0f);
            Matrix.orthoM(fArr2, 0, 0.0f, i10, 0.0f, i11, 0.0f, 50.0f);
            Matrix.setLookAtM(fArr3, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            Matrix.multiplyMM(this.mtx, 0, fArr2, 0, fArr3, 0);
            Matrix.translateM(this.mtx, 0, 18.0f, (i11 - this.height) - 18, 0.0f);
        }
        return this.textureId >= 0;
    }

    public Watermark(Bitmap bitmap) {
        this.bitmap = bitmap;
        this.width = bitmap.getWidth();
        this.height = bitmap.getHeight();
    }

    private static int loadShader(int i10, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }
}
