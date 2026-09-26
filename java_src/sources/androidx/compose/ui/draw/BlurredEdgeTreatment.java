package androidx.compose.ui.draw;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class BlurredEdgeTreatment {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Shape Rectangle = a(RectangleShapeKt.a());

    @NotNull
    private static final Shape Unbounded = a(null);

    @Nullable
    private final Shape shape;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public static Shape a(@Nullable Shape shape) {
        return shape;
    }

    public static boolean b(Shape shape, Object obj) {
        return (obj instanceof BlurredEdgeTreatment) && t.e(shape, ((BlurredEdgeTreatment) obj).e());
    }

    public static int c(Shape shape) {
        if (shape == null) {
            return 0;
        }
        return shape.hashCode();
    }

    public static String d(Shape shape) {
        return "BlurredEdgeTreatment(shape=" + shape + ')';
    }

    public final /* synthetic */ Shape e() {
        return this.shape;
    }

    public boolean equals(Object obj) {
        return b(this.shape, obj);
    }

    public int hashCode() {
        return c(this.shape);
    }

    public String toString() {
        return d(this.shape);
    }
}
