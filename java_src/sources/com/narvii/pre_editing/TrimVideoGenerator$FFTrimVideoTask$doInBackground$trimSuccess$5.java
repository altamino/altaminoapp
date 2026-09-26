package com.narvii.pre_editing;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5 extends v implements l<Float, Float> {
    public static final TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5 INSTANCE = new TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5();

    TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5() {
        super(1);
    }

    @NotNull
    public final Float invoke(float f) {
        return Float.valueOf((f * 0.2f) + 0.8f);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }
}
