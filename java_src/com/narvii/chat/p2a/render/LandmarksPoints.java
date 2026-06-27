package com.narvii.chat.p2a.render;

import android.opengl.GLES20;
import com.narvii.video.gles.GlUtil;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class LandmarksPoints {
    static final int COORDS_PER_VERTEX = 2;
    private static String TAG;
    static float[] flipMtx;
    static float[] originMtx = GlUtil.IDENTITY_MATRIX;
    ByteBuffer bb;
    float[] color;
    private int mColorHandle;
    private int mMVPMatrixHandle;
    private int mPointSizeHandle;
    private int mPositionHandle;
    private final int mProgram;
    private final FloatBuffer vertexBuffer;
    private final int vertexCount;
    private final int vertexStride;
    private final String vertexShaderCode = "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}";
    private final String fragmentShaderCode = "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}";
    private float mPointSize = 6.0f;
    public float[] pointsCoords = new float[150];

    static {
        float[] fArr = originMtx;
        flipMtx = Arrays.copyOf(fArr, fArr.length);
        TAG = "LandmarksPoints";
    }

    public LandmarksPoints() {
        float[] fArr = this.pointsCoords;
        this.vertexCount = fArr.length / 2;
        this.vertexStride = 8;
        this.color = new float[]{0.63671875f, 0.76953125f, 0.22265625f, 1.0f};
        this.bb = ByteBuffer.allocateDirect(fArr.length * 4);
        this.bb.order(ByteOrder.nativeOrder());
        this.vertexBuffer = this.bb.asFloatBuffer();
        this.vertexBuffer.put(this.pointsCoords);
        this.vertexBuffer.position(0);
        int iLoadShader = GlUtil.loadShader(35633, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}");
        int iLoadShader2 = GlUtil.loadShader(35632, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}");
        this.mProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(this.mProgram, iLoadShader);
        GLES20.glAttachShader(this.mProgram, iLoadShader2);
        GLES20.glLinkProgram(this.mProgram);
    }

    public void setPointSize(float f) {
        this.mPointSize = f;
    }

    public void draw() {
        GLES20.glUseProgram(this.mProgram);
        this.mPositionHandle = GLES20.glGetAttribLocation(this.mProgram, "vPosition");
        GLES20.glEnableVertexAttribArray(this.mPositionHandle);
        GLES20.glVertexAttribPointer(this.mPositionHandle, 2, 5126, false, 8, (Buffer) this.vertexBuffer);
        this.mColorHandle = GLES20.glGetUniformLocation(this.mProgram, "vColor");
        GLES20.glUniform4fv(this.mColorHandle, 1, this.color, 0);
        this.mMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
        GlUtil.checkGlError("glGetUniformLocation");
        this.mPointSizeHandle = GLES20.glGetUniformLocation(this.mProgram, "uPointSize");
        GlUtil.checkGlError("glGetUniformLocation");
        GLES20.glUniformMatrix4fv(this.mMVPMatrixHandle, 1, false, originMtx, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glUniform1f(this.mPointSizeHandle, this.mPointSize);
        GlUtil.checkGlError("glUniform1f");
        GLES20.glDrawArrays(0, 0, this.vertexCount);
        GLES20.glDisableVertexAttribArray(this.mPositionHandle);
    }

    public void refresh(float[] fArr, int i, int i2, float f, float f2, boolean z, int i3) {
        float f3;
        for (int i4 = 0; i4 < 150; i4++) {
            this.pointsCoords[i4] = fArr[i4];
        }
        for (int i5 = 0; i5 < fArr.length; i5 += 2) {
            float f4 = 0.0f;
            if (i3 == 270) {
                float[] fArr2 = this.pointsCoords;
                f4 = fArr2[i5] / i;
                f3 = (!z ? i2 - fArr2[i5 + 1] : fArr2[i5 + 1]) / i2;
            } else if (i3 == 90) {
                float f5 = i;
                float[] fArr3 = this.pointsCoords;
                f4 = (f5 - fArr3[i5]) / f5;
                f3 = (z ? i2 - fArr3[i5 + 1] : fArr3[i5 + 1]) / i2;
            } else {
                f3 = 0.0f;
            }
            float[] fArr4 = this.pointsCoords;
            fArr4[i5] = (-((f3 * 2.0f) - 1.0f)) * 1.0f;
            fArr4[i5 + 1] = ((((f4 - f) / f2) * 2.0f) - 1.0f) * 1.0f;
        }
        this.vertexBuffer.put(this.pointsCoords);
        this.vertexBuffer.position(0);
    }
}
