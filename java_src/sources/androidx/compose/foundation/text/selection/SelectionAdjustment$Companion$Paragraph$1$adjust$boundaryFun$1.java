package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.ui.text.TextRange;
import e8.l;
import kotlin.jvm.internal.q;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1 extends q implements l<Integer, TextRange> {
    SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1(Object obj) {
        super(1, obj, StringHelpersKt.class, "getParagraphBoundary", "getParagraphBoundary(Ljava/lang/CharSequence;I)J", 1);
    }

    public final long a(int i10) {
        return StringHelpersKt.c((CharSequence) this.receiver, i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ TextRange invoke(Integer num) {
        return TextRange.b(a(num.intValue()));
    }
}
