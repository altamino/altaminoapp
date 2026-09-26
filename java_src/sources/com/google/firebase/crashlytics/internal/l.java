package com.google.firebase.crashlytics.internal;

import com.google.firebase.crashlytics.internal.metadata.n;

/* JADX INFO: loaded from: classes10.dex */
public class l {
    private final o4.a<d5.a> remoteConfigInteropDeferred;

    public void c(n nVar) {
        if (nVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
        } else {
            final e eVar = new e(nVar);
            this.remoteConfigInteropDeferred.a(new o4.a.InterfaceC0470a() { // from class: com.google.firebase.crashlytics.internal.k
                @Override // o4.a.InterfaceC0470a
                public final void a(o4.b bVar) {
                    l.b(eVar, bVar);
                }
            });
        }
    }

    public l(o4.a<d5.a> aVar) {
        this.remoteConfigInteropDeferred = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(e eVar, o4.b bVar) {
        ((d5.a) bVar.get()).a(com.google.firebase.remoteconfig.c.DEFAULT_NAMESPACE, eVar);
        g.f().b("Registering RemoteConfig Rollouts subscriber");
    }
}
