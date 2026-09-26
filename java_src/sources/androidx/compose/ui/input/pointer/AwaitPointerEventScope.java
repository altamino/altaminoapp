package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import e8.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface AwaitPointerEventScope extends Density {

    public static final class DefaultImpls {
    }

    @Nullable
    <T> Object F(long j6, @NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar);

    long a();

    @NotNull
    ViewConfiguration getViewConfiguration();

    long i0();

    @Nullable
    <T> Object m0(long j6, @NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar);

    @Nullable
    Object u0(@NotNull PointerEventPass pointerEventPass, @NotNull kotlin.coroutines.d<? super PointerEvent> dVar);

    @NotNull
    PointerEvent v0();
}
