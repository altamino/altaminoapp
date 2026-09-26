package io.ktor.utils.io.jvm.javaio;

import java.io.InputStream;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    @NotNull
    private static final m ADAPTER_LOGGER$delegate = o.a(a.INSTANCE);

    @NotNull
    private static final Object CloseToken = new Object();

    @NotNull
    private static final Object FlushToken = new Object();

    static final class a extends v implements e8.a<org.slf4j.a> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final org.slf4j.a invoke() {
            return org.slf4j.b.i(io.ktor.utils.io.jvm.javaio.a.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final org.slf4j.a b() {
        return (org.slf4j.a) ADAPTER_LOGGER$delegate.getValue();
    }

    @NotNull
    public static final InputStream c(@NotNull io.ktor.utils.io.g gVar, @Nullable b2 b2Var) {
        t.j(gVar, "<this>");
        return new d(b2Var, gVar);
    }
}
