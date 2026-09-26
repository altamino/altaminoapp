package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $body;
    final /* synthetic */ q<Integer, Composer, Integer, l0> $bottomSheet;
    final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
    final /* synthetic */ int $floatingActionButtonPosition;
    final /* synthetic */ State<Float> $sheetOffset;
    final /* synthetic */ float $sheetPeekHeight;
    final /* synthetic */ BottomSheetState $sheetState;
    final /* synthetic */ p<Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2(p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, q<? super Integer, ? super Composer, ? super Integer, l0> qVar2, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, float f, int i10, State<Float> state, BottomSheetState bottomSheetState, int i11) {
        super(2);
        this.$topBar = pVar;
        this.$body = qVar;
        this.$bottomSheet = qVar2;
        this.$floatingActionButton = pVar2;
        this.$snackbarHost = pVar3;
        this.$sheetPeekHeight = f;
        this.$floatingActionButtonPosition = i10;
        this.$sheetOffset = state;
        this.$sheetState = bottomSheetState;
        this.$$changed = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BottomSheetScaffoldKt.b(this.$topBar, this.$body, this.$bottomSheet, this.$floatingActionButton, this.$snackbarHost, this.$sheetPeekHeight, this.$floatingActionButtonPosition, this.$sheetOffset, this.$sheetState, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
