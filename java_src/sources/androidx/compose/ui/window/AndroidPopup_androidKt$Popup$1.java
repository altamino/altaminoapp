package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidPopup_androidKt$Popup$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ Alignment $alignment;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $offset;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ PopupProperties $properties;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidPopup_androidKt$Popup$1(Alignment alignment, long j6, a<l0> aVar, PopupProperties popupProperties, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$alignment = alignment;
        this.$offset = j6;
        this.$onDismissRequest = aVar;
        this.$properties = popupProperties;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidPopup_androidKt.c(this.$alignment, this.$offset, this.$onDismissRequest, this.$properties, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
