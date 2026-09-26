package com.narvii.video.faceunity;

import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes8.dex */
public class TextureRenderer {
    static final int COORDS_PER_VERTEX = 2;
    private static final String LOG_TAG = "TextureRenderer";
    static float[] squareVertices = {-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f};
    private ShortBuffer drawListBuffer;
    private boolean mOesTexture;
    private final int mProgram;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;
    private FloatBuffer textureVerticesBuffer;
    private FloatBuffer vertexBuffer;
    private final String mVertexShader = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}";
    private final String mFragmentShaderOes = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}";
    private final String mFragmentShaderRgba = "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}";
    float[] textureVertices = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    private short[] drawOrder = {0, 1, 2, 0, 2, 3};
    private final int vertexStride = 8;
    private float[] mMVPMatrix = new float[16];
    private float[] mSTMatrix = new float[16];

    private void printMatrix(float[] fArr) {
        for (int i10 = 0; i10 < 4; i10++) {
            StringBuilder sb = new StringBuilder();
            int i11 = i10 * 4;
            sb.append(fArr[i11]);
            sb.append(" ");
            sb.append(fArr[i11 + 1]);
            sb.append(" ");
            sb.append(fArr[i11 + 2]);
            sb.append(" ");
            sb.append(fArr[i11 + 3]);
            Log.d(LOG_TAG, sb.toString());
        }
    }

    public void draw(int i10) {
        GLES20.glUseProgram(this.mProgram);
        GLES20.glActiveTexture(33984);
        if (this.mOesTexture) {
            GLES20.glBindTexture(36197, i10);
        } else {
            GLES20.glBindTexture(3553, i10);
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.mProgram, "position");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 2, 5126, false, 8, (Buffer) this.vertexBuffer);
        int iGlGetAttribLocation2 = GLES20.glGetAttribLocation(this.mProgram, "inputTextureCoordinate");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation2);
        GLES20.glVertexAttribPointer(iGlGetAttribLocation2, 2, 5126, false, 8, (Buffer) this.textureVerticesBuffer);
        GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
        GLES20.glDrawElements(4, this.drawOrder.length, 5123, this.drawListBuffer);
        GLES20.glDisableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glDisableVertexAttribArray(iGlGetAttribLocation2);
        GLES20.glUseProgram(0);
    }

    public void rotate(int i10) {
        double d = (((double) i10) / 180.0d) * 3.141592653589793d;
        this.mMVPMatrix[0] = (float) Math.cos(d);
        this.mMVPMatrix[1] = -((float) Math.sin(d));
        this.mMVPMatrix[4] = (float) Math.sin(d);
        this.mMVPMatrix[5] = (float) Math.cos(d);
    }

    public TextureRenderer(boolean z6) {
        int iLoadShader;
        this.mOesTexture = z6;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(squareVertices.length * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        this.vertexBuffer = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(squareVertices);
        this.vertexBuffer.position(0);
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(this.drawOrder.length * 2);
        byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
        ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect2.asShortBuffer();
        this.drawListBuffer = shortBufferAsShortBuffer;
        shortBufferAsShortBuffer.put(this.drawOrder);
        this.drawListBuffer.position(0);
        ByteBuffer byteBufferAllocateDirect3 = ByteBuffer.allocateDirect(this.textureVertices.length * 4);
        byteBufferAllocateDirect3.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer2 = byteBufferAllocateDirect3.asFloatBuffer();
        this.textureVerticesBuffer = floatBufferAsFloatBuffer2;
        floatBufferAsFloatBuffer2.put(this.textureVertices);
        this.textureVerticesBuffer.position(0);
        int iLoadShader2 = loadShader(35633, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}");
        if (this.mOesTexture) {
            iLoadShader = loadShader(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}");
        } else {
            iLoadShader = loadShader(35632, "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}");
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.mProgram = iGlCreateProgram;
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader2);
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
        GLES20.glLinkProgram(iGlCreateProgram);
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(iGlCreateProgram, "uMVPMatrix");
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(iGlCreateProgram, "uSTMatrix");
        Matrix.setIdentityM(this.mMVPMatrix, 0);
        Matrix.setIdentityM(this.mSTMatrix, 0);
    }

    private int loadShader(int i10, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }

    public void draw(int i10, float[] fArr) {
        for (int i11 = 0; i11 < fArr.length; i11++) {
            this.mSTMatrix[i11] = fArr[i11];
        }
        draw(i10);
    }
}
