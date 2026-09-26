package androidx.compose.animation.core;

import j8.i;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.m0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class VectorizedAnimationSpecKt {
    private static final int InfiniteIterations = Integer.MAX_VALUE;

    /* JADX INFO: Access modifiers changed from: private */
    public static final <V extends AnimationVector> Animations d(final V v5, final float f, final float f6) {
        return v5 != null ? new Animations(v5, f, f6) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$1

            @NotNull
            private final List<FloatSpringSpec> anims;

            @Override // androidx.compose.animation.core.Animations
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public FloatSpringSpec get(int i10) {
                return this.anims.get(i10);
            }

            /* JADX WARN: Incorrect types in method signature: (TV;FF)V */
            {
                i iVarV = o.v(0, v5.b());
                ArrayList arrayList = new ArrayList(w.x(iVarV, 10));
                Iterator<Integer> it = iVarV.iterator();
                while (it.hasNext()) {
                    arrayList.add(new FloatSpringSpec(f, f6, v5.a(((m0) it).nextInt())));
                }
                this.anims = arrayList;
            }
        } : new Animations(f, f6) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$2

            @NotNull
            private final FloatSpringSpec anim;

            @Override // androidx.compose.animation.core.Animations
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public FloatSpringSpec get(int i10) {
                return this.anim;
            }

            {
                this.anim = new FloatSpringSpec(f, f6, 0.0f, 4, null);
            }
        };
    }

    @NotNull
    public static final <V extends AnimationVector> V e(@NotNull VectorizedAnimationSpec<V> vectorizedAnimationSpec, long j6, @NotNull V start, @NotNull V end, @NotNull V startVelocity) {
        t.j(vectorizedAnimationSpec, "<this>");
        t.j(start, "start");
        t.j(end, "end");
        t.j(startVelocity, "startVelocity");
        return (V) vectorizedAnimationSpec.e(j6 * 1000000, start, end, startVelocity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(VectorizedDurationBasedAnimationSpec<?> vectorizedDurationBasedAnimationSpec, long j6) {
        return o.p(j6 - ((long) vectorizedDurationBasedAnimationSpec.f()), 0L, vectorizedDurationBasedAnimationSpec.g());
    }
}
