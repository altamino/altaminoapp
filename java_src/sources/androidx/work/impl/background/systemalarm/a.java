package androidx.work.impl.background.systemalarm;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DelayMetCommandHandler f871a;

    public /* synthetic */ a(DelayMetCommandHandler delayMetCommandHandler) {
        this.f871a = delayMetCommandHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f871a.j();
    }
}
