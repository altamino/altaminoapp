package androidx.media3.exoplayer.scheduler;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public interface Scheduler {
    boolean a(Requirements requirements, String str, String str2);

    Requirements b(Requirements requirements);

    boolean cancel();
}
