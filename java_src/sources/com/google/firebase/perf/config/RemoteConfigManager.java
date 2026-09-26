package com.google.firebase.perf.config;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private static final long MIN_APP_START_CONFIG_FETCH_DELAY_MS = 5000;
    private static final int RANDOM_APP_START_CONFIG_FETCH_DELAY_MS = 25000;
    private final ConcurrentHashMap<String, c5.n> allRcConfigMap;
    private final long appStartConfigFetchDelayInMs;
    private final long appStartTimeInMs;
    private final x cache;
    private final Executor executor;

    @Nullable
    private com.google.firebase.remoteconfig.a firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;

    @Nullable
    private o4.b<com.google.firebase.remoteconfig.c> firebaseRemoteConfigProvider;
    private static final y4.a logger = y4.a.e();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    @SuppressLint({"ThreadPoolCreation"})
    private RemoteConfigManager() {
        this(x.e(), new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null, ((long) new Random().nextInt(25000)) + 5000, getInitialStartupMillis());
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    @VisibleForTesting
    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private boolean hasAppStartConfigFetchDelayElapsed(long j6) {
        return j6 - this.appStartTimeInMs >= this.appStartConfigFetchDelayInMs;
    }

    private boolean hasLastFetchBecomeStale(long j6) {
        return j6 - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    public void setFirebaseRemoteConfigProvider(@Nullable o4.b<com.google.firebase.remoteconfig.c> bVar) {
        this.firebaseRemoteConfigProvider = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(Exception exc) {
        logger.k("Call to Remote Config failed: %s. This may cause a degraded experience with Firebase Performance. Please reach out to Firebase Support https://firebase.google.com/support/", exc);
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
    }

    public com.google.firebase.perf.util.g<Boolean> getBoolean(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config boolean value is null.");
            return com.google.firebase.perf.util.g.a();
        }
        c5.n remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.g.e(Boolean.valueOf(remoteConfigValue.e()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.d().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.d(), str);
                }
            }
        }
        return com.google.firebase.perf.util.g.a();
    }

    public com.google.firebase.perf.util.g<Double> getDouble(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config double value is null.");
            return com.google.firebase.perf.util.g.a();
        }
        c5.n remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.g.e(Double.valueOf(remoteConfigValue.b()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.d().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.d(), str);
                }
            }
        }
        return com.google.firebase.perf.util.g.a();
    }

    public com.google.firebase.perf.util.g<Long> getLong(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config long value is null.");
            return com.google.firebase.perf.util.g.a();
        }
        c5.n remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.g.e(Long.valueOf(remoteConfigValue.a()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.d().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.d(), str);
                }
            }
        }
        return com.google.firebase.perf.util.g.a();
    }

    public com.google.firebase.perf.util.g<String> getString(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config String value is null.");
            return com.google.firebase.perf.util.g.a();
        }
        c5.n remoteConfigValue = getRemoteConfigValue(str);
        return remoteConfigValue != null ? com.google.firebase.perf.util.g.e(remoteConfigValue.d()) : com.google.firebase.perf.util.g.a();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        o4.b<com.google.firebase.remoteconfig.c> bVar;
        com.google.firebase.remoteconfig.c cVar;
        if (this.firebaseRemoteConfig == null && (bVar = this.firebaseRemoteConfigProvider) != null && (cVar = bVar.get()) != null) {
            this.firebaseRemoteConfig = cVar.e(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    public boolean isLastFetchFailed() {
        com.google.firebase.remoteconfig.a aVar = this.firebaseRemoteConfig;
        return aVar == null || aVar.j().a() == 1 || this.firebaseRemoteConfig.j().a() == 2;
    }

    @VisibleForTesting
    protected void syncConfigValues(Map<String, c5.n> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
        d dVarE = d.e();
        c5.n nVar = this.allRcConfigMap.get(dVarE.c());
        if (nVar == null) {
            logger.a("ExperimentTTID remote config flag does not exist.");
            return;
        }
        try {
            this.cache.m(dVarE.a(), nVar.e());
        } catch (Exception unused) {
            logger.a("ExperimentTTID remote config flag has invalid value, expected boolean.");
        }
    }

    @VisibleForTesting
    static long getInitialStartupMillis() {
        com.google.firebase.o oVar = (com.google.firebase.o) com.google.firebase.f.l().j(com.google.firebase.o.class);
        if (oVar != null) {
            return oVar.c();
        }
        return System.currentTimeMillis();
    }

    private c5.n getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (isFirebaseRemoteConfigAvailable() && this.allRcConfigMap.containsKey(str)) {
            c5.n nVar = this.allRcConfigMap.get(str);
            if (nVar.c() == 2) {
                logger.b("Fetched value: '%s' for key: '%s' from Firebase Remote Config.", nVar.d(), str);
                return nVar;
            }
            return null;
        }
        return null;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        long currentSystemTimeMillis = getCurrentSystemTimeMillis();
        if (hasAppStartConfigFetchDelayElapsed(currentSystemTimeMillis) && hasLastFetchBecomeStale(currentSystemTimeMillis)) {
            return true;
        }
        return false;
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        this.firebaseRemoteConfig.g().addOnSuccessListener(this.executor, new OnSuccessListener() { // from class: com.google.firebase.perf.config.y
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f1607a.lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0((Boolean) obj);
            }
        }).addOnFailureListener(this.executor, new OnFailureListener() { // from class: com.google.firebase.perf.config.z
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.f1608a.lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(exc);
            }
        });
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (!isFirebaseRemoteConfigAvailable()) {
            return;
        }
        if (this.allRcConfigMap.isEmpty()) {
            this.allRcConfigMap.putAll(this.firebaseRemoteConfig.h());
        }
        if (shouldFetchAndActivateRemoteConfigValues()) {
            triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
        }
    }

    @VisibleForTesting
    protected long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T> T getRemoteConfigValueOrDefault(String str, T t5) {
        Object objValueOf;
        c5.n remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                if (t5 instanceof Boolean) {
                    objValueOf = Boolean.valueOf(remoteConfigValue.e());
                } else if (t5 instanceof Double) {
                    objValueOf = Double.valueOf(remoteConfigValue.b());
                } else if (!(t5 instanceof Long) && !(t5 instanceof Integer)) {
                    if (t5 instanceof String) {
                        objValueOf = remoteConfigValue.d();
                    } else {
                        T t10 = (T) remoteConfigValue.d();
                        try {
                            logger.b("No matching type found for the defaultValue: '%s', using String.", t5);
                            return t10;
                        } catch (IllegalArgumentException unused) {
                            t5 = t10;
                            if (remoteConfigValue.d().isEmpty()) {
                                return t5;
                            }
                            logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.d(), str);
                            return t5;
                        }
                    }
                } else {
                    objValueOf = Long.valueOf(remoteConfigValue.a());
                }
                return (T) objValueOf;
            } catch (IllegalArgumentException unused2) {
            }
        } else {
            return t5;
        }
    }

    @VisibleForTesting
    RemoteConfigManager(x xVar, Executor executor, com.google.firebase.remoteconfig.a aVar, long j6, long j10) {
        ConcurrentHashMap<String, c5.n> concurrentHashMap;
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
        this.cache = xVar;
        this.executor = executor;
        this.firebaseRemoteConfig = aVar;
        if (aVar == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap = new ConcurrentHashMap<>(aVar.h());
        }
        this.allRcConfigMap = concurrentHashMap;
        this.appStartTimeInMs = j10;
        this.appStartConfigFetchDelayInMs = j6;
    }
}
