package com.google.firebase.sessions.api;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.sync.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    @NotNull
    private static final String TAG = "SessionsDependencies";

    @NotNull
    public static final a INSTANCE = new a();
    private static final Map<com.google.firebase.sessions.api.b.a, C0266a> dependencies = Collections.synchronizedMap(new LinkedHashMap());

    /* JADX INFO: renamed from: com.google.firebase.sessions.api.a$a, reason: collision with other inner class name */
    private static final class C0266a {

        @NotNull
        private final kotlinx.coroutines.sync.a mutex;

        @Nullable
        private com.google.firebase.sessions.api.b subscriber;

        public C0266a(@NotNull kotlinx.coroutines.sync.a mutex, @Nullable com.google.firebase.sessions.api.b bVar) {
            t.j(mutex, "mutex");
            this.mutex = mutex;
            this.subscriber = bVar;
        }

        @NotNull
        public final kotlinx.coroutines.sync.a a() {
            return this.mutex;
        }

        @Nullable
        public final com.google.firebase.sessions.api.b b() {
            return this.subscriber;
        }

        public final void c(@Nullable com.google.firebase.sessions.api.b bVar) {
            this.subscriber = bVar;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0266a)) {
                return false;
            }
            C0266a c0266a = (C0266a) obj;
            return t.e(this.mutex, c0266a.mutex) && t.e(this.subscriber, c0266a.subscriber);
        }

        public int hashCode() {
            int iHashCode = this.mutex.hashCode() * 31;
            com.google.firebase.sessions.api.b bVar = this.subscriber;
            return iHashCode + (bVar == null ? 0 : bVar.hashCode());
        }

        @NotNull
        public String toString() {
            return "Dependency(mutex=" + this.mutex + ", subscriber=" + this.subscriber + ')';
        }

        public /* synthetic */ C0266a(kotlinx.coroutines.sync.a aVar, com.google.firebase.sessions.api.b bVar, int i10, k kVar) {
            this(aVar, (i10 & 2) != 0 ? null : bVar);
        }
    }

    @f(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {123}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
    static final class b extends d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.c(this);
        }
    }

    private final C0266a b(com.google.firebase.sessions.api.b.a aVar) {
        Map<com.google.firebase.sessions.api.b.a, C0266a> dependencies2 = dependencies;
        t.i(dependencies2, "dependencies");
        C0266a c0266a = dependencies2.get(aVar);
        if (c0266a != null) {
            t.i(c0266a, "dependencies.getOrElse(s…load time.\"\n      )\n    }");
            return c0266a;
        }
        throw new IllegalStateException("Cannot get dependency " + aVar + ". Dependencies should be added at class load time.");
    }

    public static final void e(@NotNull com.google.firebase.sessions.api.b subscriber) {
        t.j(subscriber, "subscriber");
        com.google.firebase.sessions.api.b.a aVarB = subscriber.b();
        C0266a c0266aB = INSTANCE.b(aVarB);
        if (c0266aB.b() != null) {
            Log.d(TAG, "Subscriber " + aVarB + " already registered.");
            return;
        }
        c0266aB.c(subscriber);
        Log.d(TAG, "Subscriber " + aVarB + " registered.");
        kotlinx.coroutines.sync.a.C0454a.c(c0266aB.a(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(@NotNull com.google.firebase.sessions.api.b.a subscriberName) {
        t.j(subscriberName, "subscriberName");
        if (subscriberName == com.google.firebase.sessions.api.b.a.PERFORMANCE) {
            throw new IllegalArgumentException("Incompatible versions of Firebase Perf and Firebase Sessions.\nA safe combination would be:\n  firebase-sessions:1.1.0\n  firebase-crashlytics:18.5.0\n  firebase-perf:20.5.0\nFor more information contact Firebase Support.");
        }
        Map<com.google.firebase.sessions.api.b.a, C0266a> dependencies2 = dependencies;
        if (dependencies2.containsKey(subscriberName)) {
            Log.d(TAG, "Dependency " + subscriberName + " already added.");
            return;
        }
        t.i(dependencies2, "dependencies");
        dependencies2.put(subscriberName, new C0266a(c.a(true), null, 2, 0 == true ? 1 : 0));
        Log.d(TAG, "Dependency to " + subscriberName + " added.");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x006f  */
    /* JADX WARN: Code duplicated, block: B:19:0x009e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009f -> B:27:0x00a0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.util.Map<com.google.firebase.sessions.api.b.a, ? extends com.google.firebase.sessions.api.b>> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.google.firebase.sessions.api.a.b
            if (r0 == 0) goto L13
            r0 = r11
            com.google.firebase.sessions.api.a$b r0 = (com.google.firebase.sessions.api.a.b) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.google.firebase.sessions.api.a$b r0 = new com.google.firebase.sessions.api.a$b
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 != r4) goto L40
            java.lang.Object r2 = r0.L$5
            java.lang.Object r5 = r0.L$4
            java.util.Map r5 = (java.util.Map) r5
            java.lang.Object r6 = r0.L$3
            kotlinx.coroutines.sync.a r6 = (kotlinx.coroutines.sync.a) r6
            java.lang.Object r7 = r0.L$2
            com.google.firebase.sessions.api.b$a r7 = (com.google.firebase.sessions.api.b.a) r7
            java.lang.Object r8 = r0.L$1
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.L$0
            java.util.Map r9 = (java.util.Map) r9
            w7.w.b(r11)
            goto La0
        L40:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L48:
            w7.w.b(r11)
            java.util.Map<com.google.firebase.sessions.api.b$a, com.google.firebase.sessions.api.a$a> r11 = com.google.firebase.sessions.api.a.dependencies
            java.lang.String r2 = "dependencies"
            kotlin.jvm.internal.t.i(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r11.size()
            int r5 = kotlin.collections.p0.e(r5)
            r2.<init>(r5)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
            r8 = r11
            r5 = r2
        L69:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto Lb3
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r6 = r11.getKey()
            r7 = r6
            com.google.firebase.sessions.api.b$a r7 = (com.google.firebase.sessions.api.b.a) r7
            java.lang.Object r11 = r11.getValue()
            com.google.firebase.sessions.api.a$a r11 = (com.google.firebase.sessions.api.a.C0266a) r11
            kotlinx.coroutines.sync.a r6 = r11.a()
            r0.L$0 = r5
            r0.L$1 = r8
            r0.L$2 = r7
            r0.L$3 = r6
            r0.L$4 = r5
            r0.L$5 = r2
            r0.label = r4
            java.lang.Object r11 = r6.d(r3, r0)
            if (r11 != r1) goto L9f
            return r1
        L9f:
            r9 = r5
        La0:
            com.google.firebase.sessions.api.a r11 = com.google.firebase.sessions.api.a.INSTANCE     // Catch: java.lang.Throwable -> Lae
            com.google.firebase.sessions.api.b r11 = r11.d(r7)     // Catch: java.lang.Throwable -> Lae
            r6.e(r3)
            r5.put(r2, r11)
            r5 = r9
            goto L69
        Lae:
            r11 = move-exception
            r6.e(r3)
            throw r11
        Lb3:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.api.a.c(kotlin.coroutines.d):java.lang.Object");
    }

    @VisibleForTesting
    @NotNull
    public final com.google.firebase.sessions.api.b d(@NotNull com.google.firebase.sessions.api.b.a subscriberName) {
        t.j(subscriberName, "subscriberName");
        com.google.firebase.sessions.api.b bVarB = b(subscriberName).b();
        if (bVarB != null) {
            return bVarB;
        }
        throw new IllegalStateException("Subscriber " + subscriberName + " has not been registered.");
    }

    private a() {
    }
}
