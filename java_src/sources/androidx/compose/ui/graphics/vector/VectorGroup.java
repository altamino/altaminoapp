package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class VectorGroup extends VectorNode implements Iterable<VectorNode>, f8.a {

    @NotNull
    private final List<VectorNode> children;

    @NotNull
    private final List<PathNode> clipPathData;

    @NotNull
    private final String name;
    private final float pivotX;
    private final float pivotY;
    private final float rotation;
    private final float scaleX;
    private final float scaleY;
    private final float translationX;
    private final float translationY;

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.vector.VectorGroup$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<VectorNode>, f8.a {

        @NotNull
        private final Iterator<VectorNode> it;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public VectorNode next() {
            return this.it.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.it.hasNext();
        }

        AnonymousClass1(VectorGroup vectorGroup) {
            this.it = vectorGroup.children.iterator();
        }
    }

    public VectorGroup() {
        this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
    }

    @NotNull
    public final List<PathNode> c() {
        return this.clipPathData;
    }

    @NotNull
    public final String e() {
        return this.name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof VectorGroup)) {
            VectorGroup vectorGroup = (VectorGroup) obj;
            return t.e(this.name, vectorGroup.name) && this.rotation == vectorGroup.rotation && this.pivotX == vectorGroup.pivotX && this.pivotY == vectorGroup.pivotY && this.scaleX == vectorGroup.scaleX && this.scaleY == vectorGroup.scaleY && this.translationX == vectorGroup.translationX && this.translationY == vectorGroup.translationY && t.e(this.clipPathData, vectorGroup.clipPathData) && t.e(this.children, vectorGroup.children);
        }
        return false;
    }

    public final float f() {
        return this.pivotX;
    }

    public final float g() {
        return this.pivotY;
    }

    public final float j() {
        return this.rotation;
    }

    public final float m() {
        return this.scaleX;
    }

    public final float p() {
        return this.scaleY;
    }

    public final float q() {
        return this.translationX;
    }

    public final float r() {
        return this.translationY;
    }

    public /* synthetic */ VectorGroup(String str, float f, float f6, float f7, float f10, float f11, float f12, float f13, List list, List list2, int i10, k kVar) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f, (i10 & 4) != 0 ? 0.0f : f6, (i10 & 8) != 0 ? 0.0f : f7, (i10 & 16) != 0 ? 1.0f : f10, (i10 & 32) == 0 ? f11 : 1.0f, (i10 & 64) != 0 ? 0.0f : f12, (i10 & 128) == 0 ? f13 : 0.0f, (i10 & 256) != 0 ? VectorKt.e() : list, (i10 & 512) != 0 ? v.m() : list2);
    }

    public int hashCode() {
        return (((((((((((((((((this.name.hashCode() * 31) + Float.floatToIntBits(this.rotation)) * 31) + Float.floatToIntBits(this.pivotX)) * 31) + Float.floatToIntBits(this.pivotY)) * 31) + Float.floatToIntBits(this.scaleX)) * 31) + Float.floatToIntBits(this.scaleY)) * 31) + Float.floatToIntBits(this.translationX)) * 31) + Float.floatToIntBits(this.translationY)) * 31) + this.clipPathData.hashCode()) * 31) + this.children.hashCode();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<VectorNode> iterator() {
        return new AnonymousClass1(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VectorGroup(@NotNull String name, float f, float f6, float f7, float f10, float f11, float f12, float f13, @NotNull List<? extends PathNode> clipPathData, @NotNull List<? extends VectorNode> children) {
        super(null);
        t.j(name, "name");
        t.j(clipPathData, "clipPathData");
        t.j(children, "children");
        this.name = name;
        this.rotation = f;
        this.pivotX = f6;
        this.pivotY = f7;
        this.scaleX = f10;
        this.scaleY = f11;
        this.translationX = f12;
        this.translationY = f13;
        this.clipPathData = clipPathData;
        this.children = children;
    }
}
