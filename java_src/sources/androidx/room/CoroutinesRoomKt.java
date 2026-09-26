package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.Map;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.s1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CoroutinesRoomKt {
    @RestrictTo
    @NotNull
    public static final k0 a(@NotNull RoomDatabase roomDatabase) {
        kotlin.jvm.internal.t.j(roomDatabase, "<this>");
        Map<String, Object> mapK = roomDatabase.k();
        Object objB = mapK.get("QueryDispatcher");
        if (objB == null) {
            objB = s1.b(roomDatabase.o());
            mapK.put("QueryDispatcher", objB);
        }
        kotlin.jvm.internal.t.h(objB, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (k0) objB;
    }

    @NotNull
    public static final k0 b(@NotNull RoomDatabase roomDatabase) {
        kotlin.jvm.internal.t.j(roomDatabase, "<this>");
        Map<String, Object> mapK = roomDatabase.k();
        Object objB = mapK.get("TransactionDispatcher");
        if (objB == null) {
            objB = s1.b(roomDatabase.s());
            mapK.put("TransactionDispatcher", objB);
        }
        kotlin.jvm.internal.t.h(objB, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (k0) objB;
    }
}
