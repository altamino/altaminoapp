package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class ExposedDropdownMenuDefaults$TrailingIcon$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ a<l0> $onIconClick;
    final /* synthetic */ ExposedDropdownMenuDefaults $tmp0_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuDefaults$TrailingIcon$4(ExposedDropdownMenuDefaults exposedDropdownMenuDefaults, boolean z6, a<l0> aVar, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = exposedDropdownMenuDefaults;
        this.$expanded = z6;
        this.$onIconClick = aVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$expanded, this.$onIconClick, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
