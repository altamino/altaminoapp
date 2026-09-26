package androidx.compose.foundation;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@Stable
@ExperimentalFoundationApi
public interface OverscrollEffect {
    @Nullable
    Object a(long j6, @NotNull d<? super l0> dVar);

    boolean b();

    @NotNull
    Modifier c();

    long d(long j6, @Nullable Offset offset, int i10);

    void e(long j6, long j10, @Nullable Offset offset, int i10);

    @Nullable
    Object f(long j6, @NotNull d<? super Velocity> dVar);

    boolean isEnabled();

    void setEnabled(boolean z6);
}
