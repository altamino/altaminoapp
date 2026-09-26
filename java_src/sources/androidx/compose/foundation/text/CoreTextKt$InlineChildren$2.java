package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.AnnotatedString;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class CoreTextKt$InlineChildren$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> $inlineContents;
    final /* synthetic */ AnnotatedString $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextKt$InlineChildren$2(AnnotatedString annotatedString, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> list, int i10) {
        super(2);
        this.$text = annotatedString;
        this.$inlineContents = list;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CoreTextKt.a(this.$text, this.$inlineContents, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
