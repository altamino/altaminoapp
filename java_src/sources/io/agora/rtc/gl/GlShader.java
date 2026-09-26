package io.agora.rtc.gl;

import android.opengl.GLES20;
import android.util.Log;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class GlShader {
    private static final String TAG = "GlShader";
    private int program;

    public void setVertexAttribArray(String label, int dimension, FloatBuffer buffer) {
        setVertexAttribArray(label, dimension, 0, buffer);
    }

    public int getAttribLocation(String label) {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(i10, label);
        if (iGlGetAttribLocation >= 0) {
            return iGlGetAttribLocation;
        }
        throw new RuntimeException("Could not locate '" + label + "' in program");
    }

    public int getUniformLocation(String label) {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(i10, label);
        if (iGlGetUniformLocation >= 0) {
            return iGlGetUniformLocation;
        }
        throw new RuntimeException("Could not locate uniform '" + label + "' in program");
    }

    public void release() {
        Log.d(TAG, "Deleting shader.");
        int i10 = this.program;
        if (i10 != -1) {
            GLES20.glDeleteProgram(i10);
            this.program = -1;
        }
    }

    public void setVertexAttribArray(String label, int dimension, int stride, FloatBuffer buffer) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int attribLocation = getAttribLocation(label);
        GLES20.glEnableVertexAttribArray(attribLocation);
        GLES20.glVertexAttribPointer(attribLocation, dimension, 5126, false, stride, (Buffer) buffer);
        GlUtil.checkNoGLES2Error("setVertexAttribArray");
    }

    public void useProgram() {
        int i10 = this.program;
        if (i10 == -1) {
            throw new RuntimeException("The program has been released");
        }
        GLES20.glUseProgram(i10);
        GlUtil.checkNoGLES2Error("glUseProgram");
    }

    public GlShader(String vertexSource, String fragmentSource) {
        int iCompileShader = compileShader(35633, vertexSource);
        int iCompileShader2 = compileShader(35632, fragmentSource);
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.program = iGlCreateProgram;
        if (iGlCreateProgram != 0) {
            GLES20.glAttachShader(iGlCreateProgram, iCompileShader);
            GLES20.glAttachShader(this.program, iCompileShader2);
            GLES20.glLinkProgram(this.program);
            int[] iArr = {0};
            GLES20.glGetProgramiv(this.program, 35714, iArr, 0);
            if (iArr[0] == 1) {
                GLES20.glDeleteShader(iCompileShader);
                GLES20.glDeleteShader(iCompileShader2);
                GlUtil.checkNoGLES2Error("Creating GlShader");
                return;
            } else {
                Log.e(TAG, "Could not link program: " + GLES20.glGetProgramInfoLog(this.program));
                throw new RuntimeException(GLES20.glGetProgramInfoLog(this.program));
            }
        }
        throw new RuntimeException("glCreateProgram() failed. GLES20 error: " + GLES20.glGetError());
    }

    private static int compileShader(int shaderType, String source) {
        int iGlCreateShader = GLES20.glCreateShader(shaderType);
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, source);
            GLES20.glCompileShader(iGlCreateShader);
            int[] iArr = {0};
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] == 1) {
                GlUtil.checkNoGLES2Error("compileShader");
                return iGlCreateShader;
            }
            Log.e(TAG, "Could not compile shader " + shaderType + ":" + GLES20.glGetShaderInfoLog(iGlCreateShader));
            throw new RuntimeException(GLES20.glGetShaderInfoLog(iGlCreateShader));
        }
        throw new RuntimeException("glCreateShader() failed. GLES20 error: " + GLES20.glGetError());
    }
}
