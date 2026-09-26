package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class TransformableKt$transformable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ boolean $lockRotationOnZoomPan;
    final /* synthetic */ TransformableState $state;

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1509335853);
        State stateN = SnapshotStateKt.n(this.$state, composer, 0);
        State stateN2 = SnapshotStateKt.n(Boolean.valueOf(this.$lockRotationOnZoomPan), composer, 0);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new TransformableKt$transformable$2$block$1$1(stateN2, stateN, null);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = this.$enabled ? SuspendingPointerInputFilterKt.b(Modifier.Companion, l0.INSTANCE, (p) objH) : Modifier.Companion;
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
