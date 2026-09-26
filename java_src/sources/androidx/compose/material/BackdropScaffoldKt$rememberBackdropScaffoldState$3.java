package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$rememberBackdropScaffoldState$3 extends v implements a<BackdropScaffoldState> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<BackdropValue, Boolean> $confirmStateChange;
    final /* synthetic */ BackdropValue $initialValue;
    final /* synthetic */ SnackbarHostState $snackbarHostState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$rememberBackdropScaffoldState$3(BackdropValue backdropValue, AnimationSpec<Float> animationSpec, l<? super BackdropValue, Boolean> lVar, SnackbarHostState snackbarHostState) {
        super(0);
        this.$initialValue = backdropValue;
        this.$animationSpec = animationSpec;
        this.$confirmStateChange = lVar;
        this.$snackbarHostState = snackbarHostState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BackdropScaffoldState invoke() {
        return new BackdropScaffoldState(this.$initialValue, this.$animationSpec, this.$confirmStateChange, this.$snackbarHostState);
    }
}
