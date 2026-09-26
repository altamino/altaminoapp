package g1;

import androidx.annotation.GuardedBy;

/* JADX INFO: loaded from: classes5.dex */
public class b<TResult> extends a<TResult> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy
    private TResult f3223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy
    private Exception f3224c;

    @GuardedBy
    private volatile boolean e;
    private volatile boolean f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3222a = new Object();
    private c<TResult> d = new c<>();
}
