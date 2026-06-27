package com.narvii.editor.cropping.dynamic.filter;

import android.content.Context;
import android.opengl.GLES30;
import android.opengl.Matrix;
import com.narvii.editor.cropping.dynamic.GLUtils;
import com.narvii.meisheeditor.R;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseFilter.kt */
/* loaded from: classes2.dex */
public class BaseFilter {
    public static final Companion Companion = new Companion(null);
    public static final String aPosition = "aPosition";
    public static final String aTextureCoordinate = "aTextureCoordinate";
    public static final String uTextureMatrix = "uTextureMatrix";
    public static final String uTextureSampler = "uTextureSampler";
    private int aPositionLocation;
    private int aTextureCoordinateLocation;
    private Context context;
    private FloatBuffer floatBuffer;
    private int fragmentShader;
    private int mOESTextureId;
    private int program;
    private float scaleX;
    private float scaleY;
    private float scrollX;
    private float scrollY;
    private float[] transformMatrix;
    private int uTextureMatrixLocation;
    private int uTextureSamplerLocation;
    private int vertexShader;

    /* compiled from: BaseFilter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected final Context getContext() {
        return this.context;
    }

    protected final void setContext(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "<set-?>");
        this.context = context;
    }

    protected final int getVertexShader() {
        return this.vertexShader;
    }

    protected final void setVertexShader(int i) {
        this.vertexShader = i;
    }

    protected final int getFragmentShader() {
        return this.fragmentShader;
    }

    protected final void setFragmentShader(int i) {
        this.fragmentShader = i;
    }

    protected final int getProgram() {
        return this.program;
    }

    protected final void setProgram(int i) {
        this.program = i;
    }

    public final float[] getTransformMatrix() {
        return this.transformMatrix;
    }

    public final void setTransformMatrix(float[] fArr) {
        Intrinsics.checkParameterIsNotNull(fArr, "<set-?>");
        this.transformMatrix = fArr;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
    }

    public BaseFilter(Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
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
        this.mOESTextureId = i;
        GLUtils.Companion companion = GLUtils.Companion;
        this.floatBuffer = companion.createBuffer(companion.getVertexData());
    }

    public void initProgram() {
        GLUtils.Companion companion = GLUtils.Companion;
        this.vertexShader = companion.loadShader(35633, companion.readShaderFromResource(this.context, R.raw.base_vertex_shader));
        GLUtils.Companion companion2 = GLUtils.Companion;
        this.fragmentShader = companion2.loadShader(35632, companion2.readShaderFromResource(this.context, R.raw.base_fragment_shader));
        this.program = GLUtils.Companion.createProgram(this.vertexShader, this.fragmentShader);
    }

    public void drawFrame() {
        GLES30.glUseProgram(this.program);
        this.aPositionLocation = GLES30.glGetAttribLocation(this.program, aPosition);
        this.aTextureCoordinateLocation = GLES30.glGetAttribLocation(this.program, aTextureCoordinate);
        this.uTextureMatrixLocation = GLES30.glGetUniformLocation(this.program, uTextureMatrix);
        this.uTextureSamplerLocation = GLES30.glGetUniformLocation(this.program, uTextureSampler);
        GLES30.glActiveTexture(33984);
        GLES30.glBindTexture(36197, this.mOESTextureId);
        GLES30.glUniform1i(this.uTextureSamplerLocation, 0);
        GLES30.glUniformMatrix4fv(this.uTextureMatrixLocation, 1, false, this.transformMatrix, 0);
        this.floatBuffer.position(0);
        GLES30.glEnableVertexAttribArray(this.aPositionLocation);
        GLES30.glVertexAttribPointer(this.aPositionLocation, 2, 5126, false, 16, (Buffer) this.floatBuffer);
        this.floatBuffer.position(2);
        GLES30.glEnableVertexAttribArray(this.aTextureCoordinateLocation);
        GLES30.glVertexAttribPointer(this.aTextureCoordinateLocation, 2, 5126, false, 16, (Buffer) this.floatBuffer);
        GLES30.glDrawArrays(4, 0, 6);
        GLES30.glDisableVertexAttribArray(this.aPositionLocation);
        GLES30.glDisableVertexAttribArray(this.aTextureCoordinateLocation);
        GLES30.glBindTexture(36197, 0);
    }

    public void release() {
        GLES30.glDeleteProgram(this.program);
        this.program = 0;
        GLES30.glDeleteShader(this.vertexShader);
        this.vertexShader = 0;
        GLES30.glDeleteShader(this.fragmentShader);
        this.fragmentShader = 0;
        this.floatBuffer.clear();
    }

    public final void setTransform(float f, float f2) {
        this.scrollX = f;
        this.scrollY = f2;
        setScaleAndTransform(this.scaleX, this.scaleY, this.scrollX, this.scrollY);
    }

    public final void setVideoAndViewSize(int i, int i2, int i3, int i4) {
        setScaleAndTransform((((i2 * 1.0f) / i) * i3) / i4, 1.0f, this.scrollX, this.scrollY);
    }

    public final void setScaleAndTransform(float f, float f2, float f3, float f4) {
        this.scaleX = f;
        this.scaleY = f2;
        this.scrollX = f3;
        this.scrollY = f4;
        resetTransformMatrix();
        Matrix.scaleM(this.transformMatrix, 0, f, f2, 1.0f);
        Matrix.translateM(this.transformMatrix, 0, f3, f4, 1.0f);
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
}
