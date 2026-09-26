package com.narvii.editor.cropping.dynamic.filter;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.narvii.editor.cropping.dynamic.GLUtils;
import com.narvii.meisheeditor.R;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public class BaseFilter {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String aPosition = "aPosition";

    @NotNull
    public static final String aTextureCoordinate = "aTextureCoordinate";

    @NotNull
    public static final String uTextureMatrix = "uTextureMatrix";

    @NotNull
    public static final String uTextureSampler = "uTextureSampler";
    private int aPositionLocation;
    private int aTextureCoordinateLocation;

    @NotNull
    private Context context;

    @NotNull
    private FloatBuffer floatBuffer;
    private int fragmentShader;
    private int mOESTextureId;
    private int program;
    private float scaleX;
    private float scaleY;
    private float scrollX;
    private float scrollY;

    @NotNull
    private float[] transformMatrix;
    private int uTextureMatrixLocation;
    private int uTextureSamplerLocation;
    private int vertexShader;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    protected final Context getContext() {
        return this.context;
    }

    protected final int getFragmentShader() {
        return this.fragmentShader;
    }

    protected final int getProgram() {
        return this.program;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    @NotNull
    public final float[] getTransformMatrix() {
        return this.transformMatrix;
    }

    protected final int getVertexShader() {
        return this.vertexShader;
    }

    protected final void setContext(@NotNull Context context) {
        t.j(context, "<set-?>");
        this.context = context;
    }

    protected final void setFragmentShader(int i10) {
        this.fragmentShader = i10;
    }

    protected final void setProgram(int i10) {
        this.program = i10;
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
    }

    public final void setTransformMatrix(@NotNull float[] fArr) {
        t.j(fArr, "<set-?>");
        this.transformMatrix = fArr;
    }

    protected final void setVertexShader(int i10) {
        this.vertexShader = i10;
    }

    public final void setVideoAndViewSize(int i10, int i11, int i12, int i13) {
        setScaleAndTransform((((i11 * 1.0f) / i10) * i12) / i13, 1.0f, this.scrollX, this.scrollY);
    }

    public BaseFilter(@NotNull Context context, int i10) {
        t.j(context, "context");
        this.vertexShader = -1;
        this.fragmentShader = -1;
        this.program = -1;
        this.transformMatrix = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
        this.aPositionLocation = -1;
        this.uTextureMatrixLocation = -1;
        this.aTextureCoordinateLocation = -1;
        this.uTextureSamplerLocation = -1;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.context = context;
        this.mOESTextureId = i10;
        GLUtils.Companion companion = GLUtils.Companion;
        this.floatBuffer = companion.createBuffer(companion.getVertexData());
    }

    private final void resetTransformMatrix() {
        float[] fArr = this.transformMatrix;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = -1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 1.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public void drawFrame() {
        GLES20.glUseProgram(this.program);
        this.aPositionLocation = GLES20.glGetAttribLocation(this.program, aPosition);
        this.aTextureCoordinateLocation = GLES20.glGetAttribLocation(this.program, aTextureCoordinate);
        this.uTextureMatrixLocation = GLES20.glGetUniformLocation(this.program, uTextureMatrix);
        this.uTextureSamplerLocation = GLES20.glGetUniformLocation(this.program, uTextureSampler);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.mOESTextureId);
        GLES20.glUniform1i(this.uTextureSamplerLocation, 0);
        GLES20.glUniformMatrix4fv(this.uTextureMatrixLocation, 1, false, this.transformMatrix, 0);
        this.floatBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.aPositionLocation);
        GLES20.glVertexAttribPointer(this.aPositionLocation, 2, 5126, false, 16, (Buffer) this.floatBuffer);
        this.floatBuffer.position(2);
        GLES20.glEnableVertexAttribArray(this.aTextureCoordinateLocation);
        GLES20.glVertexAttribPointer(this.aTextureCoordinateLocation, 2, 5126, false, 16, (Buffer) this.floatBuffer);
        GLES20.glDrawArrays(4, 0, 6);
        GLES20.glDisableVertexAttribArray(this.aPositionLocation);
        GLES20.glDisableVertexAttribArray(this.aTextureCoordinateLocation);
        GLES20.glBindTexture(36197, 0);
    }

    public void initProgram() {
        GLUtils.Companion companion = GLUtils.Companion;
        this.vertexShader = companion.loadShader(35633, companion.readShaderFromResource(this.context, R.raw.base_vertex_shader));
        int iLoadShader = companion.loadShader(35632, companion.readShaderFromResource(this.context, R.raw.base_fragment_shader));
        this.fragmentShader = iLoadShader;
        this.program = companion.createProgram(this.vertexShader, iLoadShader);
    }

    public void release() {
        GLES20.glDeleteProgram(this.program);
        this.program = 0;
        GLES20.glDeleteShader(this.vertexShader);
        this.vertexShader = 0;
        GLES20.glDeleteShader(this.fragmentShader);
        this.fragmentShader = 0;
        this.floatBuffer.clear();
    }

    public final void setScaleAndTransform(float f, float f6, float f7, float f10) {
        this.scaleX = f;
        this.scaleY = f6;
        this.scrollX = f7;
        this.scrollY = f10;
        resetTransformMatrix();
        Matrix.scaleM(this.transformMatrix, 0, f, f6, 1.0f);
        Matrix.translateM(this.transformMatrix, 0, f7, f10, 1.0f);
    }

    public final void setTransform(float f, float f6) {
        this.scrollX = f;
        this.scrollY = f6;
        setScaleAndTransform(this.scaleX, this.scaleY, f, f6);
    }
}
