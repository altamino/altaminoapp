package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;

/* JADX INFO: loaded from: classes8.dex */
public class k {
    public static final com.google.android.material.shape.c PILL = new i(0.5f);
    f bottomEdge;
    d bottomLeftCorner;
    com.google.android.material.shape.c bottomLeftCornerSize;
    d bottomRightCorner;
    com.google.android.material.shape.c bottomRightCornerSize;
    f leftEdge;
    f rightEdge;
    f topEdge;
    d topLeftCorner;
    com.google.android.material.shape.c topLeftCornerSize;
    d topRightCorner;
    com.google.android.material.shape.c topRightCornerSize;

    public static final class b {

        @NonNull
        private f bottomEdge;

        @NonNull
        private d bottomLeftCorner;

        @NonNull
        private com.google.android.material.shape.c bottomLeftCornerSize;

        @NonNull
        private d bottomRightCorner;

        @NonNull
        private com.google.android.material.shape.c bottomRightCornerSize;

        @NonNull
        private f leftEdge;

        @NonNull
        private f rightEdge;

        @NonNull
        private f topEdge;

        @NonNull
        private d topLeftCorner;

        @NonNull
        private com.google.android.material.shape.c topLeftCornerSize;

        @NonNull
        private d topRightCorner;

        @NonNull
        private com.google.android.material.shape.c topRightCornerSize;

        public b() {
            this.topLeftCorner = h.b();
            this.topRightCorner = h.b();
            this.bottomRightCorner = h.b();
            this.bottomLeftCorner = h.b();
            this.topLeftCornerSize = new com.google.android.material.shape.a(0.0f);
            this.topRightCornerSize = new com.google.android.material.shape.a(0.0f);
            this.bottomRightCornerSize = new com.google.android.material.shape.a(0.0f);
            this.bottomLeftCornerSize = new com.google.android.material.shape.a(0.0f);
            this.topEdge = h.c();
            this.rightEdge = h.c();
            this.bottomEdge = h.c();
            this.leftEdge = h.c();
        }

        @NonNull
        public b C(@NonNull com.google.android.material.shape.c cVar) {
            this.topLeftCornerSize = cVar;
            return this;
        }

        @NonNull
        public b G(@NonNull com.google.android.material.shape.c cVar) {
            this.topRightCornerSize = cVar;
            return this;
        }

        @NonNull
        public b t(@NonNull com.google.android.material.shape.c cVar) {
            this.bottomLeftCornerSize = cVar;
            return this;
        }

        @NonNull
        public b x(@NonNull com.google.android.material.shape.c cVar) {
            this.bottomRightCornerSize = cVar;
            return this;
        }

        @NonNull
        public b y(@NonNull f fVar) {
            this.topEdge = fVar;
            return this;
        }

        private static float n(d dVar) {
            if (dVar instanceof j) {
                return ((j) dVar).radius;
            }
            if (dVar instanceof e) {
                return ((e) dVar).size;
            }
            return -1.0f;
        }

        @NonNull
        public b A(@NonNull d dVar) {
            this.topLeftCorner = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                B(fN);
            }
            return this;
        }

        @NonNull
        public b B(@Dimension float f) {
            this.topLeftCornerSize = new com.google.android.material.shape.a(f);
            return this;
        }

        @NonNull
        public b E(@NonNull d dVar) {
            this.topRightCorner = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                F(fN);
            }
            return this;
        }

        @NonNull
        public b F(@Dimension float f) {
            this.topRightCornerSize = new com.google.android.material.shape.a(f);
            return this;
        }

        @NonNull
        public k m() {
            return new k(this);
        }

        @NonNull
        public b r(@NonNull d dVar) {
            this.bottomLeftCorner = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                s(fN);
            }
            return this;
        }

        @NonNull
        public b s(@Dimension float f) {
            this.bottomLeftCornerSize = new com.google.android.material.shape.a(f);
            return this;
        }

        @NonNull
        public b v(@NonNull d dVar) {
            this.bottomRightCorner = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        @NonNull
        public b w(@Dimension float f) {
            this.bottomRightCornerSize = new com.google.android.material.shape.a(f);
            return this;
        }

        @NonNull
        public b D(int i10, @NonNull com.google.android.material.shape.c cVar) {
            return E(h.a(i10)).G(cVar);
        }

        @NonNull
        public b o(@Dimension float f) {
            return B(f).F(f).w(f).s(f);
        }

        @NonNull
        public b p(@NonNull com.google.android.material.shape.c cVar) {
            return C(cVar).G(cVar).x(cVar).t(cVar);
        }

        @NonNull
        public b q(int i10, @NonNull com.google.android.material.shape.c cVar) {
            return r(h.a(i10)).t(cVar);
        }

        @NonNull
        public b u(int i10, @NonNull com.google.android.material.shape.c cVar) {
            return v(h.a(i10)).x(cVar);
        }

        @NonNull
        public b z(int i10, @NonNull com.google.android.material.shape.c cVar) {
            return A(h.a(i10)).C(cVar);
        }

        public b(@NonNull k kVar) {
            this.topLeftCorner = h.b();
            this.topRightCorner = h.b();
            this.bottomRightCorner = h.b();
            this.bottomLeftCorner = h.b();
            this.topLeftCornerSize = new com.google.android.material.shape.a(0.0f);
            this.topRightCornerSize = new com.google.android.material.shape.a(0.0f);
            this.bottomRightCornerSize = new com.google.android.material.shape.a(0.0f);
            this.bottomLeftCornerSize = new com.google.android.material.shape.a(0.0f);
            this.topEdge = h.c();
            this.rightEdge = h.c();
            this.bottomEdge = h.c();
            this.leftEdge = h.c();
            this.topLeftCorner = kVar.topLeftCorner;
            this.topRightCorner = kVar.topRightCorner;
            this.bottomRightCorner = kVar.bottomRightCorner;
            this.bottomLeftCorner = kVar.bottomLeftCorner;
            this.topLeftCornerSize = kVar.topLeftCornerSize;
            this.topRightCornerSize = kVar.topRightCornerSize;
            this.bottomRightCornerSize = kVar.bottomRightCornerSize;
            this.bottomLeftCornerSize = kVar.bottomLeftCornerSize;
            this.topEdge = kVar.topEdge;
            this.rightEdge = kVar.rightEdge;
            this.bottomEdge = kVar.bottomEdge;
            this.leftEdge = kVar.leftEdge;
        }
    }

    @RestrictTo
    public interface c {
        @NonNull
        com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar);
    }

    @NonNull
    public static b b(Context context, @StyleRes int i10, @StyleRes int i11) {
        return c(context, i10, i11, 0);
    }

    @NonNull
    public static b e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    @NonNull
    public f h() {
        return this.bottomEdge;
    }

    @NonNull
    public d i() {
        return this.bottomLeftCorner;
    }

    @NonNull
    public com.google.android.material.shape.c j() {
        return this.bottomLeftCornerSize;
    }

    @NonNull
    public d k() {
        return this.bottomRightCorner;
    }

    @NonNull
    public com.google.android.material.shape.c l() {
        return this.bottomRightCornerSize;
    }

    @NonNull
    public f n() {
        return this.leftEdge;
    }

    @NonNull
    public f o() {
        return this.rightEdge;
    }

    @NonNull
    public f p() {
        return this.topEdge;
    }

    @NonNull
    public d q() {
        return this.topLeftCorner;
    }

    @NonNull
    public com.google.android.material.shape.c r() {
        return this.topLeftCornerSize;
    }

    @NonNull
    public d s() {
        return this.topRightCorner;
    }

    @NonNull
    public com.google.android.material.shape.c t() {
        return this.topRightCornerSize;
    }

    private k(@NonNull b bVar) {
        this.topLeftCorner = bVar.topLeftCorner;
        this.topRightCorner = bVar.topRightCorner;
        this.bottomRightCorner = bVar.bottomRightCorner;
        this.bottomLeftCorner = bVar.bottomLeftCorner;
        this.topLeftCornerSize = bVar.topLeftCornerSize;
        this.topRightCornerSize = bVar.topRightCornerSize;
        this.bottomRightCornerSize = bVar.bottomRightCornerSize;
        this.bottomLeftCornerSize = bVar.bottomLeftCornerSize;
        this.topEdge = bVar.topEdge;
        this.rightEdge = bVar.rightEdge;
        this.bottomEdge = bVar.bottomEdge;
        this.leftEdge = bVar.leftEdge;
    }

    @NonNull
    public static b a() {
        return new b();
    }

    @NonNull
    private static b c(Context context, @StyleRes int i10, @StyleRes int i11, int i12) {
        return d(context, i10, i11, new com.google.android.material.shape.a(i12));
    }

    @NonNull
    private static b d(Context context, @StyleRes int i10, @StyleRes int i11, @NonNull com.google.android.material.shape.c cVar) {
        if (i11 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
            i10 = i11;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, d3.l.ShapeAppearance);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(d3.l.ShapeAppearance_cornerFamily, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(d3.l.ShapeAppearance_cornerFamilyTopLeft, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(d3.l.ShapeAppearance_cornerFamilyTopRight, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(d3.l.ShapeAppearance_cornerFamilyBottomRight, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(d3.l.ShapeAppearance_cornerFamilyBottomLeft, i12);
            com.google.android.material.shape.c cVarM = m(typedArrayObtainStyledAttributes, d3.l.ShapeAppearance_cornerSize, cVar);
            com.google.android.material.shape.c cVarM2 = m(typedArrayObtainStyledAttributes, d3.l.ShapeAppearance_cornerSizeTopLeft, cVarM);
            com.google.android.material.shape.c cVarM3 = m(typedArrayObtainStyledAttributes, d3.l.ShapeAppearance_cornerSizeTopRight, cVarM);
            com.google.android.material.shape.c cVarM4 = m(typedArrayObtainStyledAttributes, d3.l.ShapeAppearance_cornerSizeBottomRight, cVarM);
            return new b().z(i13, cVarM2).D(i14, cVarM3).u(i15, cVarM4).q(i16, m(typedArrayObtainStyledAttributes, d3.l.ShapeAppearance_cornerSizeBottomLeft, cVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static b f(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, int i12) {
        return g(context, attributeSet, i10, i11, new com.google.android.material.shape.a(i12));
    }

    @NonNull
    public static b g(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, @NonNull com.google.android.material.shape.c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d3.l.MaterialShape, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, cVar);
    }

    @RestrictTo
    public boolean u(@NonNull RectF rectF) {
        boolean z6 = this.leftEdge.getClass().equals(f.class) && this.rightEdge.getClass().equals(f.class) && this.topEdge.getClass().equals(f.class) && this.bottomEdge.getClass().equals(f.class);
        float fA = this.topLeftCornerSize.a(rectF);
        return z6 && ((this.topRightCornerSize.a(rectF) > fA ? 1 : (this.topRightCornerSize.a(rectF) == fA ? 0 : -1)) == 0 && (this.bottomLeftCornerSize.a(rectF) > fA ? 1 : (this.bottomLeftCornerSize.a(rectF) == fA ? 0 : -1)) == 0 && (this.bottomRightCornerSize.a(rectF) > fA ? 1 : (this.bottomRightCornerSize.a(rectF) == fA ? 0 : -1)) == 0) && ((this.topRightCorner instanceof j) && (this.topLeftCorner instanceof j) && (this.bottomRightCorner instanceof j) && (this.bottomLeftCorner instanceof j));
    }

    @NonNull
    public b v() {
        return new b(this);
    }

    @NonNull
    private static com.google.android.material.shape.c m(TypedArray typedArray, int i10, @NonNull com.google.android.material.shape.c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i11 = typedValuePeekValue.type;
        if (i11 == 5) {
            return new com.google.android.material.shape.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        if (i11 == 6) {
            return new i(typedValuePeekValue.getFraction(1.0f, 1.0f));
        }
        return cVar;
    }

    @NonNull
    public k w(float f) {
        return v().o(f).m();
    }

    @NonNull
    public k x(@NonNull com.google.android.material.shape.c cVar) {
        return v().p(cVar).m();
    }

    @NonNull
    @RestrictTo
    public k y(@NonNull c cVar) {
        return v().C(cVar.a(r())).G(cVar.a(t())).t(cVar.a(j())).x(cVar.a(l())).m();
    }

    public k() {
        this.topLeftCorner = h.b();
        this.topRightCorner = h.b();
        this.bottomRightCorner = h.b();
        this.bottomLeftCorner = h.b();
        this.topLeftCornerSize = new com.google.android.material.shape.a(0.0f);
        this.topRightCornerSize = new com.google.android.material.shape.a(0.0f);
        this.bottomRightCornerSize = new com.google.android.material.shape.a(0.0f);
        this.bottomLeftCornerSize = new com.google.android.material.shape.a(0.0f);
        this.topEdge = h.c();
        this.rightEdge = h.c();
        this.bottomEdge = h.c();
        this.leftEdge = h.c();
    }
}
