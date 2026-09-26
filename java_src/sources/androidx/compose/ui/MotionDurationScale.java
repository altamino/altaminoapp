package androidx.compose.ui;

import androidx.compose.runtime.Stable;
import e8.p;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Stable
public interface MotionDurationScale extends g.b {

    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R a(@NotNull MotionDurationScale motionDurationScale, R r, @NotNull p<? super R, ? super g.b, ? extends R> operation) {
            t.j(operation, "operation");
            return (R) g.b.a.a(motionDurationScale, r, operation);
        }

        @Nullable
        public static <E extends g.b> E b(@NotNull MotionDurationScale motionDurationScale, @NotNull g.c<E> key) {
            t.j(key, "key");
            return (E) g.b.a.b(motionDurationScale, key);
        }

        @NotNull
        public static g c(@NotNull MotionDurationScale motionDurationScale, @NotNull g.c<?> key) {
            t.j(key, "key");
            return g.b.a.c(motionDurationScale, key);
        }

        @NotNull
        public static g d(@NotNull MotionDurationScale motionDurationScale, @NotNull g context) {
            t.j(context, "context");
            return g.b.a.d(motionDurationScale, context);
        }
    }

    float g0();

    public static final class Key implements g.c<MotionDurationScale> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }
}
