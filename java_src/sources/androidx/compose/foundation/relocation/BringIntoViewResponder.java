package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.geometry.Rect;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalFoundationApi
public interface BringIntoViewResponder {
    @ExperimentalFoundationApi
    @Nullable
    Object a(@NotNull Rect rect, @NotNull d<? super l0> dVar);

    @ExperimentalFoundationApi
    @NotNull
    Rect b(@NotNull Rect rect);
}
