package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import e8.p;
import java.util.Map;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorPainterKt$RenderVectorGroup$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ Map<String, VectorConfig> $configs;
    final /* synthetic */ VectorGroup $group;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VectorPainterKt$RenderVectorGroup$2(VectorGroup vectorGroup, Map<String, ? extends VectorConfig> map, int i10, int i11) {
        super(2);
        this.$group = vectorGroup;
        this.$configs = map;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        VectorPainterKt.a(this.$group, this.$configs, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
