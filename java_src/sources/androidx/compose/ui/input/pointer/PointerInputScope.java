package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import e8.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface PointerInputScope extends Density {

    public static final class DefaultImpls {
    }

    @Nullable
    <R> Object J(@NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super R> dVar);

    @NotNull
    ViewConfiguration getViewConfiguration();

    void t0(boolean z6);
}
