package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class g0 {
    public static final <T> void a(@NotNull kotlinx.serialization.json.a aVar, @NotNull p0 writer, @NotNull kotlinx.serialization.k<? super T> serializer, T t5) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(writer, "writer");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        new t0(writer, aVar, z0.OBJ, new kotlinx.serialization.json.k[z0.values().length]).e(serializer, t5);
    }
}
