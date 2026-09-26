package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$rememberBottomSheetState$2 extends v implements a<BottomSheetState> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<BottomSheetValue, Boolean> $confirmStateChange;
    final /* synthetic */ BottomSheetValue $initialValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$rememberBottomSheetState$2(BottomSheetValue bottomSheetValue, AnimationSpec<Float> animationSpec, l<? super BottomSheetValue, Boolean> lVar) {
        super(0);
        this.$initialValue = bottomSheetValue;
        this.$animationSpec = animationSpec;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BottomSheetState invoke() {
        return new BottomSheetState(this.$initialValue, this.$animationSpec, this.$confirmStateChange);
    }
}
