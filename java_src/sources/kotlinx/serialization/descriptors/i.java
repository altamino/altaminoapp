package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class i {

    public static final class a extends i {

        @NotNull
        public static final a INSTANCE = new a();

        private a() {
            super(null);
        }
    }

    public static final class b extends i {

        @NotNull
        public static final b INSTANCE = new b();

        private b() {
            super(null);
        }
    }

    public /* synthetic */ i(k kVar) {
        this();
    }

    private i() {
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @NotNull
    public String toString() {
        String simpleName = q0.b(getClass()).getSimpleName();
        t.g(simpleName);
        return simpleName;
    }
}
