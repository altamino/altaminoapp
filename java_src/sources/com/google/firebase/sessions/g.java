package com.google.firebase.sessions;

import android.util.Log;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements h {

    @NotNull
    private static final String AQS_LOG_SOURCE = "FIREBASE_APPQUALITY_SESSION";

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final String TAG = "EventGDTLogger";

    @NotNull
    private final o4.b<f2.g> transportFactoryProvider;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public g(@NotNull o4.b<f2.g> transportFactoryProvider) {
        kotlin.jvm.internal.t.j(transportFactoryProvider, "transportFactoryProvider");
        this.transportFactoryProvider = transportFactoryProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] c(z zVar) {
        String strB = a0.INSTANCE.c().b(zVar);
        kotlin.jvm.internal.t.i(strB, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        Log.d(TAG, "Session Event: " + strB);
        byte[] bytes = strB.getBytes(kotlin.text.d.UTF_8);
        kotlin.jvm.internal.t.i(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // com.google.firebase.sessions.h
    public void a(@NotNull z sessionEvent) {
        kotlin.jvm.internal.t.j(sessionEvent, "sessionEvent");
        this.transportFactoryProvider.get().a(AQS_LOG_SOURCE, z.class, f2.b.b("json"), new f2.e() { // from class: com.google.firebase.sessions.f
            @Override // f2.e
            public final Object apply(Object obj) {
                return this.f1680a.c((z) obj);
            }
        }).b(f2.c.d(sessionEvent));
    }
}
