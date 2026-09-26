package androidx.media3.exoplayer.audio;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class a0 implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Handler f448a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f448a.post(runnable);
    }
}
