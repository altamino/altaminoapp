package com.google.android.material.internal;

import android.widget.Checkable;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.i;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public interface i<T extends i<T>> extends Checkable {

    public interface a<C> {
        void a(C c7, boolean z6);
    }

    @IdRes
    int getId();

    void setInternalOnCheckedChangeListener(@Nullable a<T> aVar);
}
