package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class a {
    public static long b(NestedScrollConnection nestedScrollConnection, long j6, long j10, int i10) {
        return Offset.Companion.c();
    }

    public static long d(NestedScrollConnection nestedScrollConnection, long j6, int i10) {
        return Offset.Companion.c();
    }

    public static /* synthetic */ Object e(NestedScrollConnection nestedScrollConnection, long j6, long j10, d dVar) {
        return Velocity.b(Velocity.Companion.a());
    }

    public static /* synthetic */ Object f(NestedScrollConnection nestedScrollConnection, long j6, d dVar) {
        return Velocity.b(Velocity.Companion.a());
    }

    @Nullable
    public static Object a(NestedScrollConnection nestedScrollConnection, long j6, long j10, @NotNull d dVar) {
        return e(nestedScrollConnection, j6, j10, dVar);
    }

    @Nullable
    public static Object c(NestedScrollConnection nestedScrollConnection, long j6, @NotNull d dVar) {
        return f(nestedScrollConnection, j6, dVar);
    }
}
