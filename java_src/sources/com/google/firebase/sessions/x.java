package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.q0;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class x implements w {

    @Deprecated
    @NotNull
    private static final String TAG = "FirebaseSessionsRepo";

    @NotNull
    private final kotlin.coroutines.g backgroundDispatcher;

    @NotNull
    private final Context context;

    @NotNull
    private final AtomicReference<l> currentSessionFromDatastore;

    @NotNull
    private final kotlinx.coroutines.flow.g<l> firebaseSessionDataFlow;

    @NotNull
    private static final b Companion = new b(null);

    @Deprecated
    @NotNull
    private static final kotlin.properties.d<Context, DataStore<Preferences>> dataStore$delegate = PreferenceDataStoreDelegateKt.b(v.INSTANCE.a(), null, null, null, 14, null);

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {79}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        int label;

        /* JADX INFO: renamed from: com.google.firebase.sessions.x$a$a, reason: collision with other inner class name */
        static final class C0271a<T> implements kotlinx.coroutines.flow.h {
            final /* synthetic */ x this$0;

            C0271a(x xVar) {
                this.this$0 = xVar;
            }

            @Override // kotlinx.coroutines.flow.h
            @Nullable
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public final Object emit(@NotNull l lVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                this.this$0.currentSessionFromDatastore.set(lVar);
                return w7.l0.INSTANCE;
            }
        }

        a(kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return x.this.new a(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                kotlinx.coroutines.flow.g gVar = x.this.firebaseSessionDataFlow;
                C0271a c0271a = new C0271a(x.this);
                this.label = 1;
                if (gVar.collect(c0271a, this) == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    private static final class b {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.h(new kotlin.jvm.internal.i0(b.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DataStore<Preferences> b(Context context) {
            return (DataStore) x.dataStore$delegate.getValue(context, $$delegatedProperties[0]);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$firebaseSessionDataFlow$1", f = "SessionDatastore.kt", l = {73}, m = "invokeSuspend")
    static final class d extends kotlin.coroutines.jvm.internal.l implements e8.q<kotlinx.coroutines.flow.h<? super Preferences>, Throwable, kotlin.coroutines.d<? super w7.l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.flow.h<? super Preferences> hVar, @NotNull Throwable th, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            d dVar2 = new d(dVar);
            dVar2.L$0 = hVar;
            dVar2.L$1 = th;
            return dVar2.invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                kotlinx.coroutines.flow.h hVar = (kotlinx.coroutines.flow.h) this.L$0;
                Log.e(x.TAG, "Error reading stored session data.", (Throwable) this.L$1);
                Preferences preferencesA = PreferencesFactory.a();
                this.L$0 = null;
                this.label = 1;
                if (hVar.emit(preferencesA, this) == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    public static final class e implements kotlinx.coroutines.flow.g<l> {
        final /* synthetic */ kotlinx.coroutines.flow.g $this_unsafeTransform$inlined;
        final /* synthetic */ x this$0;

        public static final class a<T> implements kotlinx.coroutines.flow.h {
            final /* synthetic */ kotlinx.coroutines.flow.h $this_unsafeFlow;
            final /* synthetic */ x this$0;

            /* JADX INFO: renamed from: com.google.firebase.sessions.x$e$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {224}, m = "emit")
            public static final class C0272a extends kotlin.coroutines.jvm.internal.d {
                Object L$0;
                int label;
                /* synthetic */ Object result;

                public C0272a(kotlin.coroutines.d dVar) {
                    super(dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kotlinx.coroutines.flow.h hVar, x xVar) {
                this.$this_unsafeFlow = hVar;
                this.this$0 = xVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public final Object emit(Object obj, @NotNull kotlin.coroutines.d dVar) {
                C0272a c0272a;
                if (dVar instanceof C0272a) {
                    c0272a = (C0272a) dVar;
                    int i10 = c0272a.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c0272a.label = i10 - Integer.MIN_VALUE;
                    } else {
                        c0272a = new C0272a(dVar);
                    }
                } else {
                    c0272a = new C0272a(dVar);
                }
                Object obj2 = c0272a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = c0272a.label;
                if (i11 == 0) {
                    w7.w.b(obj2);
                    kotlinx.coroutines.flow.h hVar = this.$this_unsafeFlow;
                    l lVarI = this.this$0.i((Preferences) obj);
                    c0272a.label = 1;
                    if (hVar.emit(lVarI, c0272a) == objE) {
                        return objE;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(obj2);
                }
                return w7.l0.INSTANCE;
            }
        }

        public e(kotlinx.coroutines.flow.g gVar, x xVar) {
            this.$this_unsafeTransform$inlined = gVar;
            this.this$0 = xVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull kotlinx.coroutines.flow.h<? super l> hVar, @NotNull kotlin.coroutines.d dVar) {
            Object objCollect = this.$this_unsafeTransform$inlined.collect(new a(hVar, this.this$0), dVar);
            return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1", f = "SessionDatastore.kt", l = {85}, m = "invokeSuspend")
    static final class f extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ String $sessionId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, kotlin.coroutines.d<? super f> dVar) {
            super(2, dVar);
            this.$sessionId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return x.this.new f(this.$sessionId, dVar);
        }

        @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1", f = "SessionDatastore.kt", l = {}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<MutablePreferences, kotlin.coroutines.d<? super w7.l0>, Object> {
            final /* synthetic */ String $sessionId;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, kotlin.coroutines.d<? super a> dVar) {
                super(2, dVar);
                this.$sessionId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                a aVar = new a(this.$sessionId, dVar);
                aVar.L$0 = obj;
                return aVar;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull MutablePreferences mutablePreferences, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
                return ((a) create(mutablePreferences, dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.d.e();
                if (this.label == 0) {
                    w7.w.b(obj);
                    ((MutablePreferences) this.L$0).i(c.INSTANCE.a(), this.$sessionId);
                    return w7.l0.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((f) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                DataStore dataStoreB = x.Companion.b(x.this.context);
                a aVar = new a(this.$sessionId, null);
                this.label = 1;
                if (PreferencesKt.a(dataStoreB, aVar, this) == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    private static final class c {

        @NotNull
        public static final c INSTANCE = new c();

        @NotNull
        private static final Preferences.Key<String> SESSION_ID = PreferencesKeys.f("session_id");

        @NotNull
        public final Preferences.Key<String> a() {
            return SESSION_ID;
        }

        private c() {
        }
    }

    public x(@NotNull Context context, @NotNull kotlin.coroutines.g backgroundDispatcher) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(backgroundDispatcher, "backgroundDispatcher");
        this.context = context;
        this.backgroundDispatcher = backgroundDispatcher;
        this.currentSessionFromDatastore = new AtomicReference<>();
        this.firebaseSessionDataFlow = new e(kotlinx.coroutines.flow.i.h(Companion.b(context).getData(), new d(null)), this);
        kotlinx.coroutines.k.d(p0.a(backgroundDispatcher), null, null, new a(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final l i(Preferences preferences) {
        return new l((String) preferences.b(c.INSTANCE.a()));
    }

    @Override // com.google.firebase.sessions.w
    public void a(@NotNull String sessionId) {
        kotlin.jvm.internal.t.j(sessionId, "sessionId");
        kotlinx.coroutines.k.d(p0.a(this.backgroundDispatcher), null, null, new f(sessionId, null), 3, null);
    }

    @Override // com.google.firebase.sessions.w
    @Nullable
    public String b() {
        l lVar = this.currentSessionFromDatastore.get();
        if (lVar != null) {
            return lVar.a();
        }
        return null;
    }
}
