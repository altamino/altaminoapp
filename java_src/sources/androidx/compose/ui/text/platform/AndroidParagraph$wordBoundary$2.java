package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.android.selection.WordBoundary;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class AndroidParagraph$wordBoundary$2 extends v implements a<WordBoundary> {
    final /* synthetic */ AndroidParagraph this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidParagraph$wordBoundary$2(AndroidParagraph androidParagraph) {
        super(0);
        this.this$0 = androidParagraph;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final WordBoundary invoke() {
        return new WordBoundary(this.this$0.D(), this.this$0.layout.z());
    }
}
