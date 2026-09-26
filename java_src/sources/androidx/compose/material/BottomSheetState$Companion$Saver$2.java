package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetState$Companion$Saver$2 extends v implements l<BottomSheetValue, BottomSheetState> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<BottomSheetValue, Boolean> $confirmStateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetState$Companion$Saver$2(AnimationSpec<Float> animationSpec, l<? super BottomSheetValue, Boolean> lVar) {
        super(1);
        this.$animationSpec = animationSpec;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final BottomSheetState invoke(@NotNull BottomSheetValue it) {
        t.j(it, "it");
        return new BottomSheetState(it, this.$animationSpec, this.$confirmStateChange);
    }
}
