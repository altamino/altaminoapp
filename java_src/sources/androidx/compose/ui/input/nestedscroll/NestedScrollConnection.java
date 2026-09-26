package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface NestedScrollConnection {

    public static final class DefaultImpls {
    }

    @Nullable
    Object a(long j6, long j10, @NotNull d<? super Velocity> dVar);

    long b(long j6, long j10, int i10);

    @Nullable
    Object c(long j6, @NotNull d<? super Velocity> dVar);

    long d(long j6, int i10);
}
