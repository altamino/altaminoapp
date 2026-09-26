package com.google.firebase.sessions;

import java.util.Locale;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class d0 {

    @NotNull
    public static final b Companion = new b(null);
    private y currentSession;

    @NotNull
    private final String firstSessionId;
    private int sessionIndex;

    @NotNull
    private final k0 timeProvider;

    @NotNull
    private final e8.a<UUID> uuidGenerator;

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }

        @NotNull
        public final d0 a() {
            Object objJ = com.google.firebase.m.a(com.google.firebase.c.INSTANCE).j(d0.class);
            kotlin.jvm.internal.t.i(objJ, "Firebase.app[SessionGenerator::class.java]");
            return (d0) objJ;
        }
    }

    public d0(@NotNull k0 timeProvider, @NotNull e8.a<UUID> uuidGenerator) {
        kotlin.jvm.internal.t.j(timeProvider, "timeProvider");
        kotlin.jvm.internal.t.j(uuidGenerator, "uuidGenerator");
        this.timeProvider = timeProvider;
        this.uuidGenerator = uuidGenerator;
        this.firstSessionId = b();
        this.sessionIndex = -1;
    }

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.a<UUID> {
        public static final a INSTANCE = new a();

        a() {
            super(0, UUID.class, "randomUUID", "randomUUID()Ljava/util/UUID;", 0);
        }

        @Override // e8.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final UUID invoke() {
            return UUID.randomUUID();
        }
    }

    private final String b() {
        String string = this.uuidGenerator.invoke().toString();
        kotlin.jvm.internal.t.i(string, "uuidGenerator().toString()");
        String lowerCase = kotlin.text.t.G(string, "-", "", false, 4, null).toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @NotNull
    public final y a() {
        int i10 = this.sessionIndex + 1;
        this.sessionIndex = i10;
        this.currentSession = new y(i10 == 0 ? this.firstSessionId : b(), this.firstSessionId, this.sessionIndex, this.timeProvider.a());
        return c();
    }

    @NotNull
    public final y c() {
        y yVar = this.currentSession;
        if (yVar != null) {
            return yVar;
        }
        kotlin.jvm.internal.t.B("currentSession");
        return null;
    }

    public /* synthetic */ d0(k0 k0Var, e8.a aVar, int i10, kotlin.jvm.internal.k kVar) {
        this(k0Var, (i10 & 2) != 0 ? a.INSTANCE : aVar);
    }
}
