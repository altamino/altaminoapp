package com.google.firebase.perf.config;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private static volatile a instance;
    private static final y4.a logger = y4.a.e();
    private x deviceCacheManager;
    private com.google.firebase.perf.util.f metadataBundle;
    private final RemoteConfigManager remoteConfigManager;

    private boolean H(long j6) {
        return j6 >= 0;
    }

    private boolean J(long j6) {
        return j6 >= 0;
    }

    private boolean L(double d) {
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE <= d && d <= 1.0d;
    }

    private boolean M(long j6) {
        return j6 > 0;
    }

    private boolean N(long j6) {
        return j6 > 0;
    }

    public void P(com.google.firebase.perf.util.f fVar) {
        this.metadataBundle = fVar;
    }

    private com.google.firebase.perf.util.g<Boolean> b(v<Boolean> vVar) {
        return this.deviceCacheManager.b(vVar.a());
    }

    private com.google.firebase.perf.util.g<Double> c(v<Double> vVar) {
        return this.deviceCacheManager.c(vVar.a());
    }

    private com.google.firebase.perf.util.g<Long> d(v<Long> vVar) {
        return this.deviceCacheManager.f(vVar.a());
    }

    private com.google.firebase.perf.util.g<String> e(v<String> vVar) {
        return this.deviceCacheManager.g(vVar.a());
    }

    public static synchronized a g() {
        try {
            if (instance == null) {
                instance = new a(null, null, null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private com.google.firebase.perf.util.g<Boolean> n(v<Boolean> vVar) {
        return this.metadataBundle.b(vVar.b());
    }

    private com.google.firebase.perf.util.g<Double> o(v<Double> vVar) {
        return this.metadataBundle.c(vVar.b());
    }

    private com.google.firebase.perf.util.g<Long> p(v<Long> vVar) {
        return this.metadataBundle.e(vVar.b());
    }

    private com.google.firebase.perf.util.g<Boolean> u(v<Boolean> vVar) {
        return this.remoteConfigManager.getBoolean(vVar.c());
    }

    private com.google.firebase.perf.util.g<Double> v(v<Double> vVar) {
        return this.remoteConfigManager.getDouble(vVar.c());
    }

    private com.google.firebase.perf.util.g<Long> w(v<Long> vVar) {
        return this.remoteConfigManager.getLong(vVar.c());
    }

    private com.google.firebase.perf.util.g<String> x(v<String> vVar) {
        return this.remoteConfigManager.getString(vVar.c());
    }

    public void O(Context context) {
        logger.i(com.google.firebase.perf.util.n.b(context));
        this.deviceCacheManager.i(context);
    }

    @VisibleForTesting
    public a(@Nullable RemoteConfigManager remoteConfigManager, @Nullable com.google.firebase.perf.util.f fVar, @Nullable x xVar) {
        this.remoteConfigManager = remoteConfigManager == null ? RemoteConfigManager.getInstance() : remoteConfigManager;
        this.metadataBundle = fVar == null ? new com.google.firebase.perf.util.f() : fVar;
        this.deviceCacheManager = xVar == null ? x.e() : xVar;
    }

    private boolean I(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(";")) {
            if (str2.trim().equals(v4.a.FIREPERF_VERSION_NAME)) {
                return true;
            }
        }
        return false;
    }

    private boolean k() {
        l lVarE = l.e();
        com.google.firebase.perf.util.g<Boolean> gVarU = u(lVarE);
        if (gVarU.d()) {
            if (this.remoteConfigManager.isLastFetchFailed()) {
                return false;
            }
            this.deviceCacheManager.m(lVarE.a(), gVarU.c().booleanValue());
            return gVarU.c().booleanValue();
        }
        com.google.firebase.perf.util.g<Boolean> gVarB = b(lVarE);
        if (gVarB.d()) {
            return gVarB.c().booleanValue();
        }
        return lVarE.d().booleanValue();
    }

    private boolean l() {
        k kVarE = k.e();
        com.google.firebase.perf.util.g<String> gVarX = x(kVarE);
        if (gVarX.d()) {
            this.deviceCacheManager.l(kVarE.a(), gVarX.c());
            return I(gVarX.c());
        }
        com.google.firebase.perf.util.g<String> gVarE = e(kVarE);
        if (gVarE.d()) {
            return I(gVarE.c());
        }
        return I(kVarE.d());
    }

    public long A() {
        o oVarE = o.e();
        com.google.firebase.perf.util.g<Long> gVarP = p(oVarE);
        if (gVarP.d() && M(gVarP.c().longValue())) {
            return gVarP.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarW = w(oVarE);
        if (gVarW.d() && M(gVarW.c().longValue())) {
            this.deviceCacheManager.k(oVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(oVarE);
        if (gVarD.d() && M(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return oVarE.d().longValue();
    }

    public long B() {
        p pVarE = p.e();
        com.google.firebase.perf.util.g<Long> gVarP = p(pVarE);
        if (gVarP.d() && J(gVarP.c().longValue())) {
            return gVarP.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarW = w(pVarE);
        if (gVarW.d() && J(gVarW.c().longValue())) {
            this.deviceCacheManager.k(pVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(pVarE);
        if (gVarD.d() && J(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return pVarE.d().longValue();
    }

    public long C() {
        q qVarF = q.f();
        com.google.firebase.perf.util.g<Long> gVarP = p(qVarF);
        if (gVarP.d() && J(gVarP.c().longValue())) {
            return gVarP.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarW = w(qVarF);
        if (gVarW.d() && J(gVarW.c().longValue())) {
            this.deviceCacheManager.k(qVarF.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(qVarF);
        if (gVarD.d() && J(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        if (this.remoteConfigManager.isLastFetchFailed()) {
            return qVarF.e().longValue();
        }
        return qVarF.d().longValue();
    }

    public double D() {
        r rVarF = r.f();
        com.google.firebase.perf.util.g<Double> gVarO = o(rVarF);
        if (gVarO.d()) {
            double dDoubleValue = gVarO.c().doubleValue() / 100.0d;
            if (L(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        com.google.firebase.perf.util.g<Double> gVarV = v(rVarF);
        if (gVarV.d() && L(gVarV.c().doubleValue())) {
            this.deviceCacheManager.j(rVarF.a(), gVarV.c().doubleValue());
            return gVarV.c().doubleValue();
        }
        com.google.firebase.perf.util.g<Double> gVarC = c(rVarF);
        if (gVarC.d() && L(gVarC.c().doubleValue())) {
            return gVarC.c().doubleValue();
        }
        if (this.remoteConfigManager.isLastFetchFailed()) {
            return rVarF.e().doubleValue();
        }
        return rVarF.d().doubleValue();
    }

    public long E() {
        s sVarE = s.e();
        com.google.firebase.perf.util.g<Long> gVarW = w(sVarE);
        if (gVarW.d() && H(gVarW.c().longValue())) {
            this.deviceCacheManager.k(sVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(sVarE);
        if (gVarD.d() && H(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return sVarE.d().longValue();
    }

    public long F() {
        t tVarE = t.e();
        com.google.firebase.perf.util.g<Long> gVarW = w(tVarE);
        if (gVarW.d() && H(gVarW.c().longValue())) {
            this.deviceCacheManager.k(tVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(tVarE);
        if (gVarD.d() && H(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return tVarE.d().longValue();
    }

    public double G() {
        u uVarF = u.f();
        com.google.firebase.perf.util.g<Double> gVarV = v(uVarF);
        if (gVarV.d() && L(gVarV.c().doubleValue())) {
            this.deviceCacheManager.j(uVarF.a(), gVarV.c().doubleValue());
            return gVarV.c().doubleValue();
        }
        com.google.firebase.perf.util.g<Double> gVarC = c(uVarF);
        if (gVarC.d() && L(gVarC.c().doubleValue())) {
            return gVarC.c().doubleValue();
        }
        if (this.remoteConfigManager.isLastFetchFailed()) {
            return uVarF.e().doubleValue();
        }
        return uVarF.d().doubleValue();
    }

    public boolean K() {
        Boolean boolJ = j();
        if ((boolJ == null || boolJ.booleanValue()) && m()) {
            return true;
        }
        return false;
    }

    public String a() {
        String strF;
        f fVarE = f.e();
        if (v4.a.ENFORCE_DEFAULT_LOG_SRC.booleanValue()) {
            return fVarE.d();
        }
        String strC = fVarE.c();
        long jLongValue = -1;
        if (strC != null) {
            jLongValue = ((Long) this.remoteConfigManager.getRemoteConfigValueOrDefault(strC, -1L)).longValue();
        }
        String strA = fVarE.a();
        if (f.g(jLongValue) && (strF = f.f(jLongValue)) != null) {
            this.deviceCacheManager.l(strA, strF);
            return strF;
        }
        com.google.firebase.perf.util.g<String> gVarE = e(fVarE);
        if (gVarE.d()) {
            return gVarE.c();
        }
        return fVarE.d();
    }

    public double f() {
        e eVarE = e.e();
        com.google.firebase.perf.util.g<Double> gVarO = o(eVarE);
        if (gVarO.d()) {
            double dDoubleValue = gVarO.c().doubleValue() / 100.0d;
            if (L(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        com.google.firebase.perf.util.g<Double> gVarV = v(eVarE);
        if (gVarV.d() && L(gVarV.c().doubleValue())) {
            this.deviceCacheManager.j(eVarE.a(), gVarV.c().doubleValue());
            return gVarV.c().doubleValue();
        }
        com.google.firebase.perf.util.g<Double> gVarC = c(eVarE);
        if (gVarC.d() && L(gVarC.c().doubleValue())) {
            return gVarC.c().doubleValue();
        }
        return eVarE.d().doubleValue();
    }

    public boolean h() {
        d dVarE = d.e();
        com.google.firebase.perf.util.g<Boolean> gVarN = n(dVarE);
        if (gVarN.d()) {
            return gVarN.c().booleanValue();
        }
        com.google.firebase.perf.util.g<Boolean> gVarU = u(dVarE);
        if (gVarU.d()) {
            this.deviceCacheManager.m(dVarE.a(), gVarU.c().booleanValue());
            return gVarU.c().booleanValue();
        }
        com.google.firebase.perf.util.g<Boolean> gVarB = b(dVarE);
        if (gVarB.d()) {
            return gVarB.c().booleanValue();
        }
        return dVarE.d().booleanValue();
    }

    @Nullable
    public Boolean i() {
        b bVarE = b.e();
        com.google.firebase.perf.util.g<Boolean> gVarN = n(bVarE);
        if (gVarN.d()) {
            return gVarN.c();
        }
        return bVarE.d();
    }

    @Nullable
    public Boolean j() {
        if (i().booleanValue()) {
            return Boolean.FALSE;
        }
        c cVarD = c.d();
        com.google.firebase.perf.util.g<Boolean> gVarB = b(cVarD);
        if (gVarB.d()) {
            return gVarB.c();
        }
        com.google.firebase.perf.util.g<Boolean> gVarN = n(cVarD);
        if (gVarN.d()) {
            return gVarN.c();
        }
        return null;
    }

    public boolean m() {
        if (k() && !l()) {
            return true;
        }
        return false;
    }

    public long q() {
        g gVarE = g.e();
        com.google.firebase.perf.util.g<Long> gVarW = w(gVarE);
        if (gVarW.d() && H(gVarW.c().longValue())) {
            this.deviceCacheManager.k(gVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(gVarE);
        if (gVarD.d() && H(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return gVarE.d().longValue();
    }

    public long r() {
        h hVarE = h.e();
        com.google.firebase.perf.util.g<Long> gVarW = w(hVarE);
        if (gVarW.d() && H(gVarW.c().longValue())) {
            this.deviceCacheManager.k(hVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(hVarE);
        if (gVarD.d() && H(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return hVarE.d().longValue();
    }

    public double s() {
        i iVarF = i.f();
        com.google.firebase.perf.util.g<Double> gVarV = v(iVarF);
        if (gVarV.d() && L(gVarV.c().doubleValue())) {
            this.deviceCacheManager.j(iVarF.a(), gVarV.c().doubleValue());
            return gVarV.c().doubleValue();
        }
        com.google.firebase.perf.util.g<Double> gVarC = c(iVarF);
        if (gVarC.d() && L(gVarC.c().doubleValue())) {
            return gVarC.c().doubleValue();
        }
        if (this.remoteConfigManager.isLastFetchFailed()) {
            return iVarF.e().doubleValue();
        }
        return iVarF.d().doubleValue();
    }

    public long t() {
        j jVarE = j.e();
        com.google.firebase.perf.util.g<Long> gVarW = w(jVarE);
        if (gVarW.d() && N(gVarW.c().longValue())) {
            this.deviceCacheManager.k(jVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(jVarE);
        if (gVarD.d() && N(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return jVarE.d().longValue();
    }

    public long y() {
        m mVarE = m.e();
        com.google.firebase.perf.util.g<Long> gVarP = p(mVarE);
        if (gVarP.d() && J(gVarP.c().longValue())) {
            return gVarP.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarW = w(mVarE);
        if (gVarW.d() && J(gVarW.c().longValue())) {
            this.deviceCacheManager.k(mVarE.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(mVarE);
        if (gVarD.d() && J(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        return mVarE.d().longValue();
    }

    public long z() {
        n nVarF = n.f();
        com.google.firebase.perf.util.g<Long> gVarP = p(nVarF);
        if (gVarP.d() && J(gVarP.c().longValue())) {
            return gVarP.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarW = w(nVarF);
        if (gVarW.d() && J(gVarW.c().longValue())) {
            this.deviceCacheManager.k(nVarF.a(), gVarW.c().longValue());
            return gVarW.c().longValue();
        }
        com.google.firebase.perf.util.g<Long> gVarD = d(nVarF);
        if (gVarD.d() && J(gVarD.c().longValue())) {
            return gVarD.c().longValue();
        }
        if (this.remoteConfigManager.isLastFetchFailed()) {
            return nVarF.e().longValue();
        }
        return nVarF.d().longValue();
    }
}
