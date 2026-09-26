package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* JADX INFO: loaded from: classes5.dex */
public class l {
    private final m[] cornerPaths = new m[4];
    private final Matrix[] cornerTransforms = new Matrix[4];
    private final Matrix[] edgeTransforms = new Matrix[4];
    private final PointF pointF = new PointF();
    private final Path overlappedEdgePath = new Path();
    private final Path boundsPath = new Path();
    private final m shapePath = new m();
    private final float[] scratch = new float[2];
    private final float[] scratch2 = new float[2];
    private final Path edgePath = new Path();
    private final Path cornerPath = new Path();
    private boolean edgeIntersectionCheckEnabled = true;

    private static class a {
        static final l INSTANCE = new l();
    }

    @RestrictTo
    public interface b {
        void a(m mVar, Matrix matrix, int i10);

        void b(m mVar, Matrix matrix, int i10);
    }

    private float a(int i10) {
        return (i10 + 1) * 90;
    }

    private void f(int i10, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private com.google.android.material.shape.c g(int i10, @NonNull k kVar) {
        if (i10 == 1) {
            return kVar.l();
        }
        if (i10 != 2) {
            return i10 != 3 ? kVar.t() : kVar.r();
        }
        return kVar.j();
    }

    private d h(int i10, @NonNull k kVar) {
        if (i10 == 1) {
            return kVar.k();
        }
        if (i10 != 2) {
            return i10 != 3 ? kVar.s() : kVar.q();
        }
        return kVar.i();
    }

    private f j(int i10, @NonNull k kVar) {
        if (i10 == 1) {
            return kVar.h();
        }
        if (i10 != 2) {
            return i10 != 3 ? kVar.o() : kVar.p();
        }
        return kVar.n();
    }

    public void d(k kVar, float f, RectF rectF, @NonNull Path path) {
        e(kVar, f, rectF, null, path);
    }

    static final class c {

        @NonNull
        public final RectF bounds;
        public final float interpolation;

        @NonNull
        public final Path path;

        @Nullable
        public final b pathListener;

        @NonNull
        public final k shapeAppearanceModel;

        c(@NonNull k kVar, float f, RectF rectF, @Nullable b bVar, Path path) {
            this.pathListener = bVar;
            this.shapeAppearanceModel = kVar;
            this.interpolation = f;
            this.bounds = rectF;
            this.path = path;
        }
    }

    private void b(@NonNull c cVar, int i10) {
        this.scratch[0] = this.cornerPaths[i10].k();
        this.scratch[1] = this.cornerPaths[i10].l();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        if (i10 == 0) {
            Path path = cVar.path;
            float[] fArr = this.scratch;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.path;
            float[] fArr2 = this.scratch;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.cornerPaths[i10].d(this.cornerTransforms[i10], cVar.path);
        b bVar = cVar.pathListener;
        if (bVar != null) {
            bVar.a(this.cornerPaths[i10], this.cornerTransforms[i10], i10);
        }
    }

    private void c(@NonNull c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.scratch[0] = this.cornerPaths[i10].i();
        this.scratch[1] = this.cornerPaths[i10].j();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[i11].k();
        this.scratch2[1] = this.cornerPaths[i11].l();
        this.cornerTransforms[i11].mapPoints(this.scratch2);
        float[] fArr = this.scratch;
        float f = fArr[0];
        float[] fArr2 = this.scratch2;
        float fMax = Math.max(((float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float fI = i(cVar.bounds, i10);
        this.shapePath.n(0.0f, 0.0f);
        f fVarJ = j(i10, cVar.shapeAppearanceModel);
        fVarJ.c(fMax, fI, cVar.interpolation, this.shapePath);
        this.edgePath.reset();
        this.shapePath.d(this.edgeTransforms[i10], this.edgePath);
        if (this.edgeIntersectionCheckEnabled && (fVarJ.b() || l(this.edgePath, i10) || l(this.edgePath, i11))) {
            Path path = this.edgePath;
            path.op(path, this.boundsPath, Path.Op.DIFFERENCE);
            this.scratch[0] = this.shapePath.k();
            this.scratch[1] = this.shapePath.l();
            this.edgeTransforms[i10].mapPoints(this.scratch);
            Path path2 = this.overlappedEdgePath;
            float[] fArr3 = this.scratch;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.shapePath.d(this.edgeTransforms[i10], this.overlappedEdgePath);
        } else {
            this.shapePath.d(this.edgeTransforms[i10], cVar.path);
        }
        b bVar = cVar.pathListener;
        if (bVar != null) {
            bVar.b(this.shapePath, this.edgeTransforms[i10], i10);
        }
    }

    private float i(@NonNull RectF rectF, int i10) {
        float[] fArr = this.scratch;
        m mVar = this.cornerPaths[i10];
        fArr[0] = mVar.endX;
        fArr[1] = mVar.endY;
        this.cornerTransforms[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.scratch[0]) : Math.abs(rectF.centerY() - this.scratch[1]);
    }

    @NonNull
    @RestrictTo
    @UiThread
    public static l k() {
        return a.INSTANCE;
    }

    @RequiresApi
    private boolean l(Path path, int i10) {
        this.cornerPath.reset();
        this.cornerPaths[i10].d(this.cornerTransforms[i10], this.cornerPath);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.cornerPath.computeBounds(rectF, true);
        path.op(this.cornerPath, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(@NonNull c cVar, int i10) {
        h(i10, cVar.shapeAppearanceModel).c(this.cornerPaths[i10], 90.0f, cVar.interpolation, cVar.bounds, g(i10, cVar.shapeAppearanceModel));
        float fA = a(i10);
        this.cornerTransforms[i10].reset();
        f(i10, cVar.bounds, this.pointF);
        Matrix matrix = this.cornerTransforms[i10];
        PointF pointF = this.pointF;
        matrix.setTranslate(pointF.x, pointF.y);
        this.cornerTransforms[i10].preRotate(fA);
    }

    private void n(int i10) {
        this.scratch[0] = this.cornerPaths[i10].i();
        this.scratch[1] = this.cornerPaths[i10].j();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        float fA = a(i10);
        this.edgeTransforms[i10].reset();
        Matrix matrix = this.edgeTransforms[i10];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[i10].preRotate(fA);
    }

    public l() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.cornerPaths[i10] = new m();
            this.cornerTransforms[i10] = new Matrix();
            this.edgeTransforms[i10] = new Matrix();
        }
    }

    @RestrictTo
    public void e(k kVar, float f, RectF rectF, b bVar, @NonNull Path path) {
        path.rewind();
        this.overlappedEdgePath.rewind();
        this.boundsPath.rewind();
        this.boundsPath.addRect(rectF, Path.Direction.CW);
        c cVar = new c(kVar, f, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            n(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.overlappedEdgePath.close();
        if (!this.overlappedEdgePath.isEmpty()) {
            path.op(this.overlappedEdgePath, Path.Op.UNION);
        }
    }
}
