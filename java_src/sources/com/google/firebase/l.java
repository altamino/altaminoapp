package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class l extends Exception {
    @Deprecated
    protected l() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NonNull String str) {
        super(str);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NonNull String str, @NonNull Throwable th) {
        super(str, th);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }
}
