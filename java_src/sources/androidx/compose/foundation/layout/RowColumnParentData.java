package androidx.compose.foundation.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class RowColumnParentData {

    @Nullable
    private CrossAxisAlignment crossAxisAlignment;
    private boolean fill;
    private float weight;

    public RowColumnParentData() {
        this(0.0f, false, null, 7, null);
    }

    @Nullable
    public final CrossAxisAlignment a() {
        return this.crossAxisAlignment;
    }

    public final boolean b() {
        return this.fill;
    }

    public final float c() {
        return this.weight;
    }

    public final void d(@Nullable CrossAxisAlignment crossAxisAlignment) {
        this.crossAxisAlignment = crossAxisAlignment;
    }

    public final void e(boolean z6) {
        this.fill = z6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowColumnParentData)) {
            return false;
        }
        RowColumnParentData rowColumnParentData = (RowColumnParentData) obj;
        return t.e(Float.valueOf(this.weight), Float.valueOf(rowColumnParentData.weight)) && this.fill == rowColumnParentData.fill && t.e(this.crossAxisAlignment, rowColumnParentData.crossAxisAlignment);
    }

    public final void f(float f) {
        this.weight = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iFloatToIntBits = Float.floatToIntBits(this.weight) * 31;
        boolean z6 = this.fill;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = (iFloatToIntBits + r1) * 31;
        CrossAxisAlignment crossAxisAlignment = this.crossAxisAlignment;
        return i10 + (crossAxisAlignment == null ? 0 : crossAxisAlignment.hashCode());
    }

    @NotNull
    public String toString() {
        return "RowColumnParentData(weight=" + this.weight + ", fill=" + this.fill + ", crossAxisAlignment=" + this.crossAxisAlignment + ')';
    }

    public RowColumnParentData(float f, boolean z6, @Nullable CrossAxisAlignment crossAxisAlignment) {
        this.weight = f;
        this.fill = z6;
        this.crossAxisAlignment = crossAxisAlignment;
    }

    public /* synthetic */ RowColumnParentData(float f, boolean z6, CrossAxisAlignment crossAxisAlignment, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? 0.0f : f, (i10 & 2) != 0 ? true : z6, (i10 & 4) != 0 ? null : crossAxisAlignment);
    }
}
