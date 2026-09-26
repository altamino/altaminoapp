package com.narvii.video.faceunity;

import android.content.Context;
import android.opengl.GLES20;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class Shader {
    private int mProgram = 0;
    private int mShaderVertex = 0;
    private int mShaderFragment = 0;
    private final HashMap<String, Integer> mShaderHandleMap = new HashMap<>();

    public int[] getHandles(String... strArr) {
        int[] iArr = new int[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            iArr[i10] = getHandle(strArr[i10]);
        }
        return iArr;
    }

    public int programHandle() {
        return this.mProgram;
    }

    public void setProgram(int i10, int i11, Context context) throws Exception {
        setProgram(loadRawString(i10, context), loadRawString(i11, context), context);
    }

    public void deleteProgram() {
        GLES20.glDeleteShader(this.mShaderVertex);
        GLES20.glDeleteShader(this.mShaderFragment);
        GLES20.glDeleteProgram(this.mProgram);
        this.mShaderFragment = 0;
        this.mShaderVertex = 0;
        this.mProgram = 0;
    }

    public int getHandle(String str) {
        if (this.mShaderHandleMap.containsKey(str)) {
            return this.mShaderHandleMap.get(str).intValue();
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.mProgram, str);
        if (iGlGetAttribLocation == -1) {
            iGlGetAttribLocation = GLES20.glGetUniformLocation(this.mProgram, str);
        }
        if (iGlGetAttribLocation == -1) {
            Log.d("GLSL shader", "Could not get attrib location for " + str);
        } else {
            this.mShaderHandleMap.put(str, Integer.valueOf(iGlGetAttribLocation));
        }
        return iGlGetAttribLocation;
    }

    public void useProgram() {
        GLES20.glUseProgram(this.mProgram);
    }

    private String loadRawString(int i10, Context context) throws Exception {
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i10);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i11 = inputStreamOpenRawResource.read(bArr);
            if (i11 != -1) {
                byteArrayOutputStream.write(bArr, 0, i11);
            } else {
                return byteArrayOutputStream.toString();
            }
        }
    }

    private int loadShader(int i10, String str) throws Exception {
        int iGlCreateShader = GLES20.glCreateShader(i10);
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            GLES20.glCompileShader(iGlCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
                GLES20.glDeleteShader(iGlCreateShader);
                throw new Exception(strGlGetShaderInfoLog);
            }
        }
        return iGlCreateShader;
    }

    public void setProgram(String str, String str2, Context context) throws Exception {
        this.mShaderVertex = loadShader(35633, str);
        this.mShaderFragment = loadShader(35632, str2);
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram != 0) {
            GLES20.glAttachShader(iGlCreateProgram, this.mShaderVertex);
            GLES20.glAttachShader(iGlCreateProgram, this.mShaderFragment);
            GLES20.glLinkProgram(iGlCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                String strGlGetProgramInfoLog = GLES20.glGetProgramInfoLog(iGlCreateProgram);
                deleteProgram();
                throw new Exception(strGlGetProgramInfoLog);
            }
        }
        this.mProgram = iGlCreateProgram;
        this.mShaderHandleMap.clear();
    }
}
