package com.narvii.widget.shader;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LinearGradientDelegate {
    private int color0;
    private int color1;

    @Nullable
    private LinearGradient gradient;

    @NotNull
    private Shader.TileMode tile = Shader.TileMode.CLAMP;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private float f3081x0;
    private float x1;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private float f3082y0;
    private float y1;

    public final void setShade(float f, float f6, float f7, float f10, int i10, int i11, @NotNull Shader.TileMode tile) {
        t.j(tile, "tile");
        if (this.f3081x0 == f && this.f3082y0 == f6 && this.x1 == f7 && this.y1 == f10 && this.color0 == i10 && this.color1 == i11 && this.tile == tile) {
            return;
        }
        this.f3081x0 = f;
        this.f3082y0 = f6;
        this.x1 = f7;
        this.y1 = f10;
        this.color0 = i10;
        this.color1 = i11;
        this.tile = tile;
        this.gradient = new LinearGradient(f, f6, f7, f10, i10, i11, tile);
    }

    @NotNull
    public final LinearGradient getShade() {
        LinearGradient linearGradient = this.gradient;
        return linearGradient == null ? new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, Shader.TileMode.CLAMP) : linearGradient;
    }
}
