package com.narvii.widget;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes11.dex */
public class ColorTextView extends TextView {
    private int[] colors;
    private int height;

    public ColorTextView(Context context) {
        super(context);
        this.colors = new int[]{-1, -1};
    }

    public ColorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colors = new int[]{-1, -1};
    }

    public void setTextColors(int[] iArr) {
        this.colors = iArr;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.height = i11;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.height, 0.0f, this.colors, (float[]) null, Shader.TileMode.CLAMP);
        Matrix matrix = new Matrix();
        matrix.setRotate(90.0f);
        linearGradient.setLocalMatrix(matrix);
        getPaint().setShader(linearGradient);
    }
}
