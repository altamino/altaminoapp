package i7;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a extends k7.b.AbstractC0421b {

    @NotNull
    private final m content$delegate = o.a(C0385a.INSTANCE);

    /* JADX INFO: renamed from: i7.a$a, reason: collision with other inner class name */
    static final class C0385a extends v implements e8.a<io.ktor.utils.io.c> {
        public static final C0385a INSTANCE = new C0385a();

        C0385a() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final io.ktor.utils.io.c invoke() {
            return io.ktor.utils.io.e.c(false, 1, null);
        }
    }
}
