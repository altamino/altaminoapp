package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
@AutoValue
public abstract class u {
    public abstract com.google.firebase.crashlytics.internal.model.f0 b();

    public abstract File c();

    public abstract String d();

    @NonNull
    public static u a(com.google.firebase.crashlytics.internal.model.f0 f0Var, String str, File file) {
        return new b(f0Var, str, file);
    }
}
