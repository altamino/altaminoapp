package com.narvii.video.faceunity;

import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* loaded from: classes3.dex */
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

    public TextureRenderer(boolean z) {
        int iLoadShader;
        this.mOesTexture = true;
        this.mOesTexture = z;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(squareVertices.length * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        this.vertexBuffer = byteBufferAllocateDirect.asFloatBuffer();
        this.vertexBuffer.put(squareVertices);
        this.vertexBuffer.position(0);
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(this.drawOrder.length * 2);
        byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
        this.drawListBuffer = byteBufferAllocateDirect2.asShortBuffer();
        this.drawListBuffer.put(this.drawOrder);
        this.drawListBuffer.position(0);
        ByteBuffer byteBufferAllocateDirect3 = ByteBuffer.allocateDirect(this.textureVertices.length * 4);
        byteBufferAllocateDirect3.order(ByteOrder.nativeOrder());
        this.textureVerticesBuffer = byteBufferAllocateDirect3.asFloatBuffer();
        this.textureVerticesBuffer.put(this.textureVertices);
        this.textureVerticesBuffer.position(0);
        int iLoadShader2 = loadShader(35633, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}");
        if (this.mOesTexture) {
            iLoadShader = loadShader(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}");
        } else {
            iLoadShader = loadShader(35632, "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}");
        }
        this.mProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(this.mProgram, iLoadShader2);
        GLES20.glAttachShader(this.mProgram, iLoadShader);
        GLES20.glLinkProgram(this.mProgram);
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        Matrix.setIdentityM(this.mMVPMatrix, 0);
        Matrix.setIdentityM(this.mSTMatrix, 0);
    }

    public void rotate(int i) {
        double d = i;
        Double.isNaN(d);
        double d2 = (d / 180.0d) * 3.141592653589793d;
        this.mMVPMatrix[0] = (float) Math.cos(d2);
        this.mMVPMatrix[1] = -((float) Math.sin(d2));
        this.mMVPMatrix[4] = (float) Math.sin(d2);
        this.mMVPMatrix[5] = (float) Math.cos(d2);
    }

    public void draw(int i) {
        GLES20.glUseProgram(this.mProgram);
        GLES20.glActiveTexture(33984);
        if (this.mOesTexture) {
            GLES20.glBindTexture(36197, i);
        } else {
            GLES20.glBindTexture(3553, i);
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

    private void printMatrix(float[] fArr) {
        for (int i = 0; i < 4; i++) {
            StringBuilder sb = new StringBuilder();
            int i2 = i * 4;
            sb.append(fArr[i2 + 0]);
            sb.append(" ");
            sb.append(fArr[i2 + 1]);
            sb.append(" ");
            sb.append(fArr[i2 + 2]);
            sb.append(" ");
            sb.append(fArr[i2 + 3]);
            Log.d(LOG_TAG, sb.toString());
        }
    }

    public void draw(int i, float[] fArr) {
        for (int i2 = 0; i2 < fArr.length; i2++) {
            this.mSTMatrix[i2] = fArr[i2];
        }
        draw(i);
    }

    private int loadShader(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }
}
