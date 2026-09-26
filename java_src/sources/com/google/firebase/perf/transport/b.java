package com.google.firebase.perf.transport;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes11.dex */
final class b {
    private static final y4.a logger = y4.a.e();
    private f2.f<com.google.firebase.perf.v1.i> flgTransport;
    private final o4.b<f2.g> flgTransportFactoryProvider;
    private final String logSourceName;

    private boolean a() {
        if (this.flgTransport == null) {
            f2.g gVar = this.flgTransportFactoryProvider.get();
            if (gVar != null) {
                this.flgTransport = gVar.a(this.logSourceName, com.google.firebase.perf.v1.i.class, f2.b.b("proto"), new f2.e() { // from class: com.google.firebase.perf.transport.a
                    @Override // f2.e
                    public final Object apply(Object obj) {
                        return ((com.google.firebase.perf.v1.i) obj).toByteArray();
                    }
                });
            } else {
                logger.j("Flg TransportFactory is not available at the moment");
            }
        }
        return this.flgTransport != null;
    }

    b(o4.b<f2.g> bVar, String str) {
        this.logSourceName = str;
        this.flgTransportFactoryProvider = bVar;
    }

    @WorkerThread
    public void b(@NonNull com.google.firebase.perf.v1.i iVar) {
        if (!a()) {
            logger.j("Unable to dispatch event because Flg Transport is not available");
        } else {
            this.flgTransport.b(f2.c.d(iVar));
        }
    }
}
