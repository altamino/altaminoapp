package androidx.compose.foundation.text;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextController$createSemanticsModifierFor$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ AnnotatedString $text;
    final /* synthetic */ TextController this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextController$createSemanticsModifierFor$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<List<TextLayoutResult>, Boolean> {
        final /* synthetic */ TextController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextController textController) {
            super(1);
            this.this$0 = textController;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull List<TextLayoutResult> it) {
            boolean z6;
            t.j(it, "it");
            if (this.this$0.k().c() != null) {
                TextLayoutResult textLayoutResultC = this.this$0.k().c();
                t.g(textLayoutResultC);
                it.add(textLayoutResultC);
                z6 = true;
            } else {
                z6 = false;
            }
            return Boolean.valueOf(z6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$createSemanticsModifierFor$1(AnnotatedString annotatedString, TextController textController) {
        super(1);
        this.$text = annotatedString;
        this.this$0 = textController;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.V(semantics, this.$text);
        SemanticsPropertiesKt.o(semantics, null, new AnonymousClass1(this.this$0), 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
