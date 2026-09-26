package androidx.compose.animation.core;

import java.util.Iterator;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class Transition$totalDurationNanos$2 extends v implements e8.a<Long> {
    final /* synthetic */ Transition<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Transition$totalDurationNanos$2(Transition<S> transition) {
        super(0);
        this.this$0 = transition;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long invoke() {
        Iterator<T> it = ((Transition) this.this$0)._animations.iterator();
        long jMax = 0;
        while (it.hasNext()) {
            jMax = Math.max(jMax, ((Transition.TransitionAnimationState) it.next()).d());
        }
        Iterator<T> it2 = ((Transition) this.this$0)._transitions.iterator();
        while (it2.hasNext()) {
            jMax = Math.max(jMax, ((Transition) it2.next()).n());
        }
        return Long.valueOf(jMax);
    }
}
