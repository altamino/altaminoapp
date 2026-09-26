package androidx.work.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.impl.model.WorkGenerationalId;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public interface ExecutionListener {
    void e(@NonNull WorkGenerationalId id, boolean needsReschedule);
}
