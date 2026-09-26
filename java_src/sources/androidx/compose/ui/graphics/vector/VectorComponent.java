package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class VectorComponent extends VNode {

    @NotNull
    private final DrawCache cacheDrawScope;

    @NotNull
    private final l<DrawScope, l0> drawVectorBlock;

    @NotNull
    private final MutableState intrinsicColorFilter$delegate;

    @NotNull
    private e8.a<l0> invalidateCallback;
    private boolean isDirty;
    private long previousDrawSize;

    @NotNull
    private final GroupComponent root;
    private float viewportHeight;
    private float viewportWidth;

    public VectorComponent() {
        super(null);
        GroupComponent groupComponent = new GroupComponent();
        groupComponent.m(0.0f);
        groupComponent.n(0.0f);
        groupComponent.d(new VectorComponent$root$1$1(this));
        this.root = groupComponent;
        this.isDirty = true;
        this.cacheDrawScope = new DrawCache();
        this.invalidateCallback = VectorComponent$invalidateCallback$1.INSTANCE;
        this.intrinsicColorFilter$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.previousDrawSize = Size.Companion.a();
        this.drawVectorBlock = new VectorComponent$drawVectorBlock$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        this.isDirty = true;
        this.invalidateCallback.invoke();
    }

    @NotNull
    public final GroupComponent j() {
        return this.root;
    }

    public final float k() {
        return this.viewportHeight;
    }

    public final float l() {
        return this.viewportWidth;
    }

    public final void n(@NotNull e8.a<l0> aVar) {
        t.j(aVar, "<set-?>");
        this.invalidateCallback = aVar;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void a(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        g(drawScope, 1.0f, null);
    }

    public final void g(@NotNull DrawScope drawScope, float f, @Nullable ColorFilter colorFilter) {
        t.j(drawScope, "<this>");
        if (colorFilter == null) {
            colorFilter = h();
        }
        if (this.isDirty || !Size.f(this.previousDrawSize, drawScope.c())) {
            this.root.p(Size.i(drawScope.c()) / this.viewportWidth);
            this.root.q(Size.g(drawScope.c()) / this.viewportHeight);
            this.cacheDrawScope.b(IntSizeKt.a((int) Math.ceil(Size.i(drawScope.c())), (int) Math.ceil(Size.g(drawScope.c()))), drawScope, drawScope.getLayoutDirection(), this.drawVectorBlock);
            this.isDirty = false;
            this.previousDrawSize = drawScope.c();
        }
        this.cacheDrawScope.c(drawScope, f, colorFilter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final ColorFilter h() {
        return (ColorFilter) this.intrinsicColorFilter$delegate.getValue();
    }

    @NotNull
    public final String i() {
        return this.root.e();
    }

    public final void m(@Nullable ColorFilter colorFilter) {
        this.intrinsicColorFilter$delegate.setValue(colorFilter);
    }

    public final void o(@NotNull String value) {
        t.j(value, "value");
        this.root.l(value);
    }

    public final void p(float f) {
        if (this.viewportHeight == f) {
            return;
        }
        this.viewportHeight = f;
        f();
    }

    public final void q(float f) {
        if (this.viewportWidth == f) {
            return;
        }
        this.viewportWidth = f;
        f();
    }

    @NotNull
    public String toString() {
        String str = "Params: \tname: " + i() + "\n\tviewportWidth: " + this.viewportWidth + "\n\tviewportHeight: " + this.viewportHeight + "\n";
        t.i(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }
}
