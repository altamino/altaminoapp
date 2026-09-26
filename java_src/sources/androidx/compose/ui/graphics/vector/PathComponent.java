package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathMeasure;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.e1;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class PathComponent extends VNode {

    @Nullable
    private Brush fill;
    private float fillAlpha;
    private boolean isPathDirty;
    private boolean isStrokeDirty;
    private boolean isTrimPathDirty;

    @NotNull
    private String name;

    @NotNull
    private final PathParser parser;

    @NotNull
    private final Path path;

    @NotNull
    private List<? extends PathNode> pathData;
    private int pathFillType;

    @NotNull
    private final m pathMeasure$delegate;

    @NotNull
    private final Path renderPath;

    @Nullable
    private Brush stroke;
    private float strokeAlpha;
    private int strokeLineCap;
    private int strokeLineJoin;
    private float strokeLineMiter;
    private float strokeLineWidth;

    @Nullable
    private Stroke strokeStyle;
    private float trimPathEnd;
    private float trimPathOffset;
    private float trimPathStart;

    public PathComponent() {
        super(null);
        this.name = "";
        this.fillAlpha = 1.0f;
        this.pathData = VectorKt.e();
        this.pathFillType = VectorKt.b();
        this.strokeAlpha = 1.0f;
        this.strokeLineCap = VectorKt.c();
        this.strokeLineJoin = VectorKt.d();
        this.strokeLineMiter = 4.0f;
        this.trimPathEnd = 1.0f;
        this.isPathDirty = true;
        this.isStrokeDirty = true;
        this.isTrimPathDirty = true;
        this.path = AndroidPath_androidKt.a();
        this.renderPath = AndroidPath_androidKt.a();
        this.pathMeasure$delegate = o.b(q.NONE, PathComponent$pathMeasure$2.INSTANCE);
        this.parser = new PathParser();
    }

    private final PathMeasure e() {
        return (PathMeasure) this.pathMeasure$delegate.getValue();
    }

    private final void t() {
        this.parser.e();
        this.path.reset();
        this.parser.b(this.pathData).D(this.path);
        u();
    }

    private final void u() {
        this.renderPath.reset();
        if (this.trimPathStart == 0.0f && this.trimPathEnd == 1.0f) {
            e1.a(this.renderPath, this.path, 0L, 2, null);
            return;
        }
        e().b(this.path, false);
        float length = e().getLength();
        float f = this.trimPathStart;
        float f6 = this.trimPathOffset;
        float f7 = ((f + f6) % 1.0f) * length;
        float f10 = ((this.trimPathEnd + f6) % 1.0f) * length;
        if (f7 <= f10) {
            e().a(f7, f10, this.renderPath, true);
        } else {
            e().a(f7, length, this.renderPath, true);
            e().a(0.0f, f10, this.renderPath, true);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void a(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        if (this.isPathDirty) {
            t();
        } else if (this.isTrimPathDirty) {
            u();
        }
        this.isPathDirty = false;
        this.isTrimPathDirty = false;
        Brush brush = this.fill;
        if (brush != null) {
            androidx.compose.ui.graphics.drawscope.a.j(drawScope, this.renderPath, brush, this.fillAlpha, null, null, 0, 56, null);
        }
        Brush brush2 = this.stroke;
        if (brush2 != null) {
            Stroke stroke = this.strokeStyle;
            if (this.isStrokeDirty || stroke == null) {
                stroke = new Stroke(this.strokeLineWidth, this.strokeLineMiter, this.strokeLineCap, this.strokeLineJoin, null, 16, null);
                this.strokeStyle = stroke;
                this.isStrokeDirty = false;
            }
            androidx.compose.ui.graphics.drawscope.a.j(drawScope, this.renderPath, brush2, this.strokeAlpha, stroke, null, 0, 48, null);
        }
    }

    public final void f(@Nullable Brush brush) {
        this.fill = brush;
        c();
    }

    public final void g(float f) {
        this.fillAlpha = f;
        c();
    }

    public final void h(@NotNull String value) {
        t.j(value, "value");
        this.name = value;
        c();
    }

    public final void i(@NotNull List<? extends PathNode> value) {
        t.j(value, "value");
        this.pathData = value;
        this.isPathDirty = true;
        c();
    }

    public final void j(int i10) {
        this.pathFillType = i10;
        this.renderPath.i(i10);
        c();
    }

    public final void k(@Nullable Brush brush) {
        this.stroke = brush;
        c();
    }

    public final void l(float f) {
        this.strokeAlpha = f;
        c();
    }

    public final void m(int i10) {
        this.strokeLineCap = i10;
        this.isStrokeDirty = true;
        c();
    }

    public final void n(int i10) {
        this.strokeLineJoin = i10;
        this.isStrokeDirty = true;
        c();
    }

    public final void o(float f) {
        this.strokeLineMiter = f;
        this.isStrokeDirty = true;
        c();
    }

    public final void p(float f) {
        this.strokeLineWidth = f;
        c();
    }

    public final void q(float f) {
        if (this.trimPathEnd == f) {
            return;
        }
        this.trimPathEnd = f;
        this.isTrimPathDirty = true;
        c();
    }

    public final void r(float f) {
        if (this.trimPathOffset == f) {
            return;
        }
        this.trimPathOffset = f;
        this.isTrimPathDirty = true;
        c();
    }

    public final void s(float f) {
        if (this.trimPathStart == f) {
            return;
        }
        this.trimPathStart = f;
        this.isTrimPathDirty = true;
        c();
    }

    @NotNull
    public String toString() {
        return this.path.toString();
    }
}
