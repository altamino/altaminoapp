package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class u implements t {
    private static volatile v instance;
    private final m2.a eventClock;
    private final k2.e scheduler;
    private final com.google.android.datatransport.runtime.scheduling.jobscheduling.r uploader;
    private final m2.a uptimeClock;

    @RestrictTo
    public com.google.android.datatransport.runtime.scheduling.jobscheduling.r e() {
        return this.uploader;
    }

    public static u c() {
        v vVar = instance;
        if (vVar != null) {
            return vVar.h();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<f2.b> d(f fVar) {
        return fVar instanceof g ? Collections.unmodifiableSet(((g) fVar).a()) : Collections.singleton(f2.b.b("proto"));
    }

    public static void f(Context context) {
        if (instance == null) {
            synchronized (u.class) {
                try {
                    if (instance == null) {
                        instance = e.k().a(context).build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.t
    public void a(o oVar, f2.h hVar) {
        this.scheduler.a(oVar.f().f(oVar.c().c()), b(oVar), hVar);
    }

    public f2.g g(f fVar) {
        return new q(d(fVar), p.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }

    u(m2.a aVar, m2.a aVar2, k2.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.r rVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.v vVar) {
        this.eventClock = aVar;
        this.uptimeClock = aVar2;
        this.scheduler = eVar;
        this.uploader = rVar;
        vVar.c();
    }

    private i b(o oVar) {
        return i.a().i(this.eventClock.a()).k(this.uptimeClock.a()).j(oVar.g()).h(new h(oVar.b(), oVar.d())).g(oVar.c().a()).d();
    }
}
