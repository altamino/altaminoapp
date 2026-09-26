package z4;

/* JADX INFO: loaded from: classes10.dex */
public class a extends e {
    private static final y4.a logger = y4.a.e();
    private final com.google.firebase.perf.v1.c applicationInfo;

    private boolean g() {
        com.google.firebase.perf.v1.c cVar = this.applicationInfo;
        if (cVar == null) {
            logger.j("ApplicationInfo is null");
            return false;
        }
        if (!cVar.s()) {
            logger.j("GoogleAppId is null");
            return false;
        }
        if (!this.applicationInfo.q()) {
            logger.j("AppInstanceId is null");
            return false;
        }
        if (!this.applicationInfo.r()) {
            logger.j("ApplicationProcessState is null");
            return false;
        }
        if (!this.applicationInfo.p()) {
            return true;
        }
        if (!this.applicationInfo.m().l()) {
            logger.j("AndroidAppInfo.packageName is null");
            return false;
        }
        if (this.applicationInfo.m().m()) {
            return true;
        }
        logger.j("AndroidAppInfo.sdkVersion is null");
        return false;
    }

    a(com.google.firebase.perf.v1.c cVar) {
        this.applicationInfo = cVar;
    }

    @Override // z4.e
    public boolean c() {
        if (!g()) {
            logger.j("ApplicationInfo is invalid");
            return false;
        }
        return true;
    }
}
