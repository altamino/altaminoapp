package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class Stroke extends DrawStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DefaultCap = StrokeCap.Companion.a();
    private static final int DefaultJoin = StrokeJoin.Companion.b();
    public static final float DefaultMiter = 4.0f;
    public static final float HairlineWidth = 0.0f;
    private final int cap;
    private final int join;
    private final float miter;

    @Nullable
    private final PathEffect pathEffect;
    private final float width;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return Stroke.DefaultCap;
        }
    }

    public /* synthetic */ Stroke(float f, float f6, int i10, int i11, PathEffect pathEffect, k kVar) {
        this(f, f6, i10, i11, pathEffect);
    }

    public final int b() {
        return this.cap;
    }

    public final int c() {
        return this.join;
    }

    public final float d() {
        return this.miter;
    }

    @Nullable
    public final PathEffect e() {
        return this.pathEffect;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        return this.width == stroke.width && this.miter == stroke.miter && StrokeCap.g(this.cap, stroke.cap) && StrokeJoin.g(this.join, stroke.join) && t.e(this.pathEffect, stroke.pathEffect);
    }

    public final float f() {
        return this.width;
    }

    public /* synthetic */ Stroke(float f, float f6, int i10, int i11, PathEffect pathEffect, int i12, k kVar) {
        this((i12 & 1) != 0 ? 0.0f : f, (i12 & 2) != 0 ? 4.0f : f6, (i12 & 4) != 0 ? StrokeCap.Companion.a() : i10, (i12 & 8) != 0 ? StrokeJoin.Companion.b() : i11, (i12 & 16) != 0 ? null : pathEffect, null);
    }

    public int hashCode() {
        int iFloatToIntBits = ((((((Float.floatToIntBits(this.width) * 31) + Float.floatToIntBits(this.miter)) * 31) + StrokeCap.h(this.cap)) * 31) + StrokeJoin.h(this.join)) * 31;
        PathEffect pathEffect = this.pathEffect;
        return iFloatToIntBits + (pathEffect != null ? pathEffect.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "Stroke(width=" + this.width + ", miter=" + this.miter + ", cap=" + ((Object) StrokeCap.i(this.cap)) + ", join=" + ((Object) StrokeJoin.i(this.join)) + ", pathEffect=" + this.pathEffect + ')';
    }

    private Stroke(float f, float f6, int i10, int i11, PathEffect pathEffect) {
        super(null);
        this.width = f;
        this.miter = f6;
        this.cap = i10;
        this.join = i11;
        this.pathEffect = pathEffect;
    }
}
