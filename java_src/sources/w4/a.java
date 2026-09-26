package w4;

import com.google.firebase.f;
import com.google.firebase.installations.h;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.remoteconfig.c;
import f2.g;
import v4.e;
import x4.d;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements w4.b {
    private v7.a<e> firebasePerformanceProvider;
    private v7.a<com.google.firebase.perf.config.a> providesConfigResolverProvider;
    private v7.a<f> providesFirebaseAppProvider;
    private v7.a<h> providesFirebaseInstallationsProvider;
    private v7.a<o4.b<c>> providesRemoteConfigComponentProvider;
    private v7.a<RemoteConfigManager> providesRemoteConfigManagerProvider;
    private v7.a<SessionManager> providesSessionManagerProvider;
    private v7.a<o4.b<g>> providesTransportFactoryProvider;

    public static final class b {
        private x4.a firebasePerformanceModule;

        private b() {
        }

        public w4.b a() {
            dagger.internal.b.a(this.firebasePerformanceModule, x4.a.class);
            return new a(this.firebasePerformanceModule);
        }

        public b b(x4.a aVar) {
            this.firebasePerformanceModule = (x4.a) dagger.internal.b.b(aVar);
            return this;
        }
    }

    private a(x4.a aVar) {
        c(aVar);
    }

    public static b b() {
        return new b();
    }

    @Override // w4.b
    public e a() {
        return this.firebasePerformanceProvider.get();
    }

    private void c(x4.a aVar) {
        this.providesFirebaseAppProvider = x4.c.a(aVar);
        this.providesRemoteConfigComponentProvider = x4.e.a(aVar);
        this.providesFirebaseInstallationsProvider = d.a(aVar);
        this.providesTransportFactoryProvider = x4.h.a(aVar);
        this.providesRemoteConfigManagerProvider = x4.f.a(aVar);
        this.providesConfigResolverProvider = x4.b.a(aVar);
        x4.g gVarA = x4.g.a(aVar);
        this.providesSessionManagerProvider = gVarA;
        this.firebasePerformanceProvider = dagger.internal.a.b(v4.g.a(this.providesFirebaseAppProvider, this.providesRemoteConfigComponentProvider, this.providesFirebaseInstallationsProvider, this.providesTransportFactoryProvider, this.providesRemoteConfigManagerProvider, this.providesConfigResolverProvider, gVarA));
    }
}
