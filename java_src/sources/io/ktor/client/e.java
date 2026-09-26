package io.ktor.client;

import e8.l;
import io.ktor.client.engine.g;
import io.ktor.client.engine.h;
import java.io.IOException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    static final class a extends v implements l<Throwable, l0> {
        final /* synthetic */ io.ktor.client.engine.b $engine;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(io.ktor.client.engine.b bVar) {
            super(1);
            this.$engine = bVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) throws IOException {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) throws IOException {
            this.$engine.close();
        }
    }

    @NotNull
    public static final <T extends g> io.ktor.client.a a(@NotNull h<? extends T> engineFactory, @NotNull l<? super b<T>, l0> block) {
        t.j(engineFactory, "engineFactory");
        t.j(block, "block");
        b bVar = new b();
        block.invoke(bVar);
        io.ktor.client.engine.b bVarA = engineFactory.a(bVar.c());
        io.ktor.client.a aVar = new io.ktor.client.a(bVarA, bVar, true);
        kotlin.coroutines.g.b bVar2 = aVar.getCoroutineContext().get(b2.Key);
        t.g(bVar2);
        ((b2) bVar2).U(new a(bVarA));
        return aVar;
    }
}
