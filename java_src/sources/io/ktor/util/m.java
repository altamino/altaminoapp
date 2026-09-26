package io.ktor.util;

import kotlinx.coroutines.b2;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class m {

    public static final class a extends kotlin.coroutines.a implements l0 {
        @Override // kotlinx.coroutines.l0
        public void handleException(@NotNull kotlin.coroutines.g gVar, @NotNull Throwable th) {
        }

        public a(l0.b bVar) {
            super(bVar);
        }
    }

    public static /* synthetic */ kotlin.coroutines.g b(b2 b2Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            b2Var = null;
        }
        return a(b2Var);
    }

    @NotNull
    public static final kotlin.coroutines.g a(@Nullable b2 b2Var) {
        return y2.a(b2Var).plus(new a(l0.Key));
    }
}
