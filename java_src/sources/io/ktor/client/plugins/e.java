package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.DefaultRequest");

    static final class a extends kotlin.jvm.internal.v implements e8.l<d.a, l0> {
        final /* synthetic */ e8.l<d.a, l0> $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(e8.l<? super d.a, l0> lVar) {
            super(1);
            this.$block = lVar;
        }

        public final void a(@NotNull d.a install) {
            kotlin.jvm.internal.t.j(install, "$this$install");
            this.$block.invoke(install);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(d.a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    public static final void b(@NotNull io.ktor.client.b<?> bVar, @NotNull e8.l<? super d.a, l0> block) {
        kotlin.jvm.internal.t.j(bVar, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        bVar.h(d.Plugin, new a(block));
    }
}
