package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes5.dex */
final class AnimatedContentScope$SizeModifier$measure$size$2<S> extends v implements l<S, IntSize> {
    final /* synthetic */ AnimatedContentScope<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimatedContentScope$SizeModifier$measure$size$2(AnimatedContentScope<S> animatedContentScope) {
        super(1);
        this.this$0 = animatedContentScope;
    }

    public final long a(S s) {
        State<IntSize> state = this.this$0.m().get(s);
        return state != null ? state.getValue().j() : IntSize.Companion.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e8.l
    public /* bridge */ /* synthetic */ IntSize invoke(Object obj) {
        return IntSize.b(a(obj));
    }
}
