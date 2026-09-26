package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface b0 {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        public final b0 a() {
            Object objJ = com.google.firebase.m.a(com.google.firebase.c.INSTANCE).j(b0.class);
            kotlin.jvm.internal.t.i(objJ, "Firebase.app[SessionFirelogPublisher::class.java]");
            return (b0) objJ;
        }

        private a() {
        }
    }

    void a(@NotNull y yVar);
}
