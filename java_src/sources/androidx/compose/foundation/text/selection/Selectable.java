package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes7.dex */
public interface Selectable {
    @NotNull
    AnnotatedString a();

    @NotNull
    Rect b(int i10);

    @Nullable
    LayoutCoordinates c();

    @NotNull
    u<Selection, Boolean> d(long j6, long j10, @Nullable Offset offset, boolean z6, @NotNull LayoutCoordinates layoutCoordinates, @NotNull SelectionAdjustment selectionAdjustment, @Nullable Selection selection);

    long e(@NotNull Selection selection, boolean z6);

    long f();

    @Nullable
    Selection g();

    long h(int i10);
}
