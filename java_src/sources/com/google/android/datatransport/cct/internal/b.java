package com.google.android.datatransport.cct.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public final class b implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new b();

    private static final class a implements j4.d<com.google.android.datatransport.cct.internal.a> {
        static final a INSTANCE = new a();
        private static final j4.c SDKVERSION_DESCRIPTOR = j4.c.d("sdkVersion");
        private static final j4.c MODEL_DESCRIPTOR = j4.c.d("model");
        private static final j4.c HARDWARE_DESCRIPTOR = j4.c.d("hardware");
        private static final j4.c DEVICE_DESCRIPTOR = j4.c.d("device");
        private static final j4.c PRODUCT_DESCRIPTOR = j4.c.d("product");
        private static final j4.c OSBUILD_DESCRIPTOR = j4.c.d("osBuild");
        private static final j4.c MANUFACTURER_DESCRIPTOR = j4.c.d("manufacturer");
        private static final j4.c FINGERPRINT_DESCRIPTOR = j4.c.d("fingerprint");
        private static final j4.c LOCALE_DESCRIPTOR = j4.c.d("locale");
        private static final j4.c COUNTRY_DESCRIPTOR = j4.c.d("country");
        private static final j4.c MCCMNC_DESCRIPTOR = j4.c.d("mccMnc");
        private static final j4.c APPLICATIONBUILD_DESCRIPTOR = j4.c.d("applicationBuild");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.android.datatransport.cct.internal.a aVar, j4.e eVar) throws IOException {
            eVar.c(SDKVERSION_DESCRIPTOR, aVar.m());
            eVar.c(MODEL_DESCRIPTOR, aVar.j());
            eVar.c(HARDWARE_DESCRIPTOR, aVar.f());
            eVar.c(DEVICE_DESCRIPTOR, aVar.d());
            eVar.c(PRODUCT_DESCRIPTOR, aVar.l());
            eVar.c(OSBUILD_DESCRIPTOR, aVar.k());
            eVar.c(MANUFACTURER_DESCRIPTOR, aVar.h());
            eVar.c(FINGERPRINT_DESCRIPTOR, aVar.e());
            eVar.c(LOCALE_DESCRIPTOR, aVar.g());
            eVar.c(COUNTRY_DESCRIPTOR, aVar.c());
            eVar.c(MCCMNC_DESCRIPTOR, aVar.i());
            eVar.c(APPLICATIONBUILD_DESCRIPTOR, aVar.b());
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.google.android.datatransport.cct.internal.b$b, reason: collision with other inner class name */
    private static final class C0159b implements j4.d<j> {
        static final C0159b INSTANCE = new C0159b();
        private static final j4.c LOGREQUEST_DESCRIPTOR = j4.c.d("logRequest");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(j jVar, j4.e eVar) throws IOException {
            eVar.c(LOGREQUEST_DESCRIPTOR, jVar.c());
        }

        private C0159b() {
        }
    }

    private static final class c implements j4.d<k> {
        static final c INSTANCE = new c();
        private static final j4.c CLIENTTYPE_DESCRIPTOR = j4.c.d("clientType");
        private static final j4.c ANDROIDCLIENTINFO_DESCRIPTOR = j4.c.d("androidClientInfo");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(k kVar, j4.e eVar) throws IOException {
            eVar.c(CLIENTTYPE_DESCRIPTOR, kVar.c());
            eVar.c(ANDROIDCLIENTINFO_DESCRIPTOR, kVar.b());
        }

        private c() {
        }
    }

    private static final class d implements j4.d<l> {
        static final d INSTANCE = new d();
        private static final j4.c EVENTTIMEMS_DESCRIPTOR = j4.c.d("eventTimeMs");
        private static final j4.c EVENTCODE_DESCRIPTOR = j4.c.d("eventCode");
        private static final j4.c EVENTUPTIMEMS_DESCRIPTOR = j4.c.d("eventUptimeMs");
        private static final j4.c SOURCEEXTENSION_DESCRIPTOR = j4.c.d("sourceExtension");
        private static final j4.c SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR = j4.c.d("sourceExtensionJsonProto3");
        private static final j4.c TIMEZONEOFFSETSECONDS_DESCRIPTOR = j4.c.d("timezoneOffsetSeconds");
        private static final j4.c NETWORKCONNECTIONINFO_DESCRIPTOR = j4.c.d("networkConnectionInfo");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(l lVar, j4.e eVar) throws IOException {
            eVar.e(EVENTTIMEMS_DESCRIPTOR, lVar.c());
            eVar.c(EVENTCODE_DESCRIPTOR, lVar.b());
            eVar.e(EVENTUPTIMEMS_DESCRIPTOR, lVar.d());
            eVar.c(SOURCEEXTENSION_DESCRIPTOR, lVar.f());
            eVar.c(SOURCEEXTENSIONJSONPROTO3_DESCRIPTOR, lVar.g());
            eVar.e(TIMEZONEOFFSETSECONDS_DESCRIPTOR, lVar.h());
            eVar.c(NETWORKCONNECTIONINFO_DESCRIPTOR, lVar.e());
        }

        private d() {
        }
    }

    private static final class e implements j4.d<m> {
        static final e INSTANCE = new e();
        private static final j4.c REQUESTTIMEMS_DESCRIPTOR = j4.c.d("requestTimeMs");
        private static final j4.c REQUESTUPTIMEMS_DESCRIPTOR = j4.c.d("requestUptimeMs");
        private static final j4.c CLIENTINFO_DESCRIPTOR = j4.c.d("clientInfo");
        private static final j4.c LOGSOURCE_DESCRIPTOR = j4.c.d("logSource");
        private static final j4.c LOGSOURCENAME_DESCRIPTOR = j4.c.d("logSourceName");
        private static final j4.c LOGEVENT_DESCRIPTOR = j4.c.d("logEvent");
        private static final j4.c QOSTIER_DESCRIPTOR = j4.c.d("qosTier");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(m mVar, j4.e eVar) throws IOException {
            eVar.e(REQUESTTIMEMS_DESCRIPTOR, mVar.g());
            eVar.e(REQUESTUPTIMEMS_DESCRIPTOR, mVar.h());
            eVar.c(CLIENTINFO_DESCRIPTOR, mVar.b());
            eVar.c(LOGSOURCE_DESCRIPTOR, mVar.d());
            eVar.c(LOGSOURCENAME_DESCRIPTOR, mVar.e());
            eVar.c(LOGEVENT_DESCRIPTOR, mVar.c());
            eVar.c(QOSTIER_DESCRIPTOR, mVar.f());
        }

        private e() {
        }
    }

    private static final class f implements j4.d<o> {
        static final f INSTANCE = new f();
        private static final j4.c NETWORKTYPE_DESCRIPTOR = j4.c.d("networkType");
        private static final j4.c MOBILESUBTYPE_DESCRIPTOR = j4.c.d("mobileSubtype");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(o oVar, j4.e eVar) throws IOException {
            eVar.c(NETWORKTYPE_DESCRIPTOR, oVar.c());
            eVar.c(MOBILESUBTYPE_DESCRIPTOR, oVar.b());
        }

        private f() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        C0159b c0159b = C0159b.INSTANCE;
        bVar.a(j.class, c0159b);
        bVar.a(com.google.android.datatransport.cct.internal.d.class, c0159b);
        e eVar = e.INSTANCE;
        bVar.a(m.class, eVar);
        bVar.a(g.class, eVar);
        c cVar = c.INSTANCE;
        bVar.a(k.class, cVar);
        bVar.a(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.INSTANCE;
        bVar.a(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.a(com.google.android.datatransport.cct.internal.c.class, aVar);
        d dVar = d.INSTANCE;
        bVar.a(l.class, dVar);
        bVar.a(com.google.android.datatransport.cct.internal.f.class, dVar);
        f fVar = f.INSTANCE;
        bVar.a(o.class, fVar);
        bVar.a(i.class, fVar);
    }

    private b() {
    }
}
