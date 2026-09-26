package com.narvii.pre_editing;

import android.os.AsyncTask;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TrimVideoGenerator$startTrimVideo$1$2 extends v implements l<TrimVideoGenerator.BaseTrimVideoTask<?>, Boolean> {
    public static final TrimVideoGenerator$startTrimVideo$1$2 INSTANCE = new TrimVideoGenerator$startTrimVideo$1$2();

    TrimVideoGenerator$startTrimVideo$1$2() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    public final Boolean invoke(@NotNull TrimVideoGenerator.BaseTrimVideoTask<?> it) {
        t.j(it, "it");
        return Boolean.valueOf(it.getStatus() == AsyncTask.Status.FINISHED);
    }
}
