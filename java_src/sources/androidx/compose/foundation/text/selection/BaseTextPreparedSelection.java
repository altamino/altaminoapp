package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.selection.BaseTextPreparedSelection;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BaseTextPreparedSelection<T extends BaseTextPreparedSelection<T>> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NoCharacterFound = -1;

    @NotNull
    private AnnotatedString annotatedString;

    @Nullable
    private final TextLayoutResult layoutResult;

    @NotNull
    private final OffsetMapping offsetMapping;
    private final long originalSelection;

    @NotNull
    private final AnnotatedString originalText;
    private long selection;

    @NotNull
    private final TextPreparedSelectionState state;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ BaseTextPreparedSelection(AnnotatedString annotatedString, long j6, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState, k kVar) {
        this(annotatedString, j6, textLayoutResult, offsetMapping, textPreparedSelectionState);
    }

    @NotNull
    public final AnnotatedString e() {
        return this.annotatedString;
    }

    @NotNull
    public final OffsetMapping p() {
        return this.offsetMapping;
    }

    public final long w() {
        return this.selection;
    }

    @NotNull
    public final TextPreparedSelectionState x() {
        return this.state;
    }

    private BaseTextPreparedSelection(AnnotatedString annotatedString, long j6, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState) {
        this.originalText = annotatedString;
        this.originalSelection = j6;
        this.layoutResult = textLayoutResult;
        this.offsetMapping = offsetMapping;
        this.state = textPreparedSelectionState;
        this.selection = j6;
        this.annotatedString = annotatedString;
    }

    private final int X() {
        return this.offsetMapping.b(TextRange.i(this.selection));
    }

    private final int Y() {
        return this.offsetMapping.b(TextRange.k(this.selection));
    }

    private final int Z() {
        return this.offsetMapping.b(TextRange.l(this.selection));
    }

    static /* synthetic */ int h(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineEndByOffsetForLayout");
        }
        if ((i11 & 1) != 0) {
            i10 = baseTextPreparedSelection.Y();
        }
        return baseTextPreparedSelection.g(textLayoutResult, i10);
    }

    static /* synthetic */ int k(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineStartByOffsetForLayout");
        }
        if ((i11 & 1) != 0) {
            i10 = baseTextPreparedSelection.Z();
        }
        return baseTextPreparedSelection.j(textLayoutResult, i10);
    }

    private final int n(TextLayoutResult textLayoutResult, int i10) {
        if (i10 >= this.originalText.length()) {
            return this.originalText.length();
        }
        long jB = textLayoutResult.B(a(i10));
        return TextRange.i(jB) <= i10 ? n(textLayoutResult, i10 + 1) : this.offsetMapping.a(TextRange.i(jB));
    }

    static /* synthetic */ int o(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNextWordOffsetForLayout");
        }
        if ((i11 & 1) != 0) {
            i10 = baseTextPreparedSelection.X();
        }
        return baseTextPreparedSelection.n(textLayoutResult, i10);
    }

    private final int t(TextLayoutResult textLayoutResult, int i10) {
        if (i10 < 0) {
            return 0;
        }
        long jB = textLayoutResult.B(a(i10));
        return TextRange.n(jB) >= i10 ? t(textLayoutResult, i10 - 1) : this.offsetMapping.a(TextRange.n(jB));
    }

    static /* synthetic */ int u(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPrevWordOffset");
        }
        if ((i11 & 1) != 0) {
            i10 = baseTextPreparedSelection.X();
        }
        return baseTextPreparedSelection.t(textLayoutResult, i10);
    }

    private final boolean z() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        return (textLayoutResult != null ? textLayoutResult.x(TextRange.i(this.selection)) : null) != ResolvedTextDirection.Rtl;
    }

    @NotNull
    public final T b(@NotNull l<? super T, l0> or) {
        t.j(or, "or");
        x().b();
        if (y().length() > 0) {
            if (TextRange.h(this.selection)) {
                or.invoke(this);
            } else if (z()) {
                V(TextRange.l(this.selection));
            } else {
                V(TextRange.k(this.selection));
            }
        }
        return this;
    }

    @NotNull
    public final T c(@NotNull l<? super T, l0> or) {
        t.j(or, "or");
        x().b();
        if (y().length() > 0) {
            if (TextRange.h(this.selection)) {
                or.invoke(this);
            } else if (z()) {
                V(TextRange.k(this.selection));
            } else {
                V(TextRange.l(this.selection));
            }
        }
        return this;
    }

    @Nullable
    public final Integer f() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult != null) {
            return Integer.valueOf(h(this, textLayoutResult, 0, 1, null));
        }
        return null;
    }

    @Nullable
    public final Integer i() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult != null) {
            return Integer.valueOf(k(this, textLayoutResult, 0, 1, null));
        }
        return null;
    }

    public final int l() {
        return StringHelpers_androidKt.a(this.annotatedString.g(), TextRange.i(this.selection));
    }

    @Nullable
    public final Integer m() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult != null) {
            return Integer.valueOf(o(this, textLayoutResult, 0, 1, null));
        }
        return null;
    }

    public final int s() {
        return StringHelpers_androidKt.b(this.annotatedString.g(), TextRange.i(this.selection));
    }

    @Nullable
    public final Integer v() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult != null) {
            return Integer.valueOf(u(this, textLayoutResult, 0, 1, null));
        }
        return null;
    }

    @NotNull
    public final String y() {
        return this.annotatedString.g();
    }

    private final int A(TextLayoutResult textLayoutResult, int i10) {
        int iX = X();
        if (this.state.a() == null) {
            this.state.c(Float.valueOf(textLayoutResult.d(iX).j()));
        }
        int iP = textLayoutResult.p(iX) + i10;
        if (iP < 0) {
            return 0;
        }
        if (iP >= textLayoutResult.m()) {
            return y().length();
        }
        float fL = textLayoutResult.l(iP) - 1;
        Float fA = this.state.a();
        t.g(fA);
        float fFloatValue = fA.floatValue();
        if ((z() && fFloatValue >= textLayoutResult.s(iP)) || (!z() && fFloatValue <= textLayoutResult.r(iP))) {
            return textLayoutResult.n(iP, true);
        }
        return this.offsetMapping.a(textLayoutResult.w(OffsetKt.a(fA.floatValue(), fL)));
    }

    private final T E() {
        int iL;
        x().b();
        if (y().length() > 0 && (iL = l()) != -1) {
            V(iL);
        }
        return this;
    }

    private final T G() {
        Integer numM;
        x().b();
        if (y().length() > 0 && (numM = m()) != null) {
            V(numM.intValue());
        }
        return this;
    }

    private final T H() {
        int iS;
        x().b();
        if (y().length() > 0 && (iS = s()) != -1) {
            V(iS);
        }
        return this;
    }

    private final T J() {
        Integer numV;
        x().b();
        if (y().length() > 0 && (numV = v()) != null) {
            V(numV.intValue());
        }
        return this;
    }

    private final int a(int i10) {
        return o.j(i10, y().length() - 1);
    }

    private final int g(TextLayoutResult textLayoutResult, int i10) {
        return this.offsetMapping.a(textLayoutResult.n(textLayoutResult.p(i10), true));
    }

    private final int j(TextLayoutResult textLayoutResult, int i10) {
        return this.offsetMapping.a(textLayoutResult.t(textLayoutResult.p(i10)));
    }

    private final int q() {
        return StringHelpersKt.a(y(), TextRange.k(this.selection));
    }

    private final int r() {
        return StringHelpersKt.b(y(), TextRange.l(this.selection));
    }

    @NotNull
    public final T B() {
        TextLayoutResult textLayoutResult;
        if (y().length() > 0 && (textLayoutResult = this.layoutResult) != null) {
            V(A(textLayoutResult, 1));
        }
        return this;
    }

    @NotNull
    public final T C() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                H();
            } else {
                E();
            }
        }
        return this;
    }

    @NotNull
    public final T D() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                J();
            } else {
                G();
            }
        }
        return this;
    }

    @NotNull
    public final T F() {
        x().b();
        if (y().length() > 0) {
            V(q());
        }
        return this;
    }

    @NotNull
    public final T I() {
        x().b();
        if (y().length() > 0) {
            V(r());
        }
        return this;
    }

    @NotNull
    public final T K() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                E();
            } else {
                H();
            }
        }
        return this;
    }

    @NotNull
    public final T L() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                G();
            } else {
                J();
            }
        }
        return this;
    }

    @NotNull
    public final T M() {
        x().b();
        if (y().length() > 0) {
            V(y().length());
        }
        return this;
    }

    @NotNull
    public final T N() {
        x().b();
        if (y().length() > 0) {
            V(0);
        }
        return this;
    }

    @NotNull
    public final T O() {
        Integer numF;
        x().b();
        if (y().length() > 0 && (numF = f()) != null) {
            V(numF.intValue());
        }
        return this;
    }

    @NotNull
    public final T P() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                R();
            } else {
                O();
            }
        }
        return this;
    }

    @NotNull
    public final T Q() {
        x().b();
        if (y().length() > 0) {
            if (z()) {
                O();
            } else {
                R();
            }
        }
        return this;
    }

    @NotNull
    public final T R() {
        Integer numI;
        x().b();
        if (y().length() > 0 && (numI = i()) != null) {
            V(numI.intValue());
        }
        return this;
    }

    @NotNull
    public final T S() {
        TextLayoutResult textLayoutResult;
        if (y().length() > 0 && (textLayoutResult = this.layoutResult) != null) {
            V(A(textLayoutResult, -1));
        }
        return this;
    }

    @NotNull
    public final T T() {
        x().b();
        if (y().length() > 0) {
            W(0, y().length());
        }
        return this;
    }

    @NotNull
    public final T U() {
        if (y().length() > 0) {
            this.selection = TextRangeKt.b(TextRange.n(this.originalSelection), TextRange.i(this.selection));
        }
        return this;
    }

    protected final void V(int i10) {
        W(i10, i10);
    }

    protected final void W(int i10, int i11) {
        this.selection = TextRangeKt.b(i10, i11);
    }

    @NotNull
    public final T d() {
        x().b();
        if (y().length() > 0) {
            V(TextRange.i(this.selection));
        }
        return this;
    }
}
