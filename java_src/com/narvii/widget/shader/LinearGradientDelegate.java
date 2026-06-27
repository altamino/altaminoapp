package com.narvii.widget.shader;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LinearGradientDelegate.kt */
/* loaded from: classes3.dex */
public final class LinearGradientDelegate {
    private int color0;
    private int color1;
    private LinearGradient gradient;
    private Shader.TileMode tile = Shader.TileMode.CLAMP;
    private float x0;
    private float x1;
    private float y0;
    private float y1;

    public final void setShade(float f, float f2, float f3, float f4, int i, int i2, Shader.TileMode tile) {
        Intrinsics.checkParameterIsNotNull(tile, "tile");
        if (this.x0 == f && this.y0 == f2 && this.x1 == f3 && this.y1 == f4 && this.color0 == i && this.color1 == i2 && this.tile == tile) {
            return;
        }
        this.x0 = f;
        this.y0 = f2;
        this.x1 = f3;
        this.y1 = f4;
        this.color0 = i;
        this.color1 = i2;
        this.tile = tile;
        this.gradient = new LinearGradient(f, f2, f3, f4, i, i2, tile);
    }

    public final LinearGradient getShade() {
        LinearGradient linearGradient = this.gradient;
        return linearGradient != null ? linearGradient : new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, Shader.TileMode.CLAMP);
    }
}
