package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.ExperimentalComposeApi;
import e8.p;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalComposeApi
public interface SnapshotContextElement extends g.b {

    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R a(@NotNull SnapshotContextElement snapshotContextElement, R r, @NotNull p<? super R, ? super g.b, ? extends R> operation) {
            t.j(operation, "operation");
            return (R) g.b.a.a(snapshotContextElement, r, operation);
        }

        @Nullable
        public static <E extends g.b> E b(@NotNull SnapshotContextElement snapshotContextElement, @NotNull g.c<E> key) {
            t.j(key, "key");
            return (E) g.b.a.b(snapshotContextElement, key);
        }

        @NotNull
        public static g c(@NotNull SnapshotContextElement snapshotContextElement, @NotNull g.c<?> key) {
            t.j(key, "key");
            return g.b.a.c(snapshotContextElement, key);
        }

        @NotNull
        public static g d(@NotNull SnapshotContextElement snapshotContextElement, @NotNull g context) {
            t.j(context, "context");
            return g.b.a.d(snapshotContextElement, context);
        }
    }

    public static final class Key implements g.c<SnapshotContextElement> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }
}
