package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
public final class MultiWidgetSelectionDelegate implements Selectable {

    @NotNull
    private final e8.a<LayoutCoordinates> coordinatesCallback;

    @NotNull
    private final e8.a<TextLayoutResult> layoutResultCallback;
    private final long selectableId;

    @Override // androidx.compose.foundation.text.selection.Selectable
    public long f() {
        return this.selectableId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultiWidgetSelectionDelegate(long j6, @NotNull e8.a<? extends LayoutCoordinates> coordinatesCallback, @NotNull e8.a<TextLayoutResult> layoutResultCallback) {
        t.j(coordinatesCallback, "coordinatesCallback");
        t.j(layoutResultCallback, "layoutResultCallback");
        this.selectableId = j6;
        this.coordinatesCallback = coordinatesCallback;
        this.layoutResultCallback = layoutResultCallback;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    public AnnotatedString a() {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        return textLayoutResultInvoke == null ? new AnnotatedString("", null, null, 6, null) : textLayoutResultInvoke.k().j();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    public Rect b(int i10) {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return Rect.Companion.a();
        }
        int length = textLayoutResultInvoke.k().j().length();
        return length < 1 ? Rect.Companion.a() : textLayoutResultInvoke.c(o.n(i10, 0, length - 1));
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @Nullable
    public LayoutCoordinates c() {
        LayoutCoordinates layoutCoordinatesInvoke = this.coordinatesCallback.invoke();
        if (layoutCoordinatesInvoke == null || !layoutCoordinatesInvoke.Q()) {
            return null;
        }
        return layoutCoordinatesInvoke;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    public u<Selection, Boolean> d(long j6, long j10, @Nullable Offset offset, boolean z6, @NotNull LayoutCoordinates containerLayoutCoordinates, @NotNull SelectionAdjustment adjustment, @Nullable Selection selection) {
        t.j(containerLayoutCoordinates, "containerLayoutCoordinates");
        t.j(adjustment, "adjustment");
        if (selection != null && (f() != selection.e().c() || f() != selection.c().c())) {
            throw new IllegalArgumentException("The given previousSelection doesn't belong to this selectable.".toString());
        }
        LayoutCoordinates layoutCoordinatesC = c();
        if (layoutCoordinatesC == null) {
            return new u<>(null, Boolean.FALSE);
        }
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return new u<>(null, Boolean.FALSE);
        }
        long jO = containerLayoutCoordinates.O(layoutCoordinatesC, Offset.Companion.c());
        return MultiWidgetSelectionDelegateKt.d(textLayoutResultInvoke, Offset.q(j6, jO), Offset.q(j10, jO), offset != null ? Offset.d(Offset.q(offset.u(), jO)) : null, f(), adjustment, selection, z6);
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public long e(@NotNull Selection selection, boolean z6) {
        t.j(selection, "selection");
        if ((z6 && selection.e().c() != f()) || (!z6 && selection.c().c() != f())) {
            return Offset.Companion.c();
        }
        if (c() == null) {
            return Offset.Companion.c();
        }
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return Offset.Companion.c();
        }
        return TextSelectionDelegateKt.b(textLayoutResultInvoke, (z6 ? selection.e() : selection.c()).b(), z6, selection.d());
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @Nullable
    public Selection g() {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return null;
        }
        return MultiWidgetSelectionDelegateKt.b(TextRangeKt.b(0, textLayoutResultInvoke.k().j().length()), false, f(), textLayoutResultInvoke);
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public long h(int i10) {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return TextRange.Companion.a();
        }
        int length = textLayoutResultInvoke.k().j().length();
        if (length < 1) {
            return TextRange.Companion.a();
        }
        int iP = textLayoutResultInvoke.p(o.n(i10, 0, length - 1));
        return TextRangeKt.b(textLayoutResultInvoke.t(iP), textLayoutResultInvoke.n(iP, true));
    }
}
