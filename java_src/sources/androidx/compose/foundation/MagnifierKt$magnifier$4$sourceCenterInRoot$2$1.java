package androidx.compose.foundation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.Density;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes4.dex */
final class MagnifierKt$magnifier$4$sourceCenterInRoot$2$1 extends v implements e8.a<Offset> {
    final /* synthetic */ MutableState<Offset> $anchorPositionInRoot$delegate;
    final /* synthetic */ Density $density;
    final /* synthetic */ State<l<Density, Offset>> $updatedSourceCenter$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MagnifierKt$magnifier$4$sourceCenterInRoot$2$1(Density density, State<? extends l<? super Density, Offset>> state, MutableState<Offset> mutableState) {
        super(0);
        this.$density = density;
        this.$updatedSourceCenter$delegate = state;
        this.$anchorPositionInRoot$delegate = mutableState;
    }

    public final long b() {
        long jU = ((Offset) MagnifierKt$magnifier$4.m(this.$updatedSourceCenter$delegate).invoke(this.$density)).u();
        return (OffsetKt.c(MagnifierKt$magnifier$4.j(this.$anchorPositionInRoot$delegate)) && OffsetKt.c(jU)) ? Offset.r(MagnifierKt$magnifier$4.j(this.$anchorPositionInRoot$delegate), jU) : Offset.Companion.b();
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ Offset invoke() {
        return Offset.d(b());
    }
}
