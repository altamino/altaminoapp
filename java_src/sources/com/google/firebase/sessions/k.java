package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    @NotNull
    public static final b Companion = new b(null);

    @NotNull
    private static final String TAG = "FirebaseSessions";

    @NotNull
    private final com.google.firebase.f firebaseApp;

    @NotNull
    private final com.google.firebase.sessions.settings.f settings;

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {44, 48}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ kotlin.coroutines.g $backgroundDispatcher;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.coroutines.g gVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$backgroundDispatcher = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return k.this.new a(this.$backgroundDispatcher, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0075  */
        /* JADX WARN: Code duplicated, block: B:29:0x007b  */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                }
                if (!k.this.settings.d()) {
                    Log.d(k.TAG, "Sessions SDK disabled. Not listening to lifecycle events.");
                } else {
                    f0 f0Var = new f0(this.$backgroundDispatcher);
                    f0Var.i();
                    j0.INSTANCE.a(f0Var);
                    k.this.firebaseApp.h(new com.google.firebase.g() { // from class: com.google.firebase.sessions.j
                    });
                }
                return w7.l0.INSTANCE;
            }
            w7.w.b(obj);
            com.google.firebase.sessions.api.a aVar = com.google.firebase.sessions.api.a.INSTANCE;
            this.label = 1;
            obj = aVar.c(this);
            if (obj == objE) {
                return objE;
            }
            Collection collectionValues = ((Map) obj).values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                Iterator it = collectionValues.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((com.google.firebase.sessions.api.b) it.next()).a()) {
                            com.google.firebase.sessions.settings.f fVar = k.this.settings;
                            this.label = 2;
                            if (fVar.g(this) == objE) {
                                return objE;
                            }
                            if (!k.this.settings.d()) {
                                Log.d(k.TAG, "Sessions SDK disabled. Not listening to lifecycle events.");
                            } else {
                                f0 f0Var2 = new f0(this.$backgroundDispatcher);
                                f0Var2.i();
                                j0.INSTANCE.a(f0Var2);
                                k.this.firebaseApp.h(new com.google.firebase.g() { // from class: com.google.firebase.sessions.j
                                });
                            }
                            return w7.l0.INSTANCE;
                        }
                    }
                }
            }
            Log.d(k.TAG, "No Sessions subscribers. Not listening to lifecycle events.");
            return w7.l0.INSTANCE;
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }
    }

    public k(@NotNull com.google.firebase.f firebaseApp, @NotNull com.google.firebase.sessions.settings.f settings, @NotNull kotlin.coroutines.g backgroundDispatcher) {
        kotlin.jvm.internal.t.j(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.t.j(settings, "settings");
        kotlin.jvm.internal.t.j(backgroundDispatcher, "backgroundDispatcher");
        this.firebaseApp = firebaseApp;
        this.settings = settings;
        Log.d(TAG, "Initializing Firebase Sessions SDK.");
        Context applicationContext = firebaseApp.k().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(j0.INSTANCE);
            kotlinx.coroutines.k.d(p0.a(backgroundDispatcher), null, null, new a(backgroundDispatcher, null), 3, null);
            return;
        }
        Log.e(TAG, "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
