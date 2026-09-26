package kotlinx.serialization;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    @NotNull
    public static final <T> b<? extends T> a(@NotNull kotlinx.serialization.internal.b<T> bVar, @NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        t.j(bVar, "<this>");
        t.j(decoder, "decoder");
        b<? extends T> bVarC = bVar.c(decoder, str);
        if (bVarC != null) {
            return bVarC;
        }
        kotlinx.serialization.internal.c.a(str, bVar.e());
        throw new w7.i();
    }

    @NotNull
    public static final <T> k<T> b(@NotNull kotlinx.serialization.internal.b<T> bVar, @NotNull Encoder encoder, @NotNull T value) {
        t.j(bVar, "<this>");
        t.j(encoder, "encoder");
        t.j(value, "value");
        k<T> kVarD = bVar.d(encoder, value);
        if (kVarD != null) {
            return kVarD;
        }
        kotlinx.serialization.internal.c.b(q0.b(value.getClass()), bVar.e());
        throw new w7.i();
    }
}
