package v4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.installations.h;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.transport.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class e {
    private static final int MAX_ATTRIBUTE_KEY_LENGTH = 40;
    private static final int MAX_ATTRIBUTE_VALUE_LENGTH = 100;
    private static final int MAX_TRACE_CUSTOM_ATTRIBUTES = 5;
    public static final int MAX_TRACE_NAME_LENGTH = 100;
    private static final y4.a logger = y4.a.e();
    private final com.google.firebase.perf.config.a configResolver;
    private final com.google.firebase.f firebaseApp;
    private final h firebaseInstallationsApi;
    private final o4.b<com.google.firebase.remoteconfig.c> firebaseRemoteConfigProvider;
    private final Map<String, String> mCustomAttributes = new ConcurrentHashMap();
    private final com.google.firebase.perf.util.f mMetadataBundle;

    @Nullable
    private Boolean mPerformanceCollectionForceEnabledState;
    private final o4.b<f2.g> transportFactoryProvider;

    @NonNull
    public Map<String, String> b() {
        return new HashMap(this.mCustomAttributes);
    }

    public boolean d() {
        Boolean bool = this.mPerformanceCollectionForceEnabledState;
        return bool != null ? bool.booleanValue() : com.google.firebase.f.l().t();
    }

    @VisibleForTesting
    e(com.google.firebase.f fVar, o4.b<com.google.firebase.remoteconfig.c> bVar, h hVar, o4.b<f2.g> bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        this.mPerformanceCollectionForceEnabledState = null;
        this.firebaseApp = fVar;
        this.firebaseRemoteConfigProvider = bVar;
        this.firebaseInstallationsApi = hVar;
        this.transportFactoryProvider = bVar2;
        if (fVar == null) {
            this.mPerformanceCollectionForceEnabledState = Boolean.FALSE;
            this.configResolver = aVar;
            this.mMetadataBundle = new com.google.firebase.perf.util.f(new Bundle());
            return;
        }
        k.k().r(fVar, hVar, bVar2);
        Context contextK = fVar.k();
        com.google.firebase.perf.util.f fVarA = a(contextK);
        this.mMetadataBundle = fVarA;
        remoteConfigManager.setFirebaseRemoteConfigProvider(bVar);
        this.configResolver = aVar;
        aVar.P(fVarA);
        aVar.O(contextK);
        sessionManager.setApplicationContext(contextK);
        this.mPerformanceCollectionForceEnabledState = aVar.j();
        y4.a aVar2 = logger;
        if (aVar2.h() && d()) {
            aVar2.f(String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", y4.b.b(fVar.n().e(), contextK.getPackageName())));
        }
    }

    private static com.google.firebase.perf.util.f a(Context context) {
        Bundle bundle;
        com.google.firebase.perf.util.f fVar;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            Log.d("isEnabled", "No perf enable meta data found " + e.getMessage());
            bundle = null;
        }
        if (bundle != null) {
            fVar = new com.google.firebase.perf.util.f(bundle);
        } else {
            fVar = new com.google.firebase.perf.util.f();
        }
        return fVar;
    }

    @NonNull
    public static e c() {
        return (e) com.google.firebase.f.l().j(e.class);
    }
}
