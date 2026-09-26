package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class TextState {

    @NotNull
    private final MutableState drawScopeInvalidation$delegate;

    @Nullable
    private LayoutCoordinates layoutCoordinates;

    @Nullable
    private TextLayoutResult layoutResult;

    @NotNull
    private l<? super TextLayoutResult, l0> onTextLayout;
    private long previousGlobalPosition;

    @Nullable
    private Selectable selectable;
    private final long selectableId;
    private long selectionBackgroundColor;

    @NotNull
    private TextDelegate textDelegate;

    @Nullable
    public final LayoutCoordinates b() {
        return this.layoutCoordinates;
    }

    @Nullable
    public final TextLayoutResult c() {
        return this.layoutResult;
    }

    @NotNull
    public final l<TextLayoutResult, l0> d() {
        return this.onTextLayout;
    }

    public final long e() {
        return this.previousGlobalPosition;
    }

    @Nullable
    public final Selectable f() {
        return this.selectable;
    }

    public final long g() {
        return this.selectableId;
    }

    public final long h() {
        return this.selectionBackgroundColor;
    }

    @NotNull
    public final TextDelegate i() {
        return this.textDelegate;
    }

    public final void k(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    public final void m(@NotNull l<? super TextLayoutResult, l0> lVar) {
        t.j(lVar, "<set-?>");
        this.onTextLayout = lVar;
    }

    public final void n(long j6) {
        this.previousGlobalPosition = j6;
    }

    public final void o(@Nullable Selectable selectable) {
        this.selectable = selectable;
    }

    public final void p(long j6) {
        this.selectionBackgroundColor = j6;
    }

    public final void q(@NotNull TextDelegate textDelegate) {
        t.j(textDelegate, "<set-?>");
        this.textDelegate = textDelegate;
    }

    public TextState(@NotNull TextDelegate textDelegate, long j6) {
        t.j(textDelegate, "textDelegate");
        this.textDelegate = textDelegate;
        this.selectableId = j6;
        this.onTextLayout = TextState$onTextLayout$1.INSTANCE;
        this.previousGlobalPosition = Offset.Companion.c();
        this.selectionBackgroundColor = Color.Companion.f();
        this.drawScopeInvalidation$delegate = SnapshotStateKt.g(l0.INSTANCE, SnapshotStateKt.i());
    }

    private final void j(l0 l0Var) {
        this.drawScopeInvalidation$delegate.setValue(l0Var);
    }

    @NotNull
    public final l0 a() {
        this.drawScopeInvalidation$delegate.getValue();
        return l0.INSTANCE;
    }

    public final void l(@Nullable TextLayoutResult textLayoutResult) {
        j(l0.INSTANCE);
        this.layoutResult = textLayoutResult;
    }
}
