package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class TextGeometricTransform {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TextGeometricTransform None = new TextGeometricTransform(1.0f, 0.0f);
    private final float scaleX;
    private final float skewX;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TextGeometricTransform a() {
            return TextGeometricTransform.None;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextGeometricTransform() {
        float f = 0.0f;
        this(f, f, 3, null);
    }

    public final float b() {
        return this.scaleX;
    }

    public final float c() {
        return this.skewX;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextGeometricTransform)) {
            return false;
        }
        TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj;
        return this.scaleX == textGeometricTransform.scaleX && this.skewX == textGeometricTransform.skewX;
    }

    public TextGeometricTransform(float f, float f6) {
        this.scaleX = f;
        this.skewX = f6;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.scaleX) * 31) + Float.floatToIntBits(this.skewX);
    }

    @NotNull
    public String toString() {
        return "TextGeometricTransform(scaleX=" + this.scaleX + ", skewX=" + this.skewX + ')';
    }

    public /* synthetic */ TextGeometricTransform(float f, float f6, int i10, k kVar) {
        this((i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 0.0f : f6);
    }
}
