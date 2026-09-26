package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import e8.p;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public interface ScrollableState {

    public static final class DefaultImpls {
    }

    float a(float f);

    @Nullable
    Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super ScrollScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar);

    boolean c();
}
