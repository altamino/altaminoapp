package com.google.android.play.core.listener;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.ae;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class a<StateT> {
    protected final ae a;
    private final IntentFilter b;
    private final Context c;
    private final Set<StateUpdatedListener<StateT>> d = new HashSet();
    private b e = null;
    private volatile boolean f = false;

    protected a(ae aeVar, IntentFilter intentFilter, Context context) {
        this.a = aeVar;
        this.b = intentFilter;
        this.c = context;
    }

    private final void a() {
        b bVar;
        if ((this.f || !this.d.isEmpty()) && this.e == null) {
            this.e = new b(this, (byte) 0);
            this.c.registerReceiver(this.e, this.b);
        }
        if (this.f || !this.d.isEmpty() || (bVar = this.e) == null) {
            return;
        }
        this.c.unregisterReceiver(bVar);
        this.e = null;
    }

    protected abstract void a(Context context, Intent intent);

    public final synchronized void a(StateT statet) {
        Iterator<StateUpdatedListener<StateT>> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().onStateUpdate(statet);
        }
    }

    public final synchronized void a(boolean z) {
        this.f = true;
        a();
    }
}
