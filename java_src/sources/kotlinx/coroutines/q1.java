package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q1 extends k0 implements Closeable {

    @NotNull
    public static final a Key = new a(null);

    public static final class a extends kotlin.coroutines.b<k0, q1> {

        /* JADX INFO: renamed from: kotlinx.coroutines.q1$a$a, reason: collision with other inner class name */
        static final class C0451a extends kotlin.jvm.internal.v implements e8.l<kotlin.coroutines.g.b, q1> {
            public static final C0451a INSTANCE = new C0451a();

            C0451a() {
                super(1);
            }

            @Override // e8.l
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final q1 invoke(@NotNull kotlin.coroutines.g.b bVar) {
                if (bVar instanceof q1) {
                    return (q1) bVar;
                }
                return null;
            }
        }

        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
            super(k0.Key, C0451a.INSTANCE);
        }
    }

    @NotNull
    public abstract Executor L();
}
