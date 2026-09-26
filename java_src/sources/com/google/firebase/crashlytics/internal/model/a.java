package com.google.firebase.crashlytics.internal.model;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.master.home.profile.GlobalProfileFragment;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new a();

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.a$a, reason: collision with other inner class name */
    private static final class C0233a implements j4.d<f0.a.AbstractC0235a> {
        static final C0233a INSTANCE = new C0233a();
        private static final j4.c ARCH_DESCRIPTOR = j4.c.d("arch");
        private static final j4.c LIBRARYNAME_DESCRIPTOR = j4.c.d("libraryName");
        private static final j4.c BUILDID_DESCRIPTOR = j4.c.d("buildId");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.a.AbstractC0235a abstractC0235a, j4.e eVar) throws IOException {
            eVar.c(ARCH_DESCRIPTOR, abstractC0235a.b());
            eVar.c(LIBRARYNAME_DESCRIPTOR, abstractC0235a.d());
            eVar.c(BUILDID_DESCRIPTOR, abstractC0235a.c());
        }

        private C0233a() {
        }
    }

    private static final class b implements j4.d<f0.a> {
        static final b INSTANCE = new b();
        private static final j4.c PID_DESCRIPTOR = j4.c.d("pid");
        private static final j4.c PROCESSNAME_DESCRIPTOR = j4.c.d("processName");
        private static final j4.c REASONCODE_DESCRIPTOR = j4.c.d("reasonCode");
        private static final j4.c IMPORTANCE_DESCRIPTOR = j4.c.d("importance");
        private static final j4.c PSS_DESCRIPTOR = j4.c.d("pss");
        private static final j4.c RSS_DESCRIPTOR = j4.c.d("rss");
        private static final j4.c TIMESTAMP_DESCRIPTOR = j4.c.d("timestamp");
        private static final j4.c TRACEFILE_DESCRIPTOR = j4.c.d("traceFile");
        private static final j4.c BUILDIDMAPPINGFORARCH_DESCRIPTOR = j4.c.d("buildIdMappingForArch");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.a aVar, j4.e eVar) throws IOException {
            eVar.f(PID_DESCRIPTOR, aVar.d());
            eVar.c(PROCESSNAME_DESCRIPTOR, aVar.e());
            eVar.f(REASONCODE_DESCRIPTOR, aVar.g());
            eVar.f(IMPORTANCE_DESCRIPTOR, aVar.c());
            eVar.e(PSS_DESCRIPTOR, aVar.f());
            eVar.e(RSS_DESCRIPTOR, aVar.h());
            eVar.e(TIMESTAMP_DESCRIPTOR, aVar.i());
            eVar.c(TRACEFILE_DESCRIPTOR, aVar.j());
            eVar.c(BUILDIDMAPPINGFORARCH_DESCRIPTOR, aVar.b());
        }

        private b() {
        }
    }

    private static final class c implements j4.d<f0.c> {
        static final c INSTANCE = new c();
        private static final j4.c KEY_DESCRIPTOR = j4.c.d("key");
        private static final j4.c VALUE_DESCRIPTOR = j4.c.d("value");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.c cVar, j4.e eVar) throws IOException {
            eVar.c(KEY_DESCRIPTOR, cVar.b());
            eVar.c(VALUE_DESCRIPTOR, cVar.c());
        }

        private c() {
        }
    }

    private static final class d implements j4.d<f0> {
        static final d INSTANCE = new d();
        private static final j4.c SDKVERSION_DESCRIPTOR = j4.c.d("sdkVersion");
        private static final j4.c GMPAPPID_DESCRIPTOR = j4.c.d("gmpAppId");
        private static final j4.c PLATFORM_DESCRIPTOR = j4.c.d("platform");
        private static final j4.c INSTALLATIONUUID_DESCRIPTOR = j4.c.d("installationUuid");
        private static final j4.c FIREBASEINSTALLATIONID_DESCRIPTOR = j4.c.d("firebaseInstallationId");
        private static final j4.c APPQUALITYSESSIONID_DESCRIPTOR = j4.c.d("appQualitySessionId");
        private static final j4.c BUILDVERSION_DESCRIPTOR = j4.c.d("buildVersion");
        private static final j4.c DISPLAYVERSION_DESCRIPTOR = j4.c.d("displayVersion");
        private static final j4.c SESSION_DESCRIPTOR = j4.c.d("session");
        private static final j4.c NDKPAYLOAD_DESCRIPTOR = j4.c.d("ndkPayload");
        private static final j4.c APPEXITINFO_DESCRIPTOR = j4.c.d("appExitInfo");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0 f0Var, j4.e eVar) throws IOException {
            eVar.c(SDKVERSION_DESCRIPTOR, f0Var.l());
            eVar.c(GMPAPPID_DESCRIPTOR, f0Var.h());
            eVar.f(PLATFORM_DESCRIPTOR, f0Var.k());
            eVar.c(INSTALLATIONUUID_DESCRIPTOR, f0Var.i());
            eVar.c(FIREBASEINSTALLATIONID_DESCRIPTOR, f0Var.g());
            eVar.c(APPQUALITYSESSIONID_DESCRIPTOR, f0Var.d());
            eVar.c(BUILDVERSION_DESCRIPTOR, f0Var.e());
            eVar.c(DISPLAYVERSION_DESCRIPTOR, f0Var.f());
            eVar.c(SESSION_DESCRIPTOR, f0Var.m());
            eVar.c(NDKPAYLOAD_DESCRIPTOR, f0Var.j());
            eVar.c(APPEXITINFO_DESCRIPTOR, f0Var.c());
        }

        private d() {
        }
    }

    private static final class e implements j4.d<f0.d> {
        static final e INSTANCE = new e();
        private static final j4.c FILES_DESCRIPTOR = j4.c.d("files");
        private static final j4.c ORGID_DESCRIPTOR = j4.c.d("orgId");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.d dVar, j4.e eVar) throws IOException {
            eVar.c(FILES_DESCRIPTOR, dVar.b());
            eVar.c(ORGID_DESCRIPTOR, dVar.c());
        }

        private e() {
        }
    }

    private static final class f implements j4.d<f0.d.b> {
        static final f INSTANCE = new f();
        private static final j4.c FILENAME_DESCRIPTOR = j4.c.d("filename");
        private static final j4.c CONTENTS_DESCRIPTOR = j4.c.d("contents");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.d.b bVar, j4.e eVar) throws IOException {
            eVar.c(FILENAME_DESCRIPTOR, bVar.c());
            eVar.c(CONTENTS_DESCRIPTOR, bVar.b());
        }

        private f() {
        }
    }

    private static final class g implements j4.d<f0.e.a> {
        static final g INSTANCE = new g();
        private static final j4.c IDENTIFIER_DESCRIPTOR = j4.c.d("identifier");
        private static final j4.c VERSION_DESCRIPTOR = j4.c.d("version");
        private static final j4.c DISPLAYVERSION_DESCRIPTOR = j4.c.d("displayVersion");
        private static final j4.c ORGANIZATION_DESCRIPTOR = j4.c.d("organization");
        private static final j4.c INSTALLATIONUUID_DESCRIPTOR = j4.c.d("installationUuid");
        private static final j4.c DEVELOPMENTPLATFORM_DESCRIPTOR = j4.c.d("developmentPlatform");
        private static final j4.c DEVELOPMENTPLATFORMVERSION_DESCRIPTOR = j4.c.d("developmentPlatformVersion");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.a aVar, j4.e eVar) throws IOException {
            eVar.c(IDENTIFIER_DESCRIPTOR, aVar.e());
            eVar.c(VERSION_DESCRIPTOR, aVar.h());
            eVar.c(DISPLAYVERSION_DESCRIPTOR, aVar.d());
            eVar.c(ORGANIZATION_DESCRIPTOR, aVar.g());
            eVar.c(INSTALLATIONUUID_DESCRIPTOR, aVar.f());
            eVar.c(DEVELOPMENTPLATFORM_DESCRIPTOR, aVar.b());
            eVar.c(DEVELOPMENTPLATFORMVERSION_DESCRIPTOR, aVar.c());
        }

        private g() {
        }
    }

    private static final class h implements j4.d<f0.e.a.b> {
        static final h INSTANCE = new h();
        private static final j4.c CLSID_DESCRIPTOR = j4.c.d("clsId");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.a.b bVar, j4.e eVar) throws IOException {
            eVar.c(CLSID_DESCRIPTOR, bVar.a());
        }

        private h() {
        }
    }

    private static final class i implements j4.d<f0.e.c> {
        static final i INSTANCE = new i();
        private static final j4.c ARCH_DESCRIPTOR = j4.c.d("arch");
        private static final j4.c MODEL_DESCRIPTOR = j4.c.d("model");
        private static final j4.c CORES_DESCRIPTOR = j4.c.d("cores");
        private static final j4.c RAM_DESCRIPTOR = j4.c.d("ram");
        private static final j4.c DISKSPACE_DESCRIPTOR = j4.c.d("diskSpace");
        private static final j4.c SIMULATOR_DESCRIPTOR = j4.c.d("simulator");
        private static final j4.c STATE_DESCRIPTOR = j4.c.d("state");
        private static final j4.c MANUFACTURER_DESCRIPTOR = j4.c.d("manufacturer");
        private static final j4.c MODELCLASS_DESCRIPTOR = j4.c.d("modelClass");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.c cVar, j4.e eVar) throws IOException {
            eVar.f(ARCH_DESCRIPTOR, cVar.b());
            eVar.c(MODEL_DESCRIPTOR, cVar.f());
            eVar.f(CORES_DESCRIPTOR, cVar.c());
            eVar.e(RAM_DESCRIPTOR, cVar.h());
            eVar.e(DISKSPACE_DESCRIPTOR, cVar.d());
            eVar.g(SIMULATOR_DESCRIPTOR, cVar.j());
            eVar.f(STATE_DESCRIPTOR, cVar.i());
            eVar.c(MANUFACTURER_DESCRIPTOR, cVar.e());
            eVar.c(MODELCLASS_DESCRIPTOR, cVar.g());
        }

        private i() {
        }
    }

    private static final class j implements j4.d<f0.e> {
        static final j INSTANCE = new j();
        private static final j4.c GENERATOR_DESCRIPTOR = j4.c.d("generator");
        private static final j4.c IDENTIFIER_DESCRIPTOR = j4.c.d("identifier");
        private static final j4.c APPQUALITYSESSIONID_DESCRIPTOR = j4.c.d("appQualitySessionId");
        private static final j4.c STARTEDAT_DESCRIPTOR = j4.c.d("startedAt");
        private static final j4.c ENDEDAT_DESCRIPTOR = j4.c.d("endedAt");
        private static final j4.c CRASHED_DESCRIPTOR = j4.c.d("crashed");
        private static final j4.c APP_DESCRIPTOR = j4.c.d("app");
        private static final j4.c USER_DESCRIPTOR = j4.c.d(GlobalProfileFragment.KEY_USER);
        private static final j4.c OS_DESCRIPTOR = j4.c.d("os");
        private static final j4.c DEVICE_DESCRIPTOR = j4.c.d("device");
        private static final j4.c EVENTS_DESCRIPTOR = j4.c.d("events");
        private static final j4.c GENERATORTYPE_DESCRIPTOR = j4.c.d("generatorType");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e eVar, j4.e eVar2) throws IOException {
            eVar2.c(GENERATOR_DESCRIPTOR, eVar.g());
            eVar2.c(IDENTIFIER_DESCRIPTOR, eVar.j());
            eVar2.c(APPQUALITYSESSIONID_DESCRIPTOR, eVar.c());
            eVar2.e(STARTEDAT_DESCRIPTOR, eVar.l());
            eVar2.c(ENDEDAT_DESCRIPTOR, eVar.e());
            eVar2.g(CRASHED_DESCRIPTOR, eVar.n());
            eVar2.c(APP_DESCRIPTOR, eVar.b());
            eVar2.c(USER_DESCRIPTOR, eVar.m());
            eVar2.c(OS_DESCRIPTOR, eVar.k());
            eVar2.c(DEVICE_DESCRIPTOR, eVar.d());
            eVar2.c(EVENTS_DESCRIPTOR, eVar.f());
            eVar2.f(GENERATORTYPE_DESCRIPTOR, eVar.h());
        }

        private j() {
        }
    }

    private static final class k implements j4.d<f0.e.d.a> {
        static final k INSTANCE = new k();
        private static final j4.c EXECUTION_DESCRIPTOR = j4.c.d("execution");
        private static final j4.c CUSTOMATTRIBUTES_DESCRIPTOR = j4.c.d("customAttributes");
        private static final j4.c INTERNALKEYS_DESCRIPTOR = j4.c.d("internalKeys");
        private static final j4.c BACKGROUND_DESCRIPTOR = j4.c.d("background");
        private static final j4.c CURRENTPROCESSDETAILS_DESCRIPTOR = j4.c.d("currentProcessDetails");
        private static final j4.c APPPROCESSDETAILS_DESCRIPTOR = j4.c.d("appProcessDetails");
        private static final j4.c UIORIENTATION_DESCRIPTOR = j4.c.d("uiOrientation");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a aVar, j4.e eVar) throws IOException {
            eVar.c(EXECUTION_DESCRIPTOR, aVar.f());
            eVar.c(CUSTOMATTRIBUTES_DESCRIPTOR, aVar.e());
            eVar.c(INTERNALKEYS_DESCRIPTOR, aVar.g());
            eVar.c(BACKGROUND_DESCRIPTOR, aVar.c());
            eVar.c(CURRENTPROCESSDETAILS_DESCRIPTOR, aVar.d());
            eVar.c(APPPROCESSDETAILS_DESCRIPTOR, aVar.b());
            eVar.f(UIORIENTATION_DESCRIPTOR, aVar.h());
        }

        private k() {
        }
    }

    private static final class l implements j4.d<f0.e.d.a.b.AbstractC0239a> {
        static final l INSTANCE = new l();
        private static final j4.c BASEADDRESS_DESCRIPTOR = j4.c.d("baseAddress");
        private static final j4.c SIZE_DESCRIPTOR = j4.c.d("size");
        private static final j4.c NAME_DESCRIPTOR = j4.c.d("name");
        private static final j4.c UUID_DESCRIPTOR = j4.c.d("uuid");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0239a abstractC0239a, j4.e eVar) throws IOException {
            eVar.e(BASEADDRESS_DESCRIPTOR, abstractC0239a.b());
            eVar.e(SIZE_DESCRIPTOR, abstractC0239a.d());
            eVar.c(NAME_DESCRIPTOR, abstractC0239a.c());
            eVar.c(UUID_DESCRIPTOR, abstractC0239a.f());
        }

        private l() {
        }
    }

    private static final class m implements j4.d<f0.e.d.a.b> {
        static final m INSTANCE = new m();
        private static final j4.c THREADS_DESCRIPTOR = j4.c.d("threads");
        private static final j4.c EXCEPTION_DESCRIPTOR = j4.c.d("exception");
        private static final j4.c APPEXITINFO_DESCRIPTOR = j4.c.d("appExitInfo");
        private static final j4.c SIGNAL_DESCRIPTOR = j4.c.d("signal");
        private static final j4.c BINARIES_DESCRIPTOR = j4.c.d("binaries");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b bVar, j4.e eVar) throws IOException {
            eVar.c(THREADS_DESCRIPTOR, bVar.f());
            eVar.c(EXCEPTION_DESCRIPTOR, bVar.d());
            eVar.c(APPEXITINFO_DESCRIPTOR, bVar.b());
            eVar.c(SIGNAL_DESCRIPTOR, bVar.e());
            eVar.c(BINARIES_DESCRIPTOR, bVar.c());
        }

        private m() {
        }
    }

    private static final class n implements j4.d<f0.e.d.a.b.c> {
        static final n INSTANCE = new n();
        private static final j4.c TYPE_DESCRIPTOR = j4.c.d("type");
        private static final j4.c REASON_DESCRIPTOR = j4.c.d("reason");
        private static final j4.c FRAMES_DESCRIPTOR = j4.c.d("frames");
        private static final j4.c CAUSEDBY_DESCRIPTOR = j4.c.d("causedBy");
        private static final j4.c OVERFLOWCOUNT_DESCRIPTOR = j4.c.d("overflowCount");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.c cVar, j4.e eVar) throws IOException {
            eVar.c(TYPE_DESCRIPTOR, cVar.f());
            eVar.c(REASON_DESCRIPTOR, cVar.e());
            eVar.c(FRAMES_DESCRIPTOR, cVar.c());
            eVar.c(CAUSEDBY_DESCRIPTOR, cVar.b());
            eVar.f(OVERFLOWCOUNT_DESCRIPTOR, cVar.d());
        }

        private n() {
        }
    }

    private static final class o implements j4.d<f0.e.d.a.b.AbstractC0243d> {
        static final o INSTANCE = new o();
        private static final j4.c NAME_DESCRIPTOR = j4.c.d("name");
        private static final j4.c CODE_DESCRIPTOR = j4.c.d("code");
        private static final j4.c ADDRESS_DESCRIPTOR = j4.c.d("address");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0243d abstractC0243d, j4.e eVar) throws IOException {
            eVar.c(NAME_DESCRIPTOR, abstractC0243d.d());
            eVar.c(CODE_DESCRIPTOR, abstractC0243d.c());
            eVar.e(ADDRESS_DESCRIPTOR, abstractC0243d.b());
        }

        private o() {
        }
    }

    private static final class p implements j4.d<f0.e.d.a.b.AbstractC0245e> {
        static final p INSTANCE = new p();
        private static final j4.c NAME_DESCRIPTOR = j4.c.d("name");
        private static final j4.c IMPORTANCE_DESCRIPTOR = j4.c.d("importance");
        private static final j4.c FRAMES_DESCRIPTOR = j4.c.d("frames");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0245e abstractC0245e, j4.e eVar) throws IOException {
            eVar.c(NAME_DESCRIPTOR, abstractC0245e.d());
            eVar.f(IMPORTANCE_DESCRIPTOR, abstractC0245e.c());
            eVar.c(FRAMES_DESCRIPTOR, abstractC0245e.b());
        }

        private p() {
        }
    }

    private static final class q implements j4.d<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> {
        static final q INSTANCE = new q();
        private static final j4.c PC_DESCRIPTOR = j4.c.d("pc");
        private static final j4.c SYMBOL_DESCRIPTOR = j4.c.d("symbol");
        private static final j4.c FILE_DESCRIPTOR = j4.c.d("file");
        private static final j4.c OFFSET_DESCRIPTOR = j4.c.d(TypedValues.CycleType.S_WAVE_OFFSET);
        private static final j4.c IMPORTANCE_DESCRIPTOR = j4.c.d("importance");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0245e.AbstractC0247b abstractC0247b, j4.e eVar) throws IOException {
            eVar.e(PC_DESCRIPTOR, abstractC0247b.e());
            eVar.c(SYMBOL_DESCRIPTOR, abstractC0247b.f());
            eVar.c(FILE_DESCRIPTOR, abstractC0247b.b());
            eVar.e(OFFSET_DESCRIPTOR, abstractC0247b.d());
            eVar.f(IMPORTANCE_DESCRIPTOR, abstractC0247b.c());
        }

        private q() {
        }
    }

    private static final class r implements j4.d<f0.e.d.a.c> {
        static final r INSTANCE = new r();
        private static final j4.c PROCESSNAME_DESCRIPTOR = j4.c.d("processName");
        private static final j4.c PID_DESCRIPTOR = j4.c.d("pid");
        private static final j4.c IMPORTANCE_DESCRIPTOR = j4.c.d("importance");
        private static final j4.c DEFAULTPROCESS_DESCRIPTOR = j4.c.d("defaultProcess");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.c cVar, j4.e eVar) throws IOException {
            eVar.c(PROCESSNAME_DESCRIPTOR, cVar.d());
            eVar.f(PID_DESCRIPTOR, cVar.c());
            eVar.f(IMPORTANCE_DESCRIPTOR, cVar.b());
            eVar.g(DEFAULTPROCESS_DESCRIPTOR, cVar.e());
        }

        private r() {
        }
    }

    private static final class s implements j4.d<f0.e.d.c> {
        static final s INSTANCE = new s();
        private static final j4.c BATTERYLEVEL_DESCRIPTOR = j4.c.d("batteryLevel");
        private static final j4.c BATTERYVELOCITY_DESCRIPTOR = j4.c.d("batteryVelocity");
        private static final j4.c PROXIMITYON_DESCRIPTOR = j4.c.d("proximityOn");
        private static final j4.c ORIENTATION_DESCRIPTOR = j4.c.d("orientation");
        private static final j4.c RAMUSED_DESCRIPTOR = j4.c.d("ramUsed");
        private static final j4.c DISKUSED_DESCRIPTOR = j4.c.d("diskUsed");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.c cVar, j4.e eVar) throws IOException {
            eVar.c(BATTERYLEVEL_DESCRIPTOR, cVar.b());
            eVar.f(BATTERYVELOCITY_DESCRIPTOR, cVar.c());
            eVar.g(PROXIMITYON_DESCRIPTOR, cVar.g());
            eVar.f(ORIENTATION_DESCRIPTOR, cVar.e());
            eVar.e(RAMUSED_DESCRIPTOR, cVar.f());
            eVar.e(DISKUSED_DESCRIPTOR, cVar.d());
        }

        private s() {
        }
    }

    private static final class t implements j4.d<f0.e.d> {
        static final t INSTANCE = new t();
        private static final j4.c TIMESTAMP_DESCRIPTOR = j4.c.d("timestamp");
        private static final j4.c TYPE_DESCRIPTOR = j4.c.d("type");
        private static final j4.c APP_DESCRIPTOR = j4.c.d("app");
        private static final j4.c DEVICE_DESCRIPTOR = j4.c.d("device");
        private static final j4.c LOG_DESCRIPTOR = j4.c.d("log");
        private static final j4.c ROLLOUTS_DESCRIPTOR = j4.c.d("rollouts");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d dVar, j4.e eVar) throws IOException {
            eVar.e(TIMESTAMP_DESCRIPTOR, dVar.f());
            eVar.c(TYPE_DESCRIPTOR, dVar.g());
            eVar.c(APP_DESCRIPTOR, dVar.b());
            eVar.c(DEVICE_DESCRIPTOR, dVar.c());
            eVar.c(LOG_DESCRIPTOR, dVar.d());
            eVar.c(ROLLOUTS_DESCRIPTOR, dVar.e());
        }

        private t() {
        }
    }

    private static final class u implements j4.d<f0.e.d.AbstractC0250d> {
        static final u INSTANCE = new u();
        private static final j4.c CONTENT_DESCRIPTOR = j4.c.d("content");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0250d abstractC0250d, j4.e eVar) throws IOException {
            eVar.c(CONTENT_DESCRIPTOR, abstractC0250d.b());
        }

        private u() {
        }
    }

    private static final class v implements j4.d<f0.e.d.AbstractC0251e> {
        static final v INSTANCE = new v();
        private static final j4.c ROLLOUTVARIANT_DESCRIPTOR = j4.c.d("rolloutVariant");
        private static final j4.c PARAMETERKEY_DESCRIPTOR = j4.c.d("parameterKey");
        private static final j4.c PARAMETERVALUE_DESCRIPTOR = j4.c.d("parameterValue");
        private static final j4.c TEMPLATEVERSION_DESCRIPTOR = j4.c.d("templateVersion");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0251e abstractC0251e, j4.e eVar) throws IOException {
            eVar.c(ROLLOUTVARIANT_DESCRIPTOR, abstractC0251e.d());
            eVar.c(PARAMETERKEY_DESCRIPTOR, abstractC0251e.b());
            eVar.c(PARAMETERVALUE_DESCRIPTOR, abstractC0251e.c());
            eVar.e(TEMPLATEVERSION_DESCRIPTOR, abstractC0251e.e());
        }

        private v() {
        }
    }

    private static final class w implements j4.d<f0.e.d.AbstractC0251e.b> {
        static final w INSTANCE = new w();
        private static final j4.c ROLLOUTID_DESCRIPTOR = j4.c.d(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_ID);
        private static final j4.c VARIANTID_DESCRIPTOR = j4.c.d(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_VARIANT_ID);

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0251e.b bVar, j4.e eVar) throws IOException {
            eVar.c(ROLLOUTID_DESCRIPTOR, bVar.b());
            eVar.c(VARIANTID_DESCRIPTOR, bVar.c());
        }

        private w() {
        }
    }

    private static final class x implements j4.d<f0.e.d.f> {
        static final x INSTANCE = new x();
        private static final j4.c ASSIGNMENTS_DESCRIPTOR = j4.c.d("assignments");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.f fVar, j4.e eVar) throws IOException {
            eVar.c(ASSIGNMENTS_DESCRIPTOR, fVar.b());
        }

        private x() {
        }
    }

    private static final class y implements j4.d<f0.e.AbstractC0252e> {
        static final y INSTANCE = new y();
        private static final j4.c PLATFORM_DESCRIPTOR = j4.c.d("platform");
        private static final j4.c VERSION_DESCRIPTOR = j4.c.d("version");
        private static final j4.c BUILDVERSION_DESCRIPTOR = j4.c.d("buildVersion");
        private static final j4.c JAILBROKEN_DESCRIPTOR = j4.c.d("jailbroken");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.AbstractC0252e abstractC0252e, j4.e eVar) throws IOException {
            eVar.f(PLATFORM_DESCRIPTOR, abstractC0252e.c());
            eVar.c(VERSION_DESCRIPTOR, abstractC0252e.d());
            eVar.c(BUILDVERSION_DESCRIPTOR, abstractC0252e.b());
            eVar.g(JAILBROKEN_DESCRIPTOR, abstractC0252e.e());
        }

        private y() {
        }
    }

    private static final class z implements j4.d<f0.e.f> {
        static final z INSTANCE = new z();
        private static final j4.c IDENTIFIER_DESCRIPTOR = j4.c.d("identifier");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.f fVar, j4.e eVar) throws IOException {
            eVar.c(IDENTIFIER_DESCRIPTOR, fVar.b());
        }

        private z() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        d dVar = d.INSTANCE;
        bVar.a(f0.class, dVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.b.class, dVar);
        j jVar = j.INSTANCE;
        bVar.a(f0.e.class, jVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.h.class, jVar);
        g gVar = g.INSTANCE;
        bVar.a(f0.e.a.class, gVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.i.class, gVar);
        h hVar = h.INSTANCE;
        bVar.a(f0.e.a.b.class, hVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.j.class, hVar);
        z zVar = z.INSTANCE;
        bVar.a(f0.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.INSTANCE;
        bVar.a(f0.e.AbstractC0252e.class, yVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.z.class, yVar);
        i iVar = i.INSTANCE;
        bVar.a(f0.e.c.class, iVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.k.class, iVar);
        t tVar = t.INSTANCE;
        bVar.a(f0.e.d.class, tVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.l.class, tVar);
        k kVar = k.INSTANCE;
        bVar.a(f0.e.d.a.class, kVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.m.class, kVar);
        m mVar = m.INSTANCE;
        bVar.a(f0.e.d.a.b.class, mVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.n.class, mVar);
        p pVar = p.INSTANCE;
        bVar.a(f0.e.d.a.b.AbstractC0245e.class, pVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.r.class, pVar);
        q qVar = q.INSTANCE;
        bVar.a(f0.e.d.a.b.AbstractC0245e.AbstractC0247b.class, qVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.s.class, qVar);
        n nVar = n.INSTANCE;
        bVar.a(f0.e.d.a.b.c.class, nVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.p.class, nVar);
        b bVar2 = b.INSTANCE;
        bVar.a(f0.a.class, bVar2);
        bVar.a(com.google.firebase.crashlytics.internal.model.c.class, bVar2);
        C0233a c0233a = C0233a.INSTANCE;
        bVar.a(f0.a.AbstractC0235a.class, c0233a);
        bVar.a(com.google.firebase.crashlytics.internal.model.d.class, c0233a);
        o oVar = o.INSTANCE;
        bVar.a(f0.e.d.a.b.AbstractC0243d.class, oVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.q.class, oVar);
        l lVar = l.INSTANCE;
        bVar.a(f0.e.d.a.b.AbstractC0239a.class, lVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.o.class, lVar);
        c cVar = c.INSTANCE;
        bVar.a(f0.c.class, cVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.e.class, cVar);
        r rVar = r.INSTANCE;
        bVar.a(f0.e.d.a.c.class, rVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.t.class, rVar);
        s sVar = s.INSTANCE;
        bVar.a(f0.e.d.c.class, sVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.u.class, sVar);
        u uVar = u.INSTANCE;
        bVar.a(f0.e.d.AbstractC0250d.class, uVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.v.class, uVar);
        x xVar = x.INSTANCE;
        bVar.a(f0.e.d.f.class, xVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.y.class, xVar);
        v vVar = v.INSTANCE;
        bVar.a(f0.e.d.AbstractC0251e.class, vVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.w.class, vVar);
        w wVar = w.INSTANCE;
        bVar.a(f0.e.d.AbstractC0251e.b.class, wVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.x.class, wVar);
        e eVar = e.INSTANCE;
        bVar.a(f0.d.class, eVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.f.class, eVar);
        f fVar = f.INSTANCE;
        bVar.a(f0.d.b.class, fVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.g.class, fVar);
    }

    private a() {
    }
}
