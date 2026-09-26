package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ColorSpace {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MaxId = 63;
    public static final int MinId = -1;
    private final int id;
    private final long model;

    @NotNull
    private final String name;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ColorSpace(String str, long j6, int i10, k kVar) {
        this(str, j6, i10);
    }

    @NotNull
    public abstract float[] a(@NotNull float[] fArr);

    public final int c() {
        return this.id;
    }

    public abstract float d(int i10);

    public abstract float e(int i10);

    public final long f() {
        return this.model;
    }

    @NotNull
    public final String g() {
        return this.name;
    }

    public boolean h() {
        return false;
    }

    @NotNull
    public abstract float[] i(@NotNull float[] fArr);

    public /* synthetic */ ColorSpace(String str, long j6, k kVar) {
        this(str, j6);
    }

    public final int b() {
        return ColorModel.g(this.model);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(getClass()), q0.b(obj.getClass()))) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        if (this.id == colorSpace.id && t.e(this.name, colorSpace.name)) {
            return ColorModel.f(this.model, colorSpace.model);
        }
        return false;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + ColorModel.h(this.model)) * 31) + this.id;
    }

    @NotNull
    public String toString() {
        return this.name + " (id=" + this.id + ", model=" + ((Object) ColorModel.i(this.model)) + ')';
    }

    private ColorSpace(String str, long j6, int i10) {
        this.name = str;
        this.model = j6;
        this.id = i10;
        if (str.length() == 0) {
            throw new IllegalArgumentException("The name of a color space cannot be null and must contain at least 1 character");
        }
        if (i10 < -1 || i10 > 63) {
            throw new IllegalArgumentException("The id must be between -1 and 63");
        }
    }

    private ColorSpace(String str, long j6) {
        this(str, j6, -1, null);
    }
}
