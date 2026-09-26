package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.b;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
import e8.a;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class VerticalScrollLayoutModifier implements LayoutModifier {
    private final int cursorOffset;

    @NotNull
    private final TextFieldScrollerPosition scrollerPosition;

    @NotNull
    private final a<TextLayoutResultProxy> textLayoutResultProvider;

    @NotNull
    private final TransformedText transformedText;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    public final int a() {
        return this.cursorOffset;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @NotNull
    public final TextFieldScrollerPosition b() {
        return this.scrollerPosition;
    }

    @NotNull
    public final a<TextLayoutResultProxy> c() {
        return this.textLayoutResultProvider;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @NotNull
    public final TransformedText d() {
        return this.transformedText;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VerticalScrollLayoutModifier)) {
            return false;
        }
        VerticalScrollLayoutModifier verticalScrollLayoutModifier = (VerticalScrollLayoutModifier) obj;
        return t.e(this.scrollerPosition, verticalScrollLayoutModifier.scrollerPosition) && this.cursorOffset == verticalScrollLayoutModifier.cursorOffset && t.e(this.transformedText, verticalScrollLayoutModifier.transformedText) && t.e(this.textLayoutResultProvider, verticalScrollLayoutModifier.textLayoutResultProvider);
    }

    public int hashCode() {
        return (((((this.scrollerPosition.hashCode() * 31) + this.cursorOffset) * 31) + this.transformedText.hashCode()) * 31) + this.textLayoutResultProvider.hashCode();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @NotNull
    public String toString() {
        return "VerticalScrollLayoutModifier(scrollerPosition=" + this.scrollerPosition + ", cursorOffset=" + this.cursorOffset + ", transformedText=" + this.transformedText + ", textLayoutResultProvider=" + this.textLayoutResultProvider + ')';
    }

    public VerticalScrollLayoutModifier(@NotNull TextFieldScrollerPosition scrollerPosition, int i10, @NotNull TransformedText transformedText, @NotNull a<TextLayoutResultProxy> textLayoutResultProvider) {
        t.j(scrollerPosition, "scrollerPosition");
        t.j(transformedText, "transformedText");
        t.j(textLayoutResultProvider, "textLayoutResultProvider");
        this.scrollerPosition = scrollerPosition;
        this.cursorOffset = i10;
        this.transformedText = transformedText;
        this.textLayoutResultProvider = textLayoutResultProvider;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, 0, Integer.MAX_VALUE, 7, null));
        int iMin = Math.min(placeableB0.B0(), Constraints.m(j6));
        return MeasureScope.CC.b(measure, placeableB0.Q0(), iMin, null, new VerticalScrollLayoutModifier$measure$1(measure, this, placeableB0, iMin), 4, null);
    }
}
