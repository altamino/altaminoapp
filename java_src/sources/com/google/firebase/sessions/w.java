package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface w {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        public final w a() {
            Object objJ = com.google.firebase.m.a(com.google.firebase.c.INSTANCE).j(w.class);
            kotlin.jvm.internal.t.i(objJ, "Firebase.app[SessionDatastore::class.java]");
            return (w) objJ;
        }

        private a() {
        }
    }

    void a(@NotNull String str);

    @Nullable
    String b();
}
