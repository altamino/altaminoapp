package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class ModalBottomSheetKt$rememberModalBottomSheetState$2 extends v implements a<ModalBottomSheetState> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<ModalBottomSheetValue, Boolean> $confirmStateChange;
    final /* synthetic */ ModalBottomSheetValue $initialValue;
    final /* synthetic */ boolean $skipHalfExpanded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ModalBottomSheetKt$rememberModalBottomSheetState$2(ModalBottomSheetValue modalBottomSheetValue, AnimationSpec<Float> animationSpec, boolean z6, l<? super ModalBottomSheetValue, Boolean> lVar) {
        super(0);
        this.$initialValue = modalBottomSheetValue;
        this.$animationSpec = animationSpec;
        this.$skipHalfExpanded = z6;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ModalBottomSheetState invoke() {
        return new ModalBottomSheetState(this.$initialValue, this.$animationSpec, this.$skipHalfExpanded, this.$confirmStateChange);
    }
}
