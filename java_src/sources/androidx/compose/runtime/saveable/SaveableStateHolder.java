package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public interface SaveableStateHolder {
    @Composable
    void a(@NotNull Object obj, @NotNull p<? super Composer, ? super Integer, l0> pVar, @Nullable Composer composer, int i10);
}
