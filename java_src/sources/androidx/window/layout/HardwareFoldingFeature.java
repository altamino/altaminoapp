package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class HardwareFoldingFeature implements FoldingFeature {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Bounds featureBounds;

    @NotNull
    private final FoldingFeature.State state;

    @NotNull
    private final Type type;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final void a(@NotNull Bounds bounds) {
            t.j(bounds, "bounds");
            if (bounds.d() == 0 && bounds.a() == 0) {
                throw new IllegalArgumentException("Bounds must be non zero".toString());
            }
            if (bounds.b() != 0 && bounds.c() != 0) {
                throw new IllegalArgumentException("Bounding rectangle must start at the top or left window edge for folding features".toString());
            }
        }
    }

    @NotNull
    public FoldingFeature.State b() {
        return this.state;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(HardwareFoldingFeature.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature");
        }
        HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) obj;
        return t.e(this.featureBounds, hardwareFoldingFeature.featureBounds) && t.e(this.type, hardwareFoldingFeature.type) && t.e(b(), hardwareFoldingFeature.b());
    }

    public static final class Type {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final Type FOLD = new Type("FOLD");

        @NotNull
        private static final Type HINGE = new Type("HINGE");

        @NotNull
        private final String description;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final Type a() {
                return Type.FOLD;
            }

            @NotNull
            public final Type b() {
                return Type.HINGE;
            }
        }

        @NotNull
        public String toString() {
            return this.description;
        }

        private Type(String str) {
            this.description = str;
        }
    }

    public HardwareFoldingFeature(@NotNull Bounds featureBounds, @NotNull Type type, @NotNull FoldingFeature.State state) {
        t.j(featureBounds, "featureBounds");
        t.j(type, "type");
        t.j(state, "state");
        this.featureBounds = featureBounds;
        this.type = type;
        this.state = state;
        Companion.a(featureBounds);
    }

    @Override // androidx.window.layout.FoldingFeature
    public boolean a() {
        Type type = this.type;
        Type.Companion companion = Type.Companion;
        if (t.e(type, companion.b())) {
            return true;
        }
        return t.e(this.type, companion.a()) && t.e(b(), FoldingFeature.State.HALF_OPENED);
    }

    @Override // androidx.window.layout.DisplayFeature
    @NotNull
    public Rect getBounds() {
        return this.featureBounds.f();
    }

    @Override // androidx.window.layout.FoldingFeature
    @NotNull
    public FoldingFeature.Orientation getOrientation() {
        return this.featureBounds.d() > this.featureBounds.a() ? FoldingFeature.Orientation.HORIZONTAL : FoldingFeature.Orientation.VERTICAL;
    }

    public int hashCode() {
        return (((this.featureBounds.hashCode() * 31) + this.type.hashCode()) * 31) + b().hashCode();
    }

    @NotNull
    public String toString() {
        return ((Object) HardwareFoldingFeature.class.getSimpleName()) + " { " + this.featureBounds + ", type=" + this.type + ", state=" + b() + " }";
    }
}
