package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class m {
    protected static final float ANGLE_LEFT = 180.0f;
    private static final float ANGLE_UP = 270.0f;
    private boolean containsIncompatibleShadowOp;

    @Deprecated
    public float currentShadowAngle;

    @Deprecated
    public float endShadowAngle;

    @Deprecated
    public float endX;

    @Deprecated
    public float endY;
    private final List<f> operations = new ArrayList();
    private final List<g> shadowCompatOperations = new ArrayList();

    @Deprecated
    public float startX;

    @Deprecated
    public float startY;

    class a extends g {
        final /* synthetic */ List val$operations;
        final /* synthetic */ Matrix val$transformCopy;

        a(List list, Matrix matrix) {
            this.val$operations = list;
            this.val$transformCopy = matrix;
        }

        @Override // com.google.android.material.shape.m.g
        public void a(Matrix matrix, q3.a aVar, int i10, Canvas canvas) {
            Iterator it = this.val$operations.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.val$transformCopy, aVar, i10, canvas);
            }
        }
    }

    static class b extends g {
        private final d operation;

        @Override // com.google.android.material.shape.m.g
        public void a(Matrix matrix, @NonNull q3.a aVar, int i10, @NonNull Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.operation.k(), this.operation.o(), this.operation.l(), this.operation.j()), i10, this.operation.m(), this.operation.n());
        }

        public b(d dVar) {
            this.operation = dVar;
        }
    }

    static class c extends g {
        private final e operation;
        private final float startX;
        private final float startY;

        @Override // com.google.android.material.shape.m.g
        public void a(Matrix matrix, @NonNull q3.a aVar, int i10, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.operation.f1394y - this.startY, this.operation.f1393x - this.startX), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.startX, this.startY);
            matrix2.preRotate(c());
            aVar.b(canvas, matrix2, rectF, i10);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.operation.f1394y - this.startY) / (this.operation.f1393x - this.startX)));
        }

        public c(e eVar, float f, float f6) {
            this.operation = eVar;
            this.startX = f;
            this.startY = f6;
        }
    }

    public static class d extends f {
        private static final RectF rectF = new RectF();

        @Deprecated
        public float bottom;

        @Deprecated
        public float left;

        @Deprecated
        public float right;

        @Deprecated
        public float startAngle;

        @Deprecated
        public float sweepAngle;

        @Deprecated
        public float top;

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.bottom;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.left;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.right;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.startAngle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.sweepAngle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.top;
        }

        private void p(float f) {
            this.bottom = f;
        }

        private void q(float f) {
            this.left = f;
        }

        private void r(float f) {
            this.right = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f) {
            this.startAngle = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f) {
            this.sweepAngle = f;
        }

        private void u(float f) {
            this.top = f;
        }

        @Override // com.google.android.material.shape.m.f
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF2 = rectF;
            rectF2.set(k(), o(), l(), j());
            path.arcTo(rectF2, m(), n(), false);
            path.transform(matrix);
        }

        public d(float f, float f6, float f7, float f10) {
            q(f);
            u(f6);
            r(f7);
            p(f10);
        }
    }

    public static class e extends f {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private float f1393x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f1394y;

        @Override // com.google.android.material.shape.m.f
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f1393x, this.f1394y);
            path.transform(matrix);
        }
    }

    public static abstract class f {
        protected final Matrix matrix = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    static abstract class g {
        static final Matrix IDENTITY_MATRIX = new Matrix();

        public abstract void a(Matrix matrix, q3.a aVar, int i10, Canvas canvas);

        public final void b(q3.a aVar, int i10, Canvas canvas) {
            a(IDENTITY_MATRIX, aVar, i10, canvas);
        }

        g() {
        }
    }

    public m() {
        n(0.0f, 0.0f);
    }

    private float g() {
        return this.currentShadowAngle;
    }

    private float h() {
        return this.endShadowAngle;
    }

    private void p(float f6) {
        this.currentShadowAngle = f6;
    }

    private void q(float f6) {
        this.endShadowAngle = f6;
    }

    private void r(float f6) {
        this.endX = f6;
    }

    private void s(float f6) {
        this.endY = f6;
    }

    private void t(float f6) {
        this.startX = f6;
    }

    private void u(float f6) {
        this.startY = f6;
    }

    boolean e() {
        return this.containsIncompatibleShadowOp;
    }

    float i() {
        return this.endX;
    }

    float j() {
        return this.endY;
    }

    float k() {
        return this.startX;
    }

    float l() {
        return this.startY;
    }

    public void a(float f6, float f7, float f10, float f11, float f12, float f13) {
        d dVar = new d(f6, f7, f10, f11);
        dVar.s(f12);
        dVar.t(f13);
        this.operations.add(dVar);
        b bVar = new b(dVar);
        float f14 = f12 + f13;
        boolean z6 = f13 < 0.0f;
        if (z6) {
            f12 = (f12 + ANGLE_LEFT) % 360.0f;
        }
        c(bVar, f12, z6 ? (ANGLE_LEFT + f14) % 360.0f : f14);
        double d2 = f14;
        r(((f6 + f10) * 0.5f) + (((f10 - f6) / 2.0f) * ((float) Math.cos(Math.toRadians(d2)))));
        s(((f7 + f11) * 0.5f) + (((f11 - f7) / 2.0f) * ((float) Math.sin(Math.toRadians(d2)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.operations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.operations.get(i10).a(matrix, path);
        }
    }

    public void m(float f6, float f7) {
        e eVar = new e();
        eVar.f1393x = f6;
        eVar.f1394y = f7;
        this.operations.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + ANGLE_UP, cVar.c() + ANGLE_UP);
        r(f6);
        s(f7);
    }

    public void n(float f6, float f7) {
        o(f6, f7, ANGLE_UP, 0.0f);
    }

    private void b(float f6) {
        if (g() == f6) {
            return;
        }
        float fG = ((f6 - g()) + 360.0f) % 360.0f;
        if (fG > ANGLE_LEFT) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.shadowCompatOperations.add(new b(dVar));
        p(f6);
    }

    private void c(g gVar, float f6, float f7) {
        b(f6);
        this.shadowCompatOperations.add(gVar);
        p(f7);
    }

    @NonNull
    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.shadowCompatOperations), new Matrix(matrix));
    }

    public void o(float f6, float f7, float f10, float f11) {
        t(f6);
        u(f7);
        r(f6);
        s(f7);
        p(f10);
        q((f10 + f11) % 360.0f);
        this.operations.clear();
        this.shadowCompatOperations.clear();
        this.containsIncompatibleShadowOp = false;
    }

    public m(float f6, float f7) {
        n(f6, f7);
    }
}
