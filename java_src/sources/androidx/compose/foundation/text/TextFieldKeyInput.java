package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TextFieldKeyInput {
    private final boolean editable;

    @NotNull
    private final KeyMapping keyMapping;

    @NotNull
    private final OffsetMapping offsetMapping;

    @NotNull
    private final l<TextFieldValue, l0> onValueChange;

    @NotNull
    private final TextPreparedSelectionState preparedSelectionState;

    @NotNull
    private final TextFieldSelectionManager selectionManager;
    private final boolean singleLine;

    @NotNull
    private final TextFieldState state;

    @Nullable
    private final UndoManager undoManager;

    @NotNull
    private final TextFieldValue value;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<TextFieldValue, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull TextFieldValue it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(TextFieldValue textFieldValue) {
            a(textFieldValue);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldKeyInput(@NotNull TextFieldState state, @NotNull TextFieldSelectionManager selectionManager, @NotNull TextFieldValue value, boolean z6, boolean z10, @NotNull TextPreparedSelectionState preparedSelectionState, @NotNull OffsetMapping offsetMapping, @Nullable UndoManager undoManager, @NotNull KeyMapping keyMapping, @NotNull l<? super TextFieldValue, l0> onValueChange) {
        t.j(state, "state");
        t.j(selectionManager, "selectionManager");
        t.j(value, "value");
        t.j(preparedSelectionState, "preparedSelectionState");
        t.j(offsetMapping, "offsetMapping");
        t.j(keyMapping, "keyMapping");
        t.j(onValueChange, "onValueChange");
        this.state = state;
        this.selectionManager = selectionManager;
        this.value = value;
        this.editable = z6;
        this.singleLine = z10;
        this.preparedSelectionState = preparedSelectionState;
        this.offsetMapping = offsetMapping;
        this.undoManager = undoManager;
        this.keyMapping = keyMapping;
        this.onValueChange = onValueChange;
    }

    @NotNull
    public final TextFieldSelectionManager g() {
        return this.selectionManager;
    }

    public final boolean h() {
        return this.singleLine;
    }

    @Nullable
    public final UndoManager i() {
        return this.undoManager;
    }

    public /* synthetic */ TextFieldKeyInput(TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z6, boolean z10, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, KeyMapping keyMapping, l lVar, int i10, k kVar) {
        this(textFieldState, textFieldSelectionManager, (i10 & 4) != 0 ? new TextFieldValue((String) null, 0L, (TextRange) null, 7, (k) null) : textFieldValue, (i10 & 8) != 0 ? true : z6, (i10 & 16) != 0 ? false : z10, textPreparedSelectionState, (i10 & 64) != 0 ? OffsetMapping.Companion.a() : offsetMapping, (i10 & 128) != 0 ? null : undoManager, (i10 & 256) != 0 ? KeyMapping_androidKt.a() : keyMapping, (i10 & 512) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(List<? extends EditCommand> list) {
        EditProcessor editProcessorJ = this.state.j();
        List<? extends EditCommand> listW0 = d0.W0(list);
        listW0.add(0, new FinishComposingTextCommand());
        this.onValueChange.invoke(editProcessorJ.a(listW0));
    }

    private final void f(l<? super TextFieldPreparedSelection, l0> lVar) {
        TextFieldPreparedSelection textFieldPreparedSelection = new TextFieldPreparedSelection(this.value, this.offsetMapping, this.state.g(), this.preparedSelectionState);
        lVar.invoke(textFieldPreparedSelection);
        if (TextRange.g(textFieldPreparedSelection.w(), this.value.g()) && t.e(textFieldPreparedSelection.e(), this.value.e())) {
            return;
        }
        this.onValueChange.invoke(textFieldPreparedSelection.b0());
    }

    public final boolean j(@NotNull KeyEvent event) {
        KeyCommand keyCommandA;
        t.j(event, "event");
        CommitTextCommand commitTextCommandK = k(event);
        if (commitTextCommandK != null) {
            if (!this.editable) {
                return false;
            }
            d(commitTextCommandK);
            this.preparedSelectionState.b();
            return true;
        }
        if (!KeyEventType.f(KeyEvent_androidKt.b(event), KeyEventType.Companion.a()) || (keyCommandA = this.keyMapping.a(event)) == null || (keyCommandA.b() && !this.editable)) {
            return false;
        }
        k0 k0Var = new k0();
        k0Var.element = true;
        f(new TextFieldKeyInput$process$2(keyCommandA, this, k0Var));
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.a();
        }
        return k0Var.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(EditCommand editCommand) {
        e(u.e(editCommand));
    }

    private final CommitTextCommand k(KeyEvent keyEvent) {
        if (TextFieldKeyInput_androidKt.a(keyEvent)) {
            String string = StringHelpers_jvmKt.a(new StringBuilder(), KeyEvent_androidKt.c(keyEvent)).toString();
            t.i(string, "StringBuilder().appendCo…              .toString()");
            return new CommitTextCommand(string, 1);
        }
        return null;
    }
}
