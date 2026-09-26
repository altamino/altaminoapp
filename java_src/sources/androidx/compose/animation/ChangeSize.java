package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class ChangeSize {

    @NotNull
    private final Alignment alignment;

    @NotNull
    private final FiniteAnimationSpec<IntSize> animationSpec;
    private final boolean clip;

    @NotNull
    private final l<IntSize, IntSize> size;

    /* JADX INFO: renamed from: androidx.compose.animation.ChangeSize$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<IntSize, IntSize> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final long a(long j6) {
            return IntSizeKt.a(0, 0);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.b(a(intSize.j()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChangeSize(@NotNull Alignment alignment, @NotNull l<? super IntSize, IntSize> size, @NotNull FiniteAnimationSpec<IntSize> animationSpec, boolean z6) {
        t.j(alignment, "alignment");
        t.j(size, "size");
        t.j(animationSpec, "animationSpec");
        this.alignment = alignment;
        this.size = size;
        this.animationSpec = animationSpec;
        this.clip = z6;
    }

    @NotNull
    public final Alignment a() {
        return this.alignment;
    }

    @NotNull
    public final FiniteAnimationSpec<IntSize> b() {
        return this.animationSpec;
    }

    public final boolean c() {
        return this.clip;
    }

    @NotNull
    public final l<IntSize, IntSize> d() {
        return this.size;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChangeSize)) {
            return false;
        }
        ChangeSize changeSize = (ChangeSize) obj;
        return t.e(this.alignment, changeSize.alignment) && t.e(this.size, changeSize.size) && t.e(this.animationSpec, changeSize.animationSpec) && this.clip == changeSize.clip;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = ((((this.alignment.hashCode() * 31) + this.size.hashCode()) * 31) + this.animationSpec.hashCode()) * 31;
        boolean z6 = this.clip;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    @NotNull
    public String toString() {
        return "ChangeSize(alignment=" + this.alignment + ", size=" + this.size + ", animationSpec=" + this.animationSpec + ", clip=" + this.clip + ')';
    }

    public /* synthetic */ ChangeSize(Alignment alignment, l lVar, FiniteAnimationSpec finiteAnimationSpec, boolean z6, int i10, k kVar) {
        this(alignment, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : lVar, finiteAnimationSpec, (i10 & 8) != 0 ? true : z6);
    }
}
