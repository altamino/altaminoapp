package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import e8.l;
import kotlin.jvm.internal.q;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class SelectionAdjustment$Companion$Word$1$adjust$1 extends q implements l<Integer, TextRange> {
    SelectionAdjustment$Companion$Word$1$adjust$1(Object obj) {
        super(1, obj, TextLayoutResult.class, "getWordBoundary", "getWordBoundary--jx7JFs(I)J", 0);
    }

    public final long a(int i10) {
        return ((TextLayoutResult) this.receiver).B(i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ TextRange invoke(Integer num) {
        return TextRange.b(a(num.intValue()));
    }
}
