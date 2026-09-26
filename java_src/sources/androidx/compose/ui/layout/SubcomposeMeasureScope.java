package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import e8.p;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public interface SubcomposeMeasureScope extends MeasureScope {
    @NotNull
    List<Measurable> v(@Nullable Object obj, @NotNull p<? super Composer, ? super Integer, l0> pVar);
}
