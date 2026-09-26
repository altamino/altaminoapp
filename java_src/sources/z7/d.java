package z7;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class d<E extends Enum<E>> implements Serializable {

    @NotNull
    private static final a Companion = new a(null);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Class<E> f3382c;

    private static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public d(@NotNull E[] entries) {
        t.j(entries, "entries");
        Class<E> cls = (Class<E>) entries.getClass().getComponentType();
        t.g(cls);
        this.f3382c = cls;
    }

    private final Object readResolve() {
        E[] enumConstants = this.f3382c.getEnumConstants();
        t.i(enumConstants, "getEnumConstants(...)");
        return b.a(enumConstants);
    }
}
