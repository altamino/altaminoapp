package com.google.firebase.sessions;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class c implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new c();

    private static final class a implements j4.d<com.google.firebase.sessions.a> {
        static final a INSTANCE = new a();
        private static final j4.c PACKAGENAME_DESCRIPTOR = j4.c.d("packageName");
        private static final j4.c VERSIONNAME_DESCRIPTOR = j4.c.d("versionName");
        private static final j4.c APPBUILDVERSION_DESCRIPTOR = j4.c.d("appBuildVersion");
        private static final j4.c DEVICEMANUFACTURER_DESCRIPTOR = j4.c.d("deviceManufacturer");
        private static final j4.c CURRENTPROCESSDETAILS_DESCRIPTOR = j4.c.d("currentProcessDetails");
        private static final j4.c APPPROCESSDETAILS_DESCRIPTOR = j4.c.d("appProcessDetails");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.a aVar, j4.e eVar) throws IOException {
            eVar.c(PACKAGENAME_DESCRIPTOR, aVar.e());
            eVar.c(VERSIONNAME_DESCRIPTOR, aVar.f());
            eVar.c(APPBUILDVERSION_DESCRIPTOR, aVar.a());
            eVar.c(DEVICEMANUFACTURER_DESCRIPTOR, aVar.d());
            eVar.c(CURRENTPROCESSDETAILS_DESCRIPTOR, aVar.c());
            eVar.c(APPPROCESSDETAILS_DESCRIPTOR, aVar.b());
        }

        private a() {
        }
    }

    private static final class b implements j4.d<com.google.firebase.sessions.b> {
        static final b INSTANCE = new b();
        private static final j4.c APPID_DESCRIPTOR = j4.c.d("appId");
        private static final j4.c DEVICEMODEL_DESCRIPTOR = j4.c.d("deviceModel");
        private static final j4.c SESSIONSDKVERSION_DESCRIPTOR = j4.c.d("sessionSdkVersion");
        private static final j4.c OSVERSION_DESCRIPTOR = j4.c.d("osVersion");
        private static final j4.c LOGENVIRONMENT_DESCRIPTOR = j4.c.d("logEnvironment");
        private static final j4.c ANDROIDAPPINFO_DESCRIPTOR = j4.c.d("androidAppInfo");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.b bVar, j4.e eVar) throws IOException {
            eVar.c(APPID_DESCRIPTOR, bVar.b());
            eVar.c(DEVICEMODEL_DESCRIPTOR, bVar.c());
            eVar.c(SESSIONSDKVERSION_DESCRIPTOR, bVar.f());
            eVar.c(OSVERSION_DESCRIPTOR, bVar.e());
            eVar.c(LOGENVIRONMENT_DESCRIPTOR, bVar.d());
            eVar.c(ANDROIDAPPINFO_DESCRIPTOR, bVar.a());
        }

        private b() {
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.c$c, reason: collision with other inner class name */
    private static final class C0268c implements j4.d<com.google.firebase.sessions.e> {
        static final C0268c INSTANCE = new C0268c();
        private static final j4.c PERFORMANCE_DESCRIPTOR = j4.c.d("performance");
        private static final j4.c CRASHLYTICS_DESCRIPTOR = j4.c.d("crashlytics");
        private static final j4.c SESSIONSAMPLINGRATE_DESCRIPTOR = j4.c.d("sessionSamplingRate");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.e eVar, j4.e eVar2) throws IOException {
            eVar2.c(PERFORMANCE_DESCRIPTOR, eVar.b());
            eVar2.c(CRASHLYTICS_DESCRIPTOR, eVar.a());
            eVar2.d(SESSIONSAMPLINGRATE_DESCRIPTOR, eVar.c());
        }

        private C0268c() {
        }
    }

    private static final class d implements j4.d<t> {
        static final d INSTANCE = new d();
        private static final j4.c PROCESSNAME_DESCRIPTOR = j4.c.d("processName");
        private static final j4.c PID_DESCRIPTOR = j4.c.d("pid");
        private static final j4.c IMPORTANCE_DESCRIPTOR = j4.c.d("importance");
        private static final j4.c DEFAULTPROCESS_DESCRIPTOR = j4.c.d("defaultProcess");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(t tVar, j4.e eVar) throws IOException {
            eVar.c(PROCESSNAME_DESCRIPTOR, tVar.c());
            eVar.f(PID_DESCRIPTOR, tVar.b());
            eVar.f(IMPORTANCE_DESCRIPTOR, tVar.a());
            eVar.g(DEFAULTPROCESS_DESCRIPTOR, tVar.d());
        }

        private d() {
        }
    }

    private static final class e implements j4.d<z> {
        static final e INSTANCE = new e();
        private static final j4.c EVENTTYPE_DESCRIPTOR = j4.c.d("eventType");
        private static final j4.c SESSIONDATA_DESCRIPTOR = j4.c.d("sessionData");
        private static final j4.c APPLICATIONINFO_DESCRIPTOR = j4.c.d("applicationInfo");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(z zVar, j4.e eVar) throws IOException {
            eVar.c(EVENTTYPE_DESCRIPTOR, zVar.b());
            eVar.c(SESSIONDATA_DESCRIPTOR, zVar.c());
            eVar.c(APPLICATIONINFO_DESCRIPTOR, zVar.a());
        }

        private e() {
        }
    }

    private static final class f implements j4.d<e0> {
        static final f INSTANCE = new f();
        private static final j4.c SESSIONID_DESCRIPTOR = j4.c.d("sessionId");
        private static final j4.c FIRSTSESSIONID_DESCRIPTOR = j4.c.d("firstSessionId");
        private static final j4.c SESSIONINDEX_DESCRIPTOR = j4.c.d("sessionIndex");
        private static final j4.c EVENTTIMESTAMPUS_DESCRIPTOR = j4.c.d("eventTimestampUs");
        private static final j4.c DATACOLLECTIONSTATUS_DESCRIPTOR = j4.c.d("dataCollectionStatus");
        private static final j4.c FIREBASEINSTALLATIONID_DESCRIPTOR = j4.c.d("firebaseInstallationId");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(e0 e0Var, j4.e eVar) throws IOException {
            eVar.c(SESSIONID_DESCRIPTOR, e0Var.e());
            eVar.c(FIRSTSESSIONID_DESCRIPTOR, e0Var.d());
            eVar.f(SESSIONINDEX_DESCRIPTOR, e0Var.f());
            eVar.e(EVENTTIMESTAMPUS_DESCRIPTOR, e0Var.b());
            eVar.c(DATACOLLECTIONSTATUS_DESCRIPTOR, e0Var.a());
            eVar.c(FIREBASEINSTALLATIONID_DESCRIPTOR, e0Var.c());
        }

        private f() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        bVar.a(z.class, e.INSTANCE);
        bVar.a(e0.class, f.INSTANCE);
        bVar.a(com.google.firebase.sessions.e.class, C0268c.INSTANCE);
        bVar.a(com.google.firebase.sessions.b.class, b.INSTANCE);
        bVar.a(com.google.firebase.sessions.a.class, a.INSTANCE);
        bVar.a(t.class, d.INSTANCE);
    }

    private c() {
    }
}
