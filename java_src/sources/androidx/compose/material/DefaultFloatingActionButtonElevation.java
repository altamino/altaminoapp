package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.Dp;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Stable
final class DefaultFloatingActionButtonElevation implements FloatingActionButtonElevation {
    private final float defaultElevation;
    private final float focusedElevation;
    private final float hoveredElevation;
    private final float pressedElevation;

    public /* synthetic */ DefaultFloatingActionButtonElevation(float f, float f6, float f7, float f10, k kVar) {
        this(f, f6, f7, f10);
    }

    private DefaultFloatingActionButtonElevation(float f, float f6, float f7, float f10) {
        this.defaultElevation = f;
        this.pressedElevation = f6;
        this.hoveredElevation = f7;
        this.focusedElevation = f10;
    }

    @Override // androidx.compose.material.FloatingActionButtonElevation
    @Composable
    @NotNull
    public State<Dp> a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        float f;
        t.j(interactionSource, "interactionSource");
        composer.G(-478475335);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt.d();
            composer.z(objH);
        }
        composer.Q();
        SnapshotStateList snapshotStateList = (SnapshotStateList) objH;
        EffectsKt.d(interactionSource, new DefaultFloatingActionButtonElevation$elevation$1(interactionSource, snapshotStateList, null), composer, i10 & 14);
        Interaction interaction = (Interaction) d0.w0(snapshotStateList);
        if (interaction instanceof PressInteraction.Press) {
            f = this.pressedElevation;
        } else if (interaction instanceof HoverInteraction.Enter) {
            f = this.hoveredElevation;
        } else {
            f = interaction instanceof FocusInteraction.Focus ? this.focusedElevation : this.defaultElevation;
        }
        float f6 = f;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = new Animatable(Dp.c(f6), VectorConvertersKt.e(Dp.Companion), null, 4, null);
            composer.z(objH2);
        }
        composer.Q();
        Animatable animatable = (Animatable) objH2;
        EffectsKt.d(Dp.c(f6), new DefaultFloatingActionButtonElevation$elevation$2(animatable, this, f6, interaction, null), composer, 0);
        State<Dp> stateG = animatable.g();
        composer.Q();
        return stateG;
    }
}
