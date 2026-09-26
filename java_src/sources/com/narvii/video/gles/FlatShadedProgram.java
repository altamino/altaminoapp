package com.narvii.video.gles;

import android.opengl.GLES20;
import android.util.Log;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class FlatShadedProgram {
    private static final String FRAGMENT_SHADER = "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}";
    private static final String TAG = "Grafika";
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}";
    private int mProgramHandle;
    private int maPositionLoc;
    private int muColorLoc;
    private int muMVPMatrixLoc;

    public void draw(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i10, int i11, int i12, int i13) {
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.mProgramHandle);
        GlUtil.checkGlError("glUseProgram");
        GLES20.glUniformMatrix4fv(this.muMVPMatrixLoc, 1, false, fArr, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glUniform4fv(this.muColorLoc, 1, fArr2, 0);
        GlUtil.checkGlError("glUniform4fv ");
        GLES20.glEnableVertexAttribArray(this.maPositionLoc);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.maPositionLoc, i12, 5126, false, i13, (Buffer) floatBuffer);
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glDrawArrays(5, i10, i11);
        GlUtil.checkGlError("glDrawArrays");
        GLES20.glDisableVertexAttribArray(this.maPositionLoc);
        GLES20.glUseProgram(0);
    }

    public void release() {
        GLES20.glDeleteProgram(this.mProgramHandle);
        this.mProgramHandle = -1;
    }

    public FlatShadedProgram() {
        this.mProgramHandle = -1;
        this.muColorLoc = -1;
        this.muMVPMatrixLoc = -1;
        this.maPositionLoc = -1;
        int iCreateProgram = GlUtil.createProgram(VERTEX_SHADER, FRAGMENT_SHADER);
        this.mProgramHandle = iCreateProgram;
        if (iCreateProgram != 0) {
            Log.d("Grafika", "Created program " + this.mProgramHandle);
            int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.mProgramHandle, BaseFilter.aPosition);
            this.maPositionLoc = iGlGetAttribLocation;
            GlUtil.checkLocation(iGlGetAttribLocation, BaseFilter.aPosition);
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramHandle, "uMVPMatrix");
            this.muMVPMatrixLoc = iGlGetUniformLocation;
            GlUtil.checkLocation(iGlGetUniformLocation, "uMVPMatrix");
            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.mProgramHandle, "uColor");
            this.muColorLoc = iGlGetUniformLocation2;
            GlUtil.checkLocation(iGlGetUniformLocation2, "uColor");
            return;
        }
        throw new RuntimeException("Unable to create program");
    }
}
