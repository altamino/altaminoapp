package v4;

import com.google.firebase.installations.h;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

/* JADX INFO: loaded from: classes9.dex */
public final class g implements dagger.internal.c {
    private final v7.a<com.google.firebase.perf.config.a> configResolverProvider;
    private final v7.a<com.google.firebase.f> firebaseAppProvider;
    private final v7.a<h> firebaseInstallationsApiProvider;
    private final v7.a<o4.b<com.google.firebase.remoteconfig.c>> firebaseRemoteConfigProvider;
    private final v7.a<RemoteConfigManager> remoteConfigManagerProvider;
    private final v7.a<SessionManager> sessionManagerProvider;
    private final v7.a<o4.b<f2.g>> transportFactoryProvider;

    public static g a(v7.a<com.google.firebase.f> aVar, v7.a<o4.b<com.google.firebase.remoteconfig.c>> aVar2, v7.a<h> aVar3, v7.a<o4.b<f2.g>> aVar4, v7.a<RemoteConfigManager> aVar5, v7.a<com.google.firebase.perf.config.a> aVar6, v7.a<SessionManager> aVar7) {
        return new g(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static e c(com.google.firebase.f fVar, o4.b<com.google.firebase.remoteconfig.c> bVar, h hVar, o4.b<f2.g> bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        return new e(fVar, bVar, hVar, bVar2, remoteConfigManager, aVar, sessionManager);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e get() {
        return c(this.firebaseAppProvider.get(), this.firebaseRemoteConfigProvider.get(), this.firebaseInstallationsApiProvider.get(), this.transportFactoryProvider.get(), this.remoteConfigManagerProvider.get(), this.configResolverProvider.get(), this.sessionManagerProvider.get());
    }

    public g(v7.a<com.google.firebase.f> aVar, v7.a<o4.b<com.google.firebase.remoteconfig.c>> aVar2, v7.a<h> aVar3, v7.a<o4.b<f2.g>> aVar4, v7.a<RemoteConfigManager> aVar5, v7.a<com.google.firebase.perf.config.a> aVar6, v7.a<SessionManager> aVar7) {
        this.firebaseAppProvider = aVar;
        this.firebaseRemoteConfigProvider = aVar2;
        this.firebaseInstallationsApiProvider = aVar3;
        this.transportFactoryProvider = aVar4;
        this.remoteConfigManagerProvider = aVar5;
        this.configResolverProvider = aVar6;
        this.sessionManagerProvider = aVar7;
    }
}
