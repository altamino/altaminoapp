package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import e8.l;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface SelectionAdjustment {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final SelectionAdjustment None = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$None$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            public long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange) {
                t.j(textLayoutResult, "textLayoutResult");
                return j6;
            }
        };

        @NotNull
        private static final SelectionAdjustment Character = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Character$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            public long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange) {
                t.j(textLayoutResult, "textLayoutResult");
                if (TextRange.h(j6)) {
                    return SelectionAdjustmentKt.a(TextRange.n(j6), u.W(textLayoutResult.k().j()), z6, textRange != null ? TextRange.m(textRange.r()) : false);
                }
                return j6;
            }
        };

        @NotNull
        private static final SelectionAdjustment Word = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Word$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            public long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange) {
                t.j(textLayoutResult, "textLayoutResult");
                return SelectionAdjustment.Companion.$$INSTANCE.b(textLayoutResult, j6, new SelectionAdjustment$Companion$Word$1$adjust$1(textLayoutResult));
            }
        };

        @NotNull
        private static final SelectionAdjustment Paragraph = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Paragraph$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            public long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange) {
                t.j(textLayoutResult, "textLayoutResult");
                return SelectionAdjustment.Companion.$$INSTANCE.b(textLayoutResult, j6, new SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1(textLayoutResult.k().j()));
            }
        };

        @NotNull
        private static final SelectionAdjustment CharacterWithWordAccelerate = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$CharacterWithWordAccelerate$1
            private final boolean c(int i10, int i11, boolean z6, boolean z10) {
                if (i11 == -1) {
                    return true;
                }
                if (i10 == i11) {
                    return false;
                }
                if (z6 ^ z10) {
                    if (i10 < i11) {
                        return true;
                    }
                } else if (i10 > i11) {
                    return true;
                }
                return false;
            }

            private final int e(TextLayoutResult textLayoutResult, int i10, int i11, int i12, int i13, boolean z6, boolean z10) {
                if (i10 == i11) {
                    return i12;
                }
                int iP = textLayoutResult.p(i10);
                if (iP != textLayoutResult.p(i12)) {
                    return d(textLayoutResult, i10, iP, i13, z6, z10);
                }
                return (c(i10, i11, z6, z10) && b(textLayoutResult, i12)) ? d(textLayoutResult, i10, iP, i13, z6, z10) : i10;
            }

            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            public long a(@NotNull TextLayoutResult textLayoutResult, long j6, int i10, boolean z6, @Nullable TextRange textRange) {
                int iE;
                int iE2;
                t.j(textLayoutResult, "textLayoutResult");
                if (textRange == null) {
                    return SelectionAdjustment.Companion.$$INSTANCE.g().a(textLayoutResult, j6, i10, z6, textRange);
                }
                if (TextRange.h(j6)) {
                    return SelectionAdjustmentKt.a(TextRange.n(j6), u.W(textLayoutResult.k().j()), z6, TextRange.m(textRange.r()));
                }
                if (z6) {
                    iE2 = e(textLayoutResult, TextRange.n(j6), i10, TextRange.n(textRange.r()), TextRange.i(j6), true, TextRange.m(j6));
                    iE = TextRange.i(j6);
                } else {
                    int iN = TextRange.n(j6);
                    iE = e(textLayoutResult, TextRange.i(j6), i10, TextRange.i(textRange.r()), TextRange.n(j6), false, TextRange.m(j6));
                    iE2 = iN;
                }
                return TextRangeKt.b(iE2, iE);
            }

            private final boolean b(TextLayoutResult textLayoutResult, int i10) {
                long jB = textLayoutResult.B(i10);
                if (i10 != TextRange.n(jB) && i10 != TextRange.i(jB)) {
                    return false;
                }
                return true;
            }

            private final int d(TextLayoutResult textLayoutResult, int i10, int i11, int i12, boolean z6, boolean z10) {
                int iT;
                int iO;
                long jB = textLayoutResult.B(i10);
                if (textLayoutResult.p(TextRange.n(jB)) == i11) {
                    iT = TextRange.n(jB);
                } else {
                    iT = textLayoutResult.t(i11);
                }
                if (textLayoutResult.p(TextRange.i(jB)) == i11) {
                    iO = TextRange.i(jB);
                } else {
                    iO = TextLayoutResult.o(textLayoutResult, i11, false, 2, null);
                }
                if (iT == i12) {
                    return iO;
                }
                if (iO == i12) {
                    return iT;
                }
                int i13 = (iT + iO) / 2;
                if (z6 ^ z10) {
                    if (i10 <= i13) {
                        return iT;
                    }
                } else if (i10 < i13) {
                    return iT;
                }
                return iO;
            }
        };

        @NotNull
        public final SelectionAdjustment c() {
            return Character;
        }

        @NotNull
        public final SelectionAdjustment d() {
            return CharacterWithWordAccelerate;
        }

        @NotNull
        public final SelectionAdjustment e() {
            return None;
        }

        @NotNull
        public final SelectionAdjustment f() {
            return Paragraph;
        }

        @NotNull
        public final SelectionAdjustment g() {
            return Word;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long b(TextLayoutResult textLayoutResult, long j6, l<? super Integer, TextRange> lVar) {
            int iN;
            int i10;
            if (textLayoutResult.k().j().length() != 0) {
                int iW = u.W(textLayoutResult.k().j());
                long jR = lVar.invoke(Integer.valueOf(o.n(TextRange.n(j6), 0, iW))).r();
                long jR2 = lVar.invoke(Integer.valueOf(o.n(TextRange.i(j6), 0, iW))).r();
                if (TextRange.m(j6)) {
                    iN = TextRange.i(jR);
                } else {
                    iN = TextRange.n(jR);
                }
                if (TextRange.m(j6)) {
                    i10 = TextRange.n(jR2);
                } else {
                    i10 = TextRange.i(jR2);
                }
                return TextRangeKt.b(iN, i10);
            }
            return TextRange.Companion.a();
        }
    }
}
