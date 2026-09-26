package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import java.util.List;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class TextFieldPreparedSelection extends BaseTextPreparedSelection<TextFieldPreparedSelection> {

    @NotNull
    private final TextFieldValue currentValue;

    @Nullable
    private final TextLayoutResultProxy layoutResultProxy;

    public /* synthetic */ TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState, int i10, k kVar) {
        this(textFieldValue, (i10 & 2) != 0 ? OffsetMapping.Companion.a() : offsetMapping, textLayoutResultProxy, (i10 & 8) != 0 ? new TextPreparedSelectionState() : textPreparedSelectionState);
    }

    @Nullable
    public final List<EditCommand> a0(@NotNull l<? super TextFieldPreparedSelection, ? extends EditCommand> or) {
        t.j(or, "or");
        if (!TextRange.h(w())) {
            return v.p(new CommitTextCommand("", 0), new SetSelectionCommand(TextRange.l(w()), TextRange.l(w())));
        }
        EditCommand editCommandInvoke = or.invoke(this);
        if (editCommandInvoke != null) {
            return u.e(editCommandInvoke);
        }
        return null;
    }

    @NotNull
    public final TextFieldValue b0() {
        return TextFieldValue.c(this.currentValue, e(), w(), null, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    private final int c0(TextLayoutResultProxy textLayoutResultProxy, int i10) {
        Rect rectA;
        LayoutCoordinates layoutCoordinatesC = textLayoutResultProxy.c();
        if (layoutCoordinatesC != null) {
            LayoutCoordinates layoutCoordinatesB = textLayoutResultProxy.b();
            rectA = null;
            if (layoutCoordinatesB != null) {
                rectA = androidx.compose.ui.layout.a.a(layoutCoordinatesB, layoutCoordinatesC, false, 2, null);
            }
            if (rectA == null) {
                rectA = Rect.Companion.a();
            }
        } else {
            rectA = Rect.Companion.a();
        }
        Rect rectD = textLayoutResultProxy.i().d(p().b(TextRange.i(this.currentValue.g())));
        return p().a(textLayoutResultProxy.i().w(OffsetKt.a(rectD.j(), rectD.m() + (Size.g(rectA.l()) * i10))));
    }

    @NotNull
    public final TextFieldPreparedSelection d0() {
        TextLayoutResultProxy textLayoutResultProxy;
        if (y().length() > 0 && (textLayoutResultProxy = this.layoutResultProxy) != null) {
            V(c0(textLayoutResultProxy, 1));
        }
        return this;
    }

    @NotNull
    public final TextFieldPreparedSelection e0() {
        TextLayoutResultProxy textLayoutResultProxy;
        if (y().length() > 0 && (textLayoutResultProxy = this.layoutResultProxy) != null) {
            V(c0(textLayoutResultProxy, -1));
        }
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldPreparedSelection(@NotNull TextFieldValue currentValue, @NotNull OffsetMapping offsetMapping, @Nullable TextLayoutResultProxy textLayoutResultProxy, @NotNull TextPreparedSelectionState state) {
        super(currentValue.e(), currentValue.g(), textLayoutResultProxy != null ? textLayoutResultProxy.i() : null, offsetMapping, state, null);
        t.j(currentValue, "currentValue");
        t.j(offsetMapping, "offsetMapping");
        t.j(state, "state");
        this.currentValue = currentValue;
        this.layoutResultProxy = textLayoutResultProxy;
    }
}
