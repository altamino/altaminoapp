package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class ModalBottomSheetState$Companion$Saver$2 extends v implements l<ModalBottomSheetValue, ModalBottomSheetState> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<ModalBottomSheetValue, Boolean> $confirmStateChange;
    final /* synthetic */ boolean $skipHalfExpanded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ModalBottomSheetState$Companion$Saver$2(AnimationSpec<Float> animationSpec, boolean z6, l<? super ModalBottomSheetValue, Boolean> lVar) {
        super(1);
        this.$animationSpec = animationSpec;
        this.$skipHalfExpanded = z6;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ModalBottomSheetState invoke(@NotNull ModalBottomSheetValue it) {
        t.j(it, "it");
        return new ModalBottomSheetState(it, this.$animationSpec, this.$skipHalfExpanded, this.$confirmStateChange);
    }
}
