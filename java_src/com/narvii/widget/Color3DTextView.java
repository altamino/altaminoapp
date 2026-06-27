package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.TextView;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class Color3DTextView extends TextView {
    private int[] colors;
    private int height;
    private LinearGradient linearGradient;
    private int shadowColor;
    private int shadowDx;
    private int shadowDy;
    private float shadowRadius;

    public Color3DTextView(Context context) {
        super(context);
        this.colors = new int[]{-1, -1};
    }

    public Color3DTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colors = new int[]{-1, -1};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Color3DTextView);
        this.shadowColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.shadowDx = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.shadowDy = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0);
        this.shadowRadius = 0.01f;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.height = i2;
        this.linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, this.height, this.colors, (float[]) null, Shader.TileMode.CLAMP);
    }

    public void setTextColors(int[] iArr) {
        this.colors = iArr;
        this.linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, this.height, iArr, (float[]) null, Shader.TileMode.CLAMP);
        invalidate();
    }

    public void setShadowColor(int i) {
        this.shadowColor = i;
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.shadowColor != 0 && (this.shadowDx != 0 || this.shadowDy != 0)) {
            getPaint().setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, this.shadowColor);
            getPaint().setShader(null);
            super.onDraw(canvas);
        }
        getPaint().clearShadowLayer();
        getPaint().setShader(this.linearGradient);
        super.onDraw(canvas);
    }
}
