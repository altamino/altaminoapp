package com.narvii.video.gles;

import android.opengl.Matrix;
import com.narvii.video.gles.Drawable2d;

/* loaded from: classes3.dex */
public class FullFrameRect {
    private Texture2dProgram mProgram;
    private final Drawable2d mRectDrawable = new Drawable2d(Drawable2d.Prefab.FULL_RECTANGLE);
    float[] mvpMatrix = new float[16];

    public FullFrameRect(Texture2dProgram texture2dProgram) {
        this.mProgram = texture2dProgram;
        Matrix.setIdentityM(this.mvpMatrix, 0);
    }

    public void release(boolean z) {
        Texture2dProgram texture2dProgram = this.mProgram;
        if (texture2dProgram != null) {
            if (z) {
                texture2dProgram.release();
            }
            this.mProgram = null;
        }
    }

    public Texture2dProgram getProgram() {
        return this.mProgram;
    }

    public void changeProgram(Texture2dProgram texture2dProgram) {
        this.mProgram.release();
        this.mProgram = texture2dProgram;
    }

    public int createTextureObject() {
        return this.mProgram.createTextureObject();
    }

    public void rotation(int i) {
        double d = i;
        Double.isNaN(d);
        double d2 = (d / 180.0d) * 3.141592653589793d;
        this.mvpMatrix[0] = (float) Math.cos(d2);
        this.mvpMatrix[1] = -((float) Math.sin(d2));
        this.mvpMatrix[4] = (float) Math.sin(d2);
        this.mvpMatrix[5] = (float) Math.cos(d2);
    }

    public void drawFrame(int i, float[] fArr) {
        Texture2dProgram texture2dProgram = this.mProgram;
        if (texture2dProgram == null) {
            return;
        }
        texture2dProgram.draw(this.mvpMatrix, this.mRectDrawable.getVertexArray(), 0, this.mRectDrawable.getVertexCount(), this.mRectDrawable.getCoordsPerVertex(), this.mRectDrawable.getVertexStride(), fArr, this.mRectDrawable.getTexCoordArray(), i, this.mRectDrawable.getTexCoordStride());
    }
}
