package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class IconKt$Icon$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ String $contentDescription;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Painter $painter;
    final /* synthetic */ long $tint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IconKt$Icon$1(Painter painter, String str, Modifier modifier, long j6, int i10, int i11) {
        super(2);
        this.$painter = painter;
        this.$contentDescription = str;
        this.$modifier = modifier;
        this.$tint = j6;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        IconKt.a(this.$painter, this.$contentDescription, this.$modifier, this.$tint, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
