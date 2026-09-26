package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface InfiniteAnimationPolicy extends kotlin.coroutines.g.b {

    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
    }

    @Nullable
    <R> Object f(@NotNull e8.l<? super kotlin.coroutines.d<? super R>, ? extends Object> lVar, @NotNull kotlin.coroutines.d<? super R> dVar);

    public static final class Key implements kotlin.coroutines.g.c<InfiniteAnimationPolicy> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }
}
