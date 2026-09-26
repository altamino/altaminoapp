package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
@AutoValue
public abstract class j {
    @NonNull
    public abstract List<m> c();

    @NonNull
    public static j a(@NonNull List<m> list) {
        return new d(list);
    }

    @NonNull
    public static j4.a b() {
        return new com.google.firebase.encoders.json.d().j(b.CONFIG).k(true).i();
    }
}
