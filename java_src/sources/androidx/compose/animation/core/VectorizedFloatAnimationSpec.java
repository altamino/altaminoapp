package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import j8.o;
import java.util.Iterator;
import kotlin.collections.m0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class VectorizedFloatAnimationSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;

    @NotNull
    private final Animations anims;
    private V endVelocityVector;
    private V valueVector;
    private V velocityVector;

    public VectorizedFloatAnimationSpec(@NotNull Animations anims) {
        t.j(anims, "anims");
        this.anims = anims;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean a() {
        return h.a(this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VectorizedFloatAnimationSpec(@NotNull final FloatAnimationSpec anim) {
        this(new Animations() { // from class: androidx.compose.animation.core.VectorizedFloatAnimationSpec.1
            @Override // androidx.compose.animation.core.Animations
            @NotNull
            public FloatAnimationSpec get(int i10) {
                return anim;
            }
        });
        t.j(anim, "anim");
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V b(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.endVelocityVector == null) {
            this.endVelocityVector = (V) AnimationVectorsKt.d(initialVelocity);
        }
        V v5 = this.endVelocityVector;
        if (v5 == null) {
            t.B("endVelocityVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.endVelocityVector;
            if (v6 == null) {
                t.B("endVelocityVector");
                v6 = null;
            }
            v6.e(i10, this.anims.get(i10).d(initialValue.a(i10), targetValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.endVelocityVector;
        if (v10 != null) {
            return v10;
        }
        t.B("endVelocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V c(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.d(initialVelocity);
        }
        V v5 = this.velocityVector;
        if (v5 == null) {
            t.B("velocityVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.velocityVector;
            if (v6 == null) {
                t.B("velocityVector");
                v6 = null;
            }
            v6.e(i10, this.anims.get(i10).b(j6, initialValue.a(i10), targetValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.velocityVector;
        if (v10 != null) {
            return v10;
        }
        t.B("velocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long d(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        Iterator<Integer> it = o.v(0, initialValue.b()).iterator();
        long jMax = 0;
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            jMax = Math.max(jMax, this.anims.get(iNextInt).c(initialValue.a(iNextInt), targetValue.a(iNextInt), initialVelocity.a(iNextInt)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.d(initialValue);
        }
        V v5 = this.valueVector;
        if (v5 == null) {
            t.B("valueVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.valueVector;
            if (v6 == null) {
                t.B("valueVector");
                v6 = null;
            }
            v6.e(i10, this.anims.get(i10).e(j6, initialValue.a(i10), targetValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.valueVector;
        if (v10 != null) {
            return v10;
        }
        t.B("valueVector");
        return null;
    }
}
