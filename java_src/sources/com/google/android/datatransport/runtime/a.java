package com.google.android.datatransport.runtime;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new a();

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.a$a, reason: collision with other inner class name */
    private static final class C0160a implements j4.d<h2.a> {
        static final C0160a INSTANCE = new C0160a();
        private static final j4.c WINDOW_DESCRIPTOR = j4.c.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c LOGSOURCEMETRICS_DESCRIPTOR = j4.c.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
        private static final j4.c GLOBALMETRICS_DESCRIPTOR = j4.c.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();
        private static final j4.c APPNAMESPACE_DESCRIPTOR = j4.c.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.a aVar, j4.e eVar) throws IOException {
            eVar.c(WINDOW_DESCRIPTOR, aVar.d());
            eVar.c(LOGSOURCEMETRICS_DESCRIPTOR, aVar.c());
            eVar.c(GLOBALMETRICS_DESCRIPTOR, aVar.b());
            eVar.c(APPNAMESPACE_DESCRIPTOR, aVar.a());
        }

        private C0160a() {
        }
    }

    private static final class b implements j4.d<h2.b> {
        static final b INSTANCE = new b();
        private static final j4.c STORAGEMETRICS_DESCRIPTOR = j4.c.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.b bVar, j4.e eVar) throws IOException {
            eVar.c(STORAGEMETRICS_DESCRIPTOR, bVar.a());
        }

        private b() {
        }
    }

    private static final class c implements j4.d<h2.c> {
        static final c INSTANCE = new c();
        private static final j4.c EVENTSDROPPEDCOUNT_DESCRIPTOR = j4.c.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c REASON_DESCRIPTOR = j4.c.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.c cVar, j4.e eVar) throws IOException {
            eVar.e(EVENTSDROPPEDCOUNT_DESCRIPTOR, cVar.a());
            eVar.c(REASON_DESCRIPTOR, cVar.b());
        }

        private c() {
        }
    }

    private static final class d implements j4.d<h2.d> {
        static final d INSTANCE = new d();
        private static final j4.c LOGSOURCE_DESCRIPTOR = j4.c.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c LOGEVENTDROPPED_DESCRIPTOR = j4.c.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.d dVar, j4.e eVar) throws IOException {
            eVar.c(LOGSOURCE_DESCRIPTOR, dVar.b());
            eVar.c(LOGEVENTDROPPED_DESCRIPTOR, dVar.a());
        }

        private d() {
        }
    }

    private static final class e implements j4.d<m> {
        static final e INSTANCE = new e();
        private static final j4.c CLIENTMETRICS_DESCRIPTOR = j4.c.d("clientMetrics");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(m mVar, j4.e eVar) throws IOException {
            eVar.c(CLIENTMETRICS_DESCRIPTOR, mVar.b());
        }

        private e() {
        }
    }

    private static final class f implements j4.d<h2.e> {
        static final f INSTANCE = new f();
        private static final j4.c CURRENTCACHESIZEBYTES_DESCRIPTOR = j4.c.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c MAXCACHESIZEBYTES_DESCRIPTOR = j4.c.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.e eVar, j4.e eVar2) throws IOException {
            eVar2.e(CURRENTCACHESIZEBYTES_DESCRIPTOR, eVar.a());
            eVar2.e(MAXCACHESIZEBYTES_DESCRIPTOR, eVar.b());
        }

        private f() {
        }
    }

    private static final class g implements j4.d<h2.f> {
        static final g INSTANCE = new g();
        private static final j4.c STARTMS_DESCRIPTOR = j4.c.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        private static final j4.c ENDMS_DESCRIPTOR = j4.c.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(h2.f fVar, j4.e eVar) throws IOException {
            eVar.e(STARTMS_DESCRIPTOR, fVar.b());
            eVar.e(ENDMS_DESCRIPTOR, fVar.a());
        }

        private g() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        bVar.a(m.class, e.INSTANCE);
        bVar.a(h2.a.class, C0160a.INSTANCE);
        bVar.a(h2.f.class, g.INSTANCE);
        bVar.a(h2.d.class, d.INSTANCE);
        bVar.a(h2.c.class, c.INSTANCE);
        bVar.a(h2.b.class, b.INSTANCE);
        bVar.a(h2.e.class, f.INSTANCE);
    }

    private a() {
    }
}
