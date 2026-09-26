package androidx.work.impl.foreground;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public interface ForegroundProcessor {
    void a(@NonNull String workSpecId);

    boolean b(@NonNull String workSpecId);

    void c(@NonNull String workSpecId, @NonNull ForegroundInfo foregroundInfo);
}
