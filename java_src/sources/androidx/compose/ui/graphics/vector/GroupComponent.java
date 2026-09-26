package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.graphics.drawscope.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class GroupComponent extends VNode {

    @NotNull
    private final List<VNode> children;

    @Nullable
    private Path clipPath;

    @NotNull
    private List<? extends PathNode> clipPathData;

    @Nullable
    private float[] groupMatrix;

    @Nullable
    private e8.a<l0> invalidateListener;
    private boolean isClipPathDirty;
    private boolean isMatrixDirty;

    @NotNull
    private String name;

    @Nullable
    private PathParser parser;
    private float pivotX;
    private float pivotY;
    private float rotation;
    private float scaleX;
    private float scaleY;
    private float translationX;
    private float translationY;

    public GroupComponent() {
        super(null);
        this.children = new ArrayList();
        this.clipPathData = VectorKt.e();
        this.isClipPathDirty = true;
        this.name = "";
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isMatrixDirty = true;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    @Nullable
    public e8.a<l0> b() {
        return this.invalidateListener;
    }

    @NotNull
    public final String e() {
        return this.name;
    }

    public final void i(int i10, int i11, int i12) {
        int i13 = 0;
        if (i10 > i11) {
            while (i13 < i12) {
                VNode vNode = this.children.get(i10);
                this.children.remove(i10);
                this.children.add(i11, vNode);
                i11++;
                i13++;
            }
        } else {
            while (i13 < i12) {
                VNode vNode2 = this.children.get(i10);
                this.children.remove(i10);
                this.children.add(i11 - 1, vNode2);
                i13++;
            }
        }
        c();
    }

    public final void j(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (i10 < this.children.size()) {
                this.children.get(i10).d(null);
                this.children.remove(i10);
            }
        }
        c();
    }

    private final boolean g() {
        return !this.clipPathData.isEmpty();
    }

    private final void u() {
        float[] fArrC = this.groupMatrix;
        if (fArrC == null) {
            fArrC = Matrix.c(null, 1, null);
            this.groupMatrix = fArrC;
        } else {
            Matrix.h(fArrC);
        }
        Matrix.m(fArrC, this.pivotX + this.translationX, this.pivotY + this.translationY, 0.0f, 4, null);
        Matrix.i(fArrC, this.rotation);
        Matrix.j(fArrC, this.scaleX, this.scaleY, 1.0f);
        Matrix.m(fArrC, -this.pivotX, -this.pivotY, 0.0f, 4, null);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void a(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        if (this.isMatrixDirty) {
            u();
            this.isMatrixDirty = false;
        }
        if (this.isClipPathDirty) {
            t();
            this.isClipPathDirty = false;
        }
        DrawContext drawContextT = drawScope.T();
        long jC = drawContextT.c();
        drawContextT.a().r();
        DrawTransform drawTransformD = drawContextT.d();
        float[] fArr = this.groupMatrix;
        if (fArr != null) {
            drawTransformD.g(Matrix.a(fArr).n());
        }
        Path path = this.clipPath;
        if (g() && path != null) {
            b.a(drawTransformD, path, 0, 2, null);
        }
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).a(drawScope);
        }
        drawContextT.a().n();
        drawContextT.b(jC);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void d(@Nullable e8.a<l0> aVar) {
        this.invalidateListener = aVar;
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).d(aVar);
        }
    }

    public final int f() {
        return this.children.size();
    }

    public final void h(int i10, @NotNull VNode instance) {
        t.j(instance, "instance");
        if (i10 < f()) {
            this.children.set(i10, instance);
        } else {
            this.children.add(instance);
        }
        instance.d(b());
        c();
    }

    public final void k(@NotNull List<? extends PathNode> value) {
        t.j(value, "value");
        this.clipPathData = value;
        this.isClipPathDirty = true;
        c();
    }

    public final void l(@NotNull String value) {
        t.j(value, "value");
        this.name = value;
        c();
    }

    public final void m(float f) {
        this.pivotX = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void n(float f) {
        this.pivotY = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void o(float f) {
        this.rotation = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void p(float f) {
        this.scaleX = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void q(float f) {
        this.scaleY = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void r(float f) {
        this.translationX = f;
        this.isMatrixDirty = true;
        c();
    }

    public final void s(float f) {
        this.translationY = f;
        this.isMatrixDirty = true;
        c();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("VGroup: ");
        sb.append(this.name);
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            VNode vNode = list.get(i10);
            sb.append("\t");
            sb.append(vNode.toString());
            sb.append("\n");
        }
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }

    private final void t() {
        if (g()) {
            PathParser pathParser = this.parser;
            if (pathParser == null) {
                pathParser = new PathParser();
                this.parser = pathParser;
            } else {
                pathParser.e();
            }
            Path pathA = this.clipPath;
            if (pathA == null) {
                pathA = AndroidPath_androidKt.a();
                this.clipPath = pathA;
            } else {
                pathA.reset();
            }
            pathParser.b(this.clipPathData).D(pathA);
        }
    }
}
