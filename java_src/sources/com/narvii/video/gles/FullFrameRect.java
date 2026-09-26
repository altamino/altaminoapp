package com.narvii.video.gles;

import android.opengl.Matrix;

/* JADX INFO: loaded from: classes11.dex */
public class FullFrameRect {
    private Texture2dProgram mProgram;
    private final Drawable2d mRectDrawable = new Drawable2d(Drawable2d.Prefab.FULL_RECTANGLE);
    float[] mvpMatrix;

    public Texture2dProgram getProgram() {
        return this.mProgram;
    }

    public void rotation(int i10) {
        double d = (((double) i10) / 180.0d) * 3.141592653589793d;
        this.mvpMatrix[0] = (float) Math.cos(d);
        this.mvpMatrix[1] = -((float) Math.sin(d));
        this.mvpMatrix[4] = (float) Math.sin(d);
        this.mvpMatrix[5] = (float) Math.cos(d);
    }

    public void changeProgram(Texture2dProgram texture2dProgram) {
        this.mProgram.release();
        this.mProgram = texture2dProgram;
    }

    public int createTextureObject() {
        return this.mProgram.createTextureObject();
    }

    public void drawFrame(int i10, float[] fArr) {
        Texture2dProgram texture2dProgram = this.mProgram;
        if (texture2dProgram == null) {
            return;
        }
        texture2dProgram.draw(this.mvpMatrix, this.mRectDrawable.getVertexArray(), 0, this.mRectDrawable.getVertexCount(), this.mRectDrawable.getCoordsPerVertex(), this.mRectDrawable.getVertexStride(), fArr, this.mRectDrawable.getTexCoordArray(), i10, this.mRectDrawable.getTexCoordStride());
    }

    public void release(boolean z6) {
        Texture2dProgram texture2dProgram = this.mProgram;
        if (texture2dProgram != null) {
            if (z6) {
                texture2dProgram.release();
            }
            this.mProgram = null;
        }
    }

    public FullFrameRect(Texture2dProgram texture2dProgram) {
        float[] fArr = new float[16];
        this.mvpMatrix = fArr;
        this.mProgram = texture2dProgram;
        Matrix.setIdentityM(fArr, 0);
    }
}
