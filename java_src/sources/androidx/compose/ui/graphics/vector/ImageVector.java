package androidx.compose.ui.graphics.vector;

import androidx.compose.foundation.c;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class ImageVector {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean autoMirror;
    private final float defaultHeight;
    private final float defaultWidth;

    @NotNull
    private final String name;

    @NotNull
    private final VectorGroup root;
    private final int tintBlendMode;
    private final long tintColor;
    private final float viewportHeight;
    private final float viewportWidth;

    @StabilityInferred
    public static final class Builder {
        public static final int $stable = 8;
        private final boolean autoMirror;
        private final float defaultHeight;
        private final float defaultWidth;
        private boolean isConsumed;

        @NotNull
        private final String name;

        @NotNull
        private final ArrayList<GroupParams> nodes;

        @NotNull
        private GroupParams root;
        private final int tintBlendMode;
        private final long tintColor;
        private final float viewportHeight;
        private final float viewportWidth;

        private static final class GroupParams {

            @NotNull
            private List<VectorNode> children;

            @NotNull
            private List<? extends PathNode> clipPathData;

            @NotNull
            private String name;
            private float pivotX;
            private float pivotY;
            private float rotate;
            private float scaleX;
            private float scaleY;
            private float translationX;
            private float translationY;

            public GroupParams() {
                this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            }

            @NotNull
            public final List<VectorNode> a() {
                return this.children;
            }

            @NotNull
            public final List<PathNode> b() {
                return this.clipPathData;
            }

            @NotNull
            public final String c() {
                return this.name;
            }

            public final float d() {
                return this.pivotX;
            }

            public final float e() {
                return this.pivotY;
            }

            public final float f() {
                return this.rotate;
            }

            public final float g() {
                return this.scaleX;
            }

            public final float h() {
                return this.scaleY;
            }

            public final float i() {
                return this.translationX;
            }

            public final float j() {
                return this.translationY;
            }

            public GroupParams(@NotNull String name, float f, float f6, float f7, float f10, float f11, float f12, float f13, @NotNull List<? extends PathNode> clipPathData, @NotNull List<VectorNode> children) {
                t.j(name, "name");
                t.j(clipPathData, "clipPathData");
                t.j(children, "children");
                this.name = name;
                this.rotate = f;
                this.pivotX = f6;
                this.pivotY = f7;
                this.scaleX = f10;
                this.scaleY = f11;
                this.translationX = f12;
                this.translationY = f13;
                this.clipPathData = clipPathData;
                this.children = children;
            }

            public /* synthetic */ GroupParams(String str, float f, float f6, float f7, float f10, float f11, float f12, float f13, List list, List list2, int i10, k kVar) {
                this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f, (i10 & 4) != 0 ? 0.0f : f6, (i10 & 8) != 0 ? 0.0f : f7, (i10 & 16) != 0 ? 1.0f : f10, (i10 & 32) == 0 ? f11 : 1.0f, (i10 & 64) != 0 ? 0.0f : f12, (i10 & 128) == 0 ? f13 : 0.0f, (i10 & 256) != 0 ? VectorKt.e() : list, (i10 & 512) != 0 ? new ArrayList() : list2);
            }
        }

        public /* synthetic */ Builder(String str, float f, float f6, float f7, float f10, long j6, int i10, k kVar) {
            this(str, f, f6, f7, f10, j6, i10);
        }

        @NotNull
        public final Builder a(@NotNull String name, float f, float f6, float f7, float f10, float f11, float f12, float f13, @NotNull List<? extends PathNode> clipPathData) {
            t.j(name, "name");
            t.j(clipPathData, "clipPathData");
            h();
            Stack.h(this.nodes, new GroupParams(name, f, f6, f7, f10, f11, f12, f13, clipPathData, null, 512, null));
            return this;
        }

        public /* synthetic */ Builder(String str, float f, float f6, float f7, float f10, long j6, int i10, boolean z6, k kVar) {
            this(str, f, f6, f7, f10, j6, i10, z6);
        }

        private final VectorGroup e(GroupParams groupParams) {
            return new VectorGroup(groupParams.c(), groupParams.f(), groupParams.d(), groupParams.e(), groupParams.g(), groupParams.h(), groupParams.i(), groupParams.j(), groupParams.b(), groupParams.a());
        }

        private final void h() {
            if (!(!this.isConsumed)) {
                throw new IllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector".toString());
            }
        }

        private final GroupParams i() {
            return (GroupParams) Stack.f(this.nodes);
        }

        @NotNull
        public final Builder c(@NotNull List<? extends PathNode> pathData, int i10, @NotNull String name, @Nullable Brush brush, float f, @Nullable Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13) {
            t.j(pathData, "pathData");
            t.j(name, "name");
            h();
            i().a().add(new VectorPath(name, pathData, i10, brush, f, brush2, f6, f7, i11, i12, f10, f11, f12, f13, null));
            return this;
        }

        private Builder(String str, float f, float f6, float f7, float f10, long j6, int i10, boolean z6) {
            this.name = str;
            this.defaultWidth = f;
            this.defaultHeight = f6;
            this.viewportWidth = f7;
            this.viewportHeight = f10;
            this.tintColor = j6;
            this.tintBlendMode = i10;
            this.autoMirror = z6;
            ArrayList<GroupParams> arrayListB = Stack.b(null, 1, null);
            this.nodes = arrayListB;
            GroupParams groupParams = new GroupParams(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            this.root = groupParams;
            Stack.h(arrayListB, groupParams);
        }

        @NotNull
        public final ImageVector f() {
            h();
            while (Stack.d(this.nodes) > 1) {
                g();
            }
            ImageVector imageVector = new ImageVector(this.name, this.defaultWidth, this.defaultHeight, this.viewportWidth, this.viewportHeight, e(this.root), this.tintColor, this.tintBlendMode, this.autoMirror, null);
            this.isConsumed = true;
            return imageVector;
        }

        @NotNull
        public final Builder g() {
            h();
            i().a().add(e((GroupParams) Stack.g(this.nodes)));
            return this;
        }

        public /* synthetic */ Builder(String str, float f, float f6, float f7, float f10, long j6, int i10, boolean z6, int i11, k kVar) {
            this((i11 & 1) != 0 ? "" : str, f, f6, f7, f10, (i11 & 32) != 0 ? Color.Companion.f() : j6, (i11 & 64) != 0 ? BlendMode.Companion.z() : i10, (i11 & 128) != 0 ? false : z6, (k) null);
        }

        public /* synthetic */ Builder(String str, float f, float f6, float f7, float f10, long j6, int i10, int i11, k kVar) {
            this((i11 & 1) != 0 ? "" : str, f, f6, f7, f10, (i11 & 32) != 0 ? Color.Companion.f() : j6, (i11 & 64) != 0 ? BlendMode.Companion.z() : i10, (k) null);
        }

        private Builder(String str, float f, float f6, float f7, float f10, long j6, int i10) {
            this(str, f, f6, f7, f10, j6, i10, false, (k) null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ImageVector(String str, float f, float f6, float f7, float f10, VectorGroup vectorGroup, long j6, int i10, boolean z6, k kVar) {
        this(str, f, f6, f7, f10, vectorGroup, j6, i10, z6);
    }

    public final boolean a() {
        return this.autoMirror;
    }

    public final float b() {
        return this.defaultHeight;
    }

    public final float c() {
        return this.defaultWidth;
    }

    @NotNull
    public final String d() {
        return this.name;
    }

    @NotNull
    public final VectorGroup e() {
        return this.root;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageVector)) {
            return false;
        }
        ImageVector imageVector = (ImageVector) obj;
        return t.e(this.name, imageVector.name) && Dp.i(this.defaultWidth, imageVector.defaultWidth) && Dp.i(this.defaultHeight, imageVector.defaultHeight) && this.viewportWidth == imageVector.viewportWidth && this.viewportHeight == imageVector.viewportHeight && t.e(this.root, imageVector.root) && Color.n(this.tintColor, imageVector.tintColor) && BlendMode.G(this.tintBlendMode, imageVector.tintBlendMode) && this.autoMirror == imageVector.autoMirror;
    }

    public final int f() {
        return this.tintBlendMode;
    }

    public final long g() {
        return this.tintColor;
    }

    public final float h() {
        return this.viewportHeight;
    }

    public final float i() {
        return this.viewportWidth;
    }

    private ImageVector(String str, float f, float f6, float f7, float f10, VectorGroup vectorGroup, long j6, int i10, boolean z6) {
        this.name = str;
        this.defaultWidth = f;
        this.defaultHeight = f6;
        this.viewportWidth = f7;
        this.viewportHeight = f10;
        this.root = vectorGroup;
        this.tintColor = j6;
        this.tintBlendMode = i10;
        this.autoMirror = z6;
    }

    public int hashCode() {
        return (((((((((((((((this.name.hashCode() * 31) + Dp.j(this.defaultWidth)) * 31) + Dp.j(this.defaultHeight)) * 31) + Float.floatToIntBits(this.viewportWidth)) * 31) + Float.floatToIntBits(this.viewportHeight)) * 31) + this.root.hashCode()) * 31) + Color.t(this.tintColor)) * 31) + BlendMode.H(this.tintBlendMode)) * 31) + c.a(this.autoMirror);
    }
}
