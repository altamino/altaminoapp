package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupProperties;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidMenu_androidKt$DropdownMenu$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $content;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ long $offset;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ PopupProperties $properties;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidMenu_androidKt$DropdownMenu$2(boolean z6, a<l0> aVar, Modifier modifier, long j6, PopupProperties popupProperties, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$expanded = z6;
        this.$onDismissRequest = aVar;
        this.$modifier = modifier;
        this.$offset = j6;
        this.$properties = popupProperties;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidMenu_androidKt.a(this.$expanded, this.$onDismissRequest, this.$modifier, this.$offset, this.$properties, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
