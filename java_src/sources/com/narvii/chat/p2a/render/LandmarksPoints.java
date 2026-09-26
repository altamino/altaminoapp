package com.narvii.chat.p2a.render;

import android.opengl.GLES20;
import androidx.compose.material.TextFieldImplKt;
import com.narvii.video.gles.GlUtil;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class LandmarksPoints {
    static final int COORDS_PER_VERTEX = 2;
    private static String TAG;
    static float[] flipMtx;
    static float[] originMtx;
    ByteBuffer bb;
    float[] color;
    private int mColorHandle;
    private int mMVPMatrixHandle;
    private int mPointSizeHandle;
    private int mPositionHandle;
    private final int mProgram;
    public float[] pointsCoords;
    private final FloatBuffer vertexBuffer;
    private final int vertexCount;
    private final int vertexStride;
    private final String vertexShaderCode = "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}";
    private final String fragmentShaderCode = "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}";
    private float mPointSize = 6.0f;

    public void refresh(float[] fArr, int i10, int i11, float f, float f6, boolean z6, int i12) {
        float f7;
        float f10;
        for (int i13 = 0; i13 < 150; i13++) {
            this.pointsCoords[i13] = fArr[i13];
        }
        for (int i14 = 0; i14 < fArr.length; i14 += 2) {
            if (i12 == 270) {
                float[] fArr2 = this.pointsCoords;
                f7 = fArr2[i14] / i10;
                f10 = (!z6 ? i11 - fArr2[i14 + 1] : fArr2[i14 + 1]) / i11;
            } else if (i12 == 90) {
                float f11 = i10;
                float[] fArr3 = this.pointsCoords;
                float f12 = (f11 - fArr3[i14]) / f11;
                f10 = (z6 ? i11 - fArr3[i14 + 1] : fArr3[i14 + 1]) / i11;
                f7 = f12;
            } else {
                f7 = 0.0f;
                f10 = 0.0f;
            }
            float[] fArr4 = this.pointsCoords;
            fArr4[i14] = (-((f10 * 2.0f) - 1.0f)) * 1.0f;
            fArr4[i14 + 1] = ((((f7 - f) / f6) * 2.0f) - 1.0f) * 1.0f;
        }
        this.vertexBuffer.put(this.pointsCoords);
        this.vertexBuffer.position(0);
    }

    public void setPointSize(float f) {
        this.mPointSize = f;
    }

    static {
        float[] fArr = GlUtil.IDENTITY_MATRIX;
        originMtx = fArr;
        flipMtx = Arrays.copyOf(fArr, fArr.length);
        TAG = "LandmarksPoints";
    }

    public void draw() {
        GLES20.glUseProgram(this.mProgram);
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.mProgram, "vPosition");
        this.mPositionHandle = iGlGetAttribLocation;
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glVertexAttribPointer(this.mPositionHandle, 2, 5126, false, 8, (Buffer) this.vertexBuffer);
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.mProgram, "vColor");
        this.mColorHandle = iGlGetUniformLocation;
        GLES20.glUniform4fv(iGlGetUniformLocation, 1, this.color, 0);
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

    public LandmarksPoints() {
        float[] fArr = new float[TextFieldImplKt.AnimationDuration];
        this.pointsCoords = fArr;
        this.vertexCount = fArr.length / 2;
        this.vertexStride = 8;
        this.color = new float[]{0.63671875f, 0.76953125f, 0.22265625f, 1.0f};
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        this.bb = byteBufferAllocateDirect;
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = this.bb.asFloatBuffer();
        this.vertexBuffer = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(this.pointsCoords);
        floatBufferAsFloatBuffer.position(0);
        int iLoadShader = GlUtil.loadShader(35633, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}");
        int iLoadShader2 = GlUtil.loadShader(35632, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}");
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.mProgram = iGlCreateProgram;
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader2);
        GLES20.glLinkProgram(iGlCreateProgram);
    }
}
