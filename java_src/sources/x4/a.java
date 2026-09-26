package x4;

import androidx.annotation.NonNull;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    private final com.google.firebase.f firebaseApp;
    private final com.google.firebase.installations.h firebaseInstallations;
    private final o4.b<com.google.firebase.remoteconfig.c> remoteConfigComponentProvider;
    private final o4.b<f2.g> transportFactoryProvider;

    com.google.firebase.f b() {
        return this.firebaseApp;
    }

    com.google.firebase.installations.h c() {
        return this.firebaseInstallations;
    }

    o4.b<com.google.firebase.remoteconfig.c> d() {
        return this.remoteConfigComponentProvider;
    }

    o4.b<f2.g> g() {
        return this.transportFactoryProvider;
    }

    public a(@NonNull com.google.firebase.f fVar, @NonNull com.google.firebase.installations.h hVar, @NonNull o4.b<com.google.firebase.remoteconfig.c> bVar, @NonNull o4.b<f2.g> bVar2) {
        this.firebaseApp = fVar;
        this.firebaseInstallations = hVar;
        this.remoteConfigComponentProvider = bVar;
        this.transportFactoryProvider = bVar2;
    }

    com.google.firebase.perf.config.a a() {
        return com.google.firebase.perf.config.a.g();
    }

    RemoteConfigManager e() {
        return RemoteConfigManager.getInstance();
    }

    SessionManager f() {
        return SessionManager.getInstance();
    }
}
