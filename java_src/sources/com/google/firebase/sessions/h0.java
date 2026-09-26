package com.google.firebase.sessions;

import android.content.ServiceConnection;
import android.os.Messenger;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface h0 {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        public final h0 a() {
            Object objJ = com.google.firebase.m.a(com.google.firebase.c.INSTANCE).j(h0.class);
            kotlin.jvm.internal.t.i(objJ, "Firebase.app[SessionLife…erviceBinder::class.java]");
            return (h0) objJ;
        }

        private a() {
        }
    }

    void a(@NotNull Messenger messenger, @NotNull ServiceConnection serviceConnection);
}
