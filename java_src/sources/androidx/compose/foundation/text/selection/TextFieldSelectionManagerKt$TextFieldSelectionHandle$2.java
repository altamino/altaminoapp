package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class TextFieldSelectionManagerKt$TextFieldSelectionHandle$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ ResolvedTextDirection $direction;
    final /* synthetic */ boolean $isStartHandle;
    final /* synthetic */ TextFieldSelectionManager $manager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionManagerKt$TextFieldSelectionHandle$2(boolean z6, ResolvedTextDirection resolvedTextDirection, TextFieldSelectionManager textFieldSelectionManager, int i10) {
        super(2);
        this.$isStartHandle = z6;
        this.$direction = resolvedTextDirection;
        this.$manager = textFieldSelectionManager;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TextFieldSelectionManagerKt.a(this.$isStartHandle, this.$direction, this.$manager, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
