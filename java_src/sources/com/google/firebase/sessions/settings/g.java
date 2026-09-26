package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import e8.p;
import java.io.IOException;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.j;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    @Deprecated
    @NotNull
    public static final String TAG = "SettingsCache";

    @NotNull
    private final DataStore<Preferences> dataStore;
    private e sessionConfigs;

    @NotNull
    private static final b Companion = new b(null);

    @Deprecated
    @NotNull
    private static final Preferences.Key<Boolean> SESSIONS_ENABLED = PreferencesKeys.a(com.google.firebase.sessions.settings.b.SESSIONS_ENABLED);

    @Deprecated
    @NotNull
    private static final Preferences.Key<Double> SAMPLING_RATE = PreferencesKeys.b(com.google.firebase.sessions.settings.b.SAMPLING_RATE);

    @Deprecated
    @NotNull
    private static final Preferences.Key<Integer> RESTART_TIMEOUT_SECONDS = PreferencesKeys.d("firebase_sessions_restart_timeout");

    @Deprecated
    @NotNull
    private static final Preferences.Key<Integer> CACHE_DURATION_SECONDS = PreferencesKeys.d("firebase_sessions_cache_duration");

    @Deprecated
    @NotNull
    private static final Preferences.Key<Long> CACHE_UPDATED_TIME = PreferencesKeys.e("firebase_sessions_cache_updated_time");

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    static final class a extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        Object L$0;
        int label;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return g.this.new a(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            g gVar;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    gVar = (g) this.L$0;
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                g gVar2 = g.this;
                kotlinx.coroutines.flow.g data = gVar2.dataStore.getData();
                this.L$0 = gVar2;
                this.label = 1;
                Object objV = i.v(data, this);
                if (objV == objE) {
                    return objE;
                }
                gVar = gVar2;
                obj = objV;
            }
            gVar.l(((Preferences) obj).d());
            return l0.INSTANCE;
        }
    }

    private static final class b {
        public /* synthetic */ b(k kVar) {
            this();
        }

        private b() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.SettingsCache", f = "SettingsCache.kt", l = {112}, m = "updateConfigValue")
    static final class c<T> extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return g.this.h(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
    static final class d extends l implements p<MutablePreferences, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ Preferences.Key<T> $key;
        final /* synthetic */ T $value;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ g this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(T t5, Preferences.Key<T> key, g gVar, kotlin.coroutines.d<? super d> dVar) {
            super(2, dVar);
            this.$value = t5;
            this.$key = key;
            this.this$0 = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            d dVar2 = new d(this.$value, this.$key, this.this$0, dVar);
            dVar2.L$0 = obj;
            return dVar2;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull MutablePreferences mutablePreferences, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((d) create(mutablePreferences, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                T t5 = this.$value;
                if (t5 != 0) {
                    mutablePreferences.i(this.$key, t5);
                } else {
                    mutablePreferences.h(this.$key);
                }
                this.this$0.l(mutablePreferences);
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public g(@NotNull DataStore<Preferences> dataStore) throws InterruptedException {
        t.j(dataStore, "dataStore");
        this.dataStore = dataStore;
        j.b(null, new a(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <T> Object h(Preferences.Key<T> key, T t5, kotlin.coroutines.d<? super l0> dVar) {
        c cVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.label = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object obj = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = cVar.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                DataStore<Preferences> dataStore = this.dataStore;
                d dVar2 = new d(t5, key, this, null);
                cVar.label = 1;
                if (PreferencesKt.a(dataStore, dVar2, cVar) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
        } catch (IOException e) {
            Log.w(TAG, "Failed to update cache config value: " + e);
        }
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(Preferences preferences) {
        this.sessionConfigs = new e((Boolean) preferences.b(SESSIONS_ENABLED), (Double) preferences.b(SAMPLING_RATE), (Integer) preferences.b(RESTART_TIMEOUT_SECONDS), (Integer) preferences.b(CACHE_DURATION_SECONDS), (Long) preferences.b(CACHE_UPDATED_TIME));
    }

    public final boolean d() {
        e eVar = this.sessionConfigs;
        e eVar2 = null;
        if (eVar == null) {
            t.B("sessionConfigs");
            eVar = null;
        }
        Long lB = eVar.b();
        e eVar3 = this.sessionConfigs;
        if (eVar3 == null) {
            t.B("sessionConfigs");
        } else {
            eVar2 = eVar3;
        }
        Integer numA = eVar2.a();
        return lB == null || numA == null || (System.currentTimeMillis() - lB.longValue()) / ((long) 1000) >= ((long) numA.intValue());
    }

    @Nullable
    public final Integer e() {
        e eVar = this.sessionConfigs;
        if (eVar == null) {
            t.B("sessionConfigs");
            eVar = null;
        }
        return eVar.d();
    }

    @Nullable
    public final Double f() {
        e eVar = this.sessionConfigs;
        if (eVar == null) {
            t.B("sessionConfigs");
            eVar = null;
        }
        return eVar.e();
    }

    @Nullable
    public final Boolean g() {
        e eVar = this.sessionConfigs;
        if (eVar == null) {
            t.B("sessionConfigs");
            eVar = null;
        }
        return eVar.c();
    }

    @Nullable
    public final Object i(@Nullable Double d2, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objH = h(SAMPLING_RATE, d2, dVar);
        return objH == kotlin.coroutines.intrinsics.d.e() ? objH : l0.INSTANCE;
    }

    @Nullable
    public final Object j(@Nullable Integer num, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objH = h(CACHE_DURATION_SECONDS, num, dVar);
        return objH == kotlin.coroutines.intrinsics.d.e() ? objH : l0.INSTANCE;
    }

    @Nullable
    public final Object k(@Nullable Long l, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objH = h(CACHE_UPDATED_TIME, l, dVar);
        return objH == kotlin.coroutines.intrinsics.d.e() ? objH : l0.INSTANCE;
    }

    @Nullable
    public final Object m(@Nullable Integer num, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objH = h(RESTART_TIMEOUT_SECONDS, num, dVar);
        return objH == kotlin.coroutines.intrinsics.d.e() ? objH : l0.INSTANCE;
    }

    @Nullable
    public final Object n(@Nullable Boolean bool, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objH = h(SESSIONS_ENABLED, bool, dVar);
        return objH == kotlin.coroutines.intrinsics.d.e() ? objH : l0.INSTANCE;
    }
}
