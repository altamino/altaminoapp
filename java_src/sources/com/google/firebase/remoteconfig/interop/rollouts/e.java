package com.google.firebase.remoteconfig.interop.rollouts;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@AutoValue
public abstract class e {
    @NonNull
    public abstract Set<d> b();

    @NonNull
    public static e a(@NonNull Set<d> set) {
        return new c(set);
    }
}
