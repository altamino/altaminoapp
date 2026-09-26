package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes11.dex */
public final class d {

    @VisibleForTesting
    static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.RGB_565;
    private final Bitmap.Config config;
    private final int height;
    private final int weight;
    private final int width;

    Bitmap.Config a() {
        return this.config;
    }

    int b() {
        return this.height;
    }

    int c() {
        return this.width;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.height == dVar.height && this.width == dVar.width && this.weight == dVar.weight && this.config == dVar.config;
    }

    public int hashCode() {
        return (((((this.width * 31) + this.height) * 31) + this.config.hashCode()) * 31) + this.weight;
    }

    public String toString() {
        return "PreFillSize{width=" + this.width + ", height=" + this.height + ", config=" + this.config + ", weight=" + this.weight + kotlinx.serialization.json.internal.b.END_OBJ;
    }
}
