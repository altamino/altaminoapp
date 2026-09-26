package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import e8.l;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TextFieldState {

    @NotNull
    private final MutableState handleState$delegate;

    @NotNull
    private final MutableState hasFocus$delegate;

    @Nullable
    private TextInputSession inputSession;

    @NotNull
    private final KeyboardActionRunner keyboardActionRunner;

    @Nullable
    private LayoutCoordinates layoutCoordinates;

    @NotNull
    private final MutableState layoutResult$delegate;

    @NotNull
    private final l<ImeAction, l0> onImeActionPerformed;

    @NotNull
    private final l<TextFieldValue, l0> onValueChange;

    @NotNull
    private l<? super TextFieldValue, l0> onValueChangeOriginal;

    @NotNull
    private final EditProcessor processor;

    @NotNull
    private final RecomposeScope recomposeScope;

    @NotNull
    private final Paint selectionPaint;

    @NotNull
    private final MutableState showCursorHandle$delegate;
    private boolean showFloatingToolbar;

    @NotNull
    private final MutableState showSelectionHandleEnd$delegate;

    @NotNull
    private final MutableState showSelectionHandleStart$delegate;

    @NotNull
    private TextDelegate textDelegate;

    @Nullable
    public final TextInputSession e() {
        return this.inputSession;
    }

    @Nullable
    public final LayoutCoordinates f() {
        return this.layoutCoordinates;
    }

    @NotNull
    public final l<ImeAction, l0> h() {
        return this.onImeActionPerformed;
    }

    @NotNull
    public final l<TextFieldValue, l0> i() {
        return this.onValueChange;
    }

    @NotNull
    public final EditProcessor j() {
        return this.processor;
    }

    @NotNull
    public final RecomposeScope k() {
        return this.recomposeScope;
    }

    @NotNull
    public final Paint l() {
        return this.selectionPaint;
    }

    public final boolean n() {
        return this.showFloatingToolbar;
    }

    @NotNull
    public final TextDelegate q() {
        return this.textDelegate;
    }

    public final void t(@Nullable TextInputSession textInputSession) {
        this.inputSession = textInputSession;
    }

    public final void u(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    public final void x(boolean z6) {
        this.showFloatingToolbar = z6;
    }

    public TextFieldState(@NotNull TextDelegate textDelegate, @NotNull RecomposeScope recomposeScope) {
        t.j(textDelegate, "textDelegate");
        t.j(recomposeScope, "recomposeScope");
        this.textDelegate = textDelegate;
        this.recomposeScope = recomposeScope;
        this.processor = new EditProcessor();
        Boolean bool = Boolean.FALSE;
        this.hasFocus$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
        this.layoutResult$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.handleState$delegate = SnapshotStateKt__SnapshotStateKt.e(HandleState.None, null, 2, null);
        this.showSelectionHandleStart$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
        this.showSelectionHandleEnd$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
        this.showCursorHandle$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
        this.keyboardActionRunner = new KeyboardActionRunner();
        this.onValueChangeOriginal = TextFieldState$onValueChangeOriginal$1.INSTANCE;
        this.onValueChange = new TextFieldState$onValueChange$1(this);
        this.onImeActionPerformed = new TextFieldState$onImeActionPerformed$1(this);
        this.selectionPaint = AndroidPaint_androidKt.a();
    }

    public final void A(@NotNull AnnotatedString visualText, @NotNull TextStyle textStyle, boolean z6, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull l<? super TextFieldValue, l0> onValueChange, @NotNull KeyboardActions keyboardActions, @NotNull FocusManager focusManager, long j6) {
        t.j(visualText, "visualText");
        t.j(textStyle, "textStyle");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(onValueChange, "onValueChange");
        t.j(keyboardActions, "keyboardActions");
        t.j(focusManager, "focusManager");
        this.onValueChangeOriginal = onValueChange;
        this.selectionPaint.j(j6);
        KeyboardActionRunner keyboardActionRunner = this.keyboardActionRunner;
        keyboardActionRunner.f(keyboardActions);
        keyboardActionRunner.e(focusManager);
        this.textDelegate = CoreTextKt.c(this.textDelegate, visualText, textStyle, density, fontFamilyResolver, (192 & 32) != 0 ? true : z6, (192 & 64) != 0 ? TextOverflow.Companion.a() : 0, (192 & 128) != 0 ? Integer.MAX_VALUE : 0, v.m());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final HandleState c() {
        return (HandleState) this.handleState$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final TextLayoutResultProxy g() {
        return (TextLayoutResultProxy) this.layoutResult$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean m() {
        return ((Boolean) this.showCursorHandle$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean o() {
        return ((Boolean) this.showSelectionHandleEnd$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean p() {
        return ((Boolean) this.showSelectionHandleStart$delegate.getValue()).booleanValue();
    }

    public final void r(@NotNull HandleState handleState) {
        t.j(handleState, "<set-?>");
        this.handleState$delegate.setValue(handleState);
    }

    public final void s(boolean z6) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void v(@Nullable TextLayoutResultProxy textLayoutResultProxy) {
        this.layoutResult$delegate.setValue(textLayoutResultProxy);
    }

    public final void w(boolean z6) {
        this.showCursorHandle$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void y(boolean z6) {
        this.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void z(boolean z6) {
        this.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(z6));
    }
}
