package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class g extends Drawable implements TintAwareDrawable, o {
    public static final int SHADOW_COMPAT_MODE_ALWAYS = 2;
    public static final int SHADOW_COMPAT_MODE_DEFAULT = 0;
    public static final int SHADOW_COMPAT_MODE_NEVER = 1;
    private static final float SHADOW_OFFSET_MULTIPLIER = 0.25f;
    private static final float SHADOW_RADIUS_MULTIPLIER = 0.75f;
    private static final String TAG = "g";
    private static final Paint clearPaint;
    private final BitSet containsIncompatibleShadowOp;
    private final m.g[] cornerShadowOperation;
    private c drawableState;
    private final m.g[] edgeShadowOperation;
    private final Paint fillPaint;
    private final RectF insetRectF;
    private final Matrix matrix;
    private final Path path;

    @NonNull
    private final RectF pathBounds;
    private boolean pathDirty;
    private final Path pathInsetByStroke;
    private final l pathProvider;

    @NonNull
    private final l.b pathShadowListener;
    private final RectF rectF;
    private int resolvedTintColor;
    private final Region scratchRegion;
    private boolean shadowBitmapDrawingEnable;
    private final q3.a shadowRenderer;
    private final Paint strokePaint;
    private k strokeShapeAppearance;

    @Nullable
    private PorterDuffColorFilter strokeTintFilter;

    @Nullable
    private PorterDuffColorFilter tintFilter;
    private final Region transparentRegion;

    class a implements l.b {
        a() {
        }

        @Override // com.google.android.material.shape.l.b
        public void a(@NonNull m mVar, Matrix matrix, int i10) {
            g.this.containsIncompatibleShadowOp.set(i10, mVar.e());
            g.this.cornerShadowOperation[i10] = mVar.f(matrix);
        }

        @Override // com.google.android.material.shape.l.b
        public void b(@NonNull m mVar, Matrix matrix, int i10) {
            g.this.containsIncompatibleShadowOp.set(i10 + 4, mVar.e());
            g.this.edgeShadowOperation[i10] = mVar.f(matrix);
        }
    }

    class b implements k.c {
        final /* synthetic */ float val$strokeInsetLength;

        b(float f) {
            this.val$strokeInsetLength = f;
        }

        @Override // com.google.android.material.shape.k.c
        @NonNull
        public com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar) {
            return cVar instanceof i ? cVar : new com.google.android.material.shape.b(this.val$strokeInsetLength, cVar);
        }
    }

    static final class c extends Drawable.ConstantState {
        public int alpha;

        @Nullable
        public ColorFilter colorFilter;
        public float elevation;

        @Nullable
        public l3.a elevationOverlayProvider;

        @Nullable
        public ColorStateList fillColor;
        public float interpolation;

        @Nullable
        public Rect padding;
        public Paint.Style paintStyle;
        public float parentAbsoluteElevation;
        public float scale;
        public int shadowCompatMode;
        public int shadowCompatOffset;
        public int shadowCompatRadius;
        public int shadowCompatRotation;

        @NonNull
        public k shapeAppearanceModel;

        @Nullable
        public ColorStateList strokeColor;

        @Nullable
        public ColorStateList strokeTintList;
        public float strokeWidth;

        @Nullable
        public ColorStateList tintList;

        @Nullable
        public PorterDuff.Mode tintMode;
        public float translationZ;
        public boolean useTintColorForShadow;

        public c(k kVar, l3.a aVar) {
            this.fillColor = null;
            this.strokeColor = null;
            this.strokeTintList = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.translationZ = 0.0f;
            this.shadowCompatMode = 0;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.shadowCompatRotation = 0;
            this.useTintColorForShadow = false;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearanceModel = kVar;
            this.elevationOverlayProvider = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            g gVar = new g(this, null);
            gVar.pathDirty = true;
            return gVar;
        }

        public c(@NonNull c cVar) {
            this.fillColor = null;
            this.strokeColor = null;
            this.strokeTintList = null;
            this.tintList = null;
            this.tintMode = PorterDuff.Mode.SRC_IN;
            this.padding = null;
            this.scale = 1.0f;
            this.interpolation = 1.0f;
            this.alpha = 255;
            this.parentAbsoluteElevation = 0.0f;
            this.elevation = 0.0f;
            this.translationZ = 0.0f;
            this.shadowCompatMode = 0;
            this.shadowCompatRadius = 0;
            this.shadowCompatOffset = 0;
            this.shadowCompatRotation = 0;
            this.useTintColorForShadow = false;
            this.paintStyle = Paint.Style.FILL_AND_STROKE;
            this.shapeAppearanceModel = cVar.shapeAppearanceModel;
            this.elevationOverlayProvider = cVar.elevationOverlayProvider;
            this.strokeWidth = cVar.strokeWidth;
            this.colorFilter = cVar.colorFilter;
            this.fillColor = cVar.fillColor;
            this.strokeColor = cVar.strokeColor;
            this.tintMode = cVar.tintMode;
            this.tintList = cVar.tintList;
            this.alpha = cVar.alpha;
            this.scale = cVar.scale;
            this.shadowCompatOffset = cVar.shadowCompatOffset;
            this.shadowCompatMode = cVar.shadowCompatMode;
            this.useTintColorForShadow = cVar.useTintColorForShadow;
            this.interpolation = cVar.interpolation;
            this.parentAbsoluteElevation = cVar.parentAbsoluteElevation;
            this.elevation = cVar.elevation;
            this.translationZ = cVar.translationZ;
            this.shadowCompatRadius = cVar.shadowCompatRadius;
            this.shadowCompatRotation = cVar.shadowCompatRotation;
            this.strokeTintList = cVar.strokeTintList;
            this.paintStyle = cVar.paintStyle;
            if (cVar.padding != null) {
                this.padding = new Rect(cVar.padding);
            }
        }
    }

    /* synthetic */ g(c cVar, a aVar) {
        this(cVar);
    }

    private static int T(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    @ColorInt
    public int A() {
        return this.resolvedTintColor;
    }

    @RestrictTo
    public void e0(boolean z6) {
        this.shadowBitmapDrawingEnable = z6;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.drawableState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.pathDirty = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.pathDirty = true;
        super.onBoundsChange(rect);
    }

    static {
        Paint paint = new Paint(1);
        clearPaint = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public g() {
        this(new k());
    }

    private boolean L() {
        c cVar = this.drawableState;
        int i10 = cVar.shadowCompatMode;
        return i10 != 1 && cVar.shadowCompatRadius > 0 && (i10 == 2 || V());
    }

    private boolean M() {
        Paint.Style style = this.drawableState.paintStyle;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean N() {
        Paint.Style style = this.drawableState.paintStyle;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.strokePaint.getStrokeWidth() > 0.0f;
    }

    @Nullable
    private PorterDuffColorFilter f(@NonNull Paint paint, boolean z6) {
        if (!z6) {
            return null;
        }
        int color = paint.getColor();
        int iL = l(color);
        this.resolvedTintColor = iL;
        if (iL != color) {
            return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    @NonNull
    private PorterDuffColorFilter k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z6) {
        return (colorStateList == null || mode == null) ? f(paint, z6) : j(colorStateList, mode, z6);
    }

    @NonNull
    public static g m(Context context, float f) {
        int iC = i3.a.c(context, d3.b.colorSurface, g.class.getSimpleName());
        g gVar = new g();
        gVar.O(context);
        gVar.Z(ColorStateList.valueOf(iC));
        gVar.Y(f);
        return gVar;
    }

    private boolean m0(int[] iArr) {
        boolean z6;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.drawableState.fillColor == null || color2 == (colorForState2 = this.drawableState.fillColor.getColorForState(iArr, (color2 = this.fillPaint.getColor())))) {
            z6 = false;
        } else {
            this.fillPaint.setColor(colorForState2);
            z6 = true;
        }
        if (this.drawableState.strokeColor == null || color == (colorForState = this.drawableState.strokeColor.getColorForState(iArr, (color = this.strokePaint.getColor())))) {
            return z6;
        }
        this.strokePaint.setColor(colorForState);
        return true;
    }

    private void n(@NonNull Canvas canvas) {
        if (this.containsIncompatibleShadowOp.cardinality() > 0) {
            Log.w(TAG, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.drawableState.shadowCompatOffset != 0) {
            canvas.drawPath(this.path, this.shadowRenderer.c());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.cornerShadowOperation[i10].b(this.shadowRenderer, this.drawableState.shadowCompatRadius, canvas);
            this.edgeShadowOperation[i10].b(this.shadowRenderer, this.drawableState.shadowCompatRadius, canvas);
        }
        if (this.shadowBitmapDrawingEnable) {
            int iB = B();
            int iC = C();
            canvas.translate(-iB, -iC);
            canvas.drawPath(this.path, clearPaint);
            canvas.translate(iB, iC);
        }
    }

    private boolean n0() {
        PorterDuffColorFilter porterDuffColorFilter = this.tintFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.strokeTintFilter;
        c cVar = this.drawableState;
        this.tintFilter = k(cVar.tintList, cVar.tintMode, this.fillPaint, true);
        c cVar2 = this.drawableState;
        this.strokeTintFilter = k(cVar2.strokeTintList, cVar2.tintMode, this.strokePaint, false);
        c cVar3 = this.drawableState;
        if (cVar3.useTintColorForShadow) {
            this.shadowRenderer.d(cVar3.tintList.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.a(porterDuffColorFilter, this.tintFilter) && ObjectsCompat.a(porterDuffColorFilter2, this.strokeTintFilter)) ? false : true;
    }

    private void o(@NonNull Canvas canvas) {
        q(canvas, this.fillPaint, this.path, this.drawableState.shapeAppearanceModel, u());
    }

    @NonNull
    private RectF v() {
        this.insetRectF.set(u());
        float F = F();
        this.insetRectF.inset(F, F);
        return this.insetRectF;
    }

    public int B() {
        c cVar = this.drawableState;
        return (int) (((double) cVar.shadowCompatOffset) * Math.sin(Math.toRadians(cVar.shadowCompatRotation)));
    }

    public int C() {
        c cVar = this.drawableState;
        return (int) (((double) cVar.shadowCompatOffset) * Math.cos(Math.toRadians(cVar.shadowCompatRotation)));
    }

    public int D() {
        return this.drawableState.shadowCompatRadius;
    }

    @NonNull
    public k E() {
        return this.drawableState.shapeAppearanceModel;
    }

    @Nullable
    public ColorStateList G() {
        return this.drawableState.tintList;
    }

    public float H() {
        return this.drawableState.shapeAppearanceModel.r().a(u());
    }

    public float I() {
        return this.drawableState.shapeAppearanceModel.t().a(u());
    }

    public float J() {
        return this.drawableState.translationZ;
    }

    public void O(Context context) {
        this.drawableState.elevationOverlayProvider = new l3.a(context);
        o0();
    }

    public boolean Q() {
        l3.a aVar = this.drawableState.elevationOverlayProvider;
        return aVar != null && aVar.e();
    }

    @RestrictTo
    public boolean R() {
        return this.drawableState.shapeAppearanceModel.u(u());
    }

    public boolean V() {
        return (R() || this.path.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    public void W(float f) {
        setShapeAppearanceModel(this.drawableState.shapeAppearanceModel.w(f));
    }

    public void X(@NonNull com.google.android.material.shape.c cVar) {
        setShapeAppearanceModel(this.drawableState.shapeAppearanceModel.x(cVar));
    }

    public void Y(float f) {
        c cVar = this.drawableState;
        if (cVar.elevation != f) {
            cVar.elevation = f;
            o0();
        }
    }

    public void Z(@Nullable ColorStateList colorStateList) {
        c cVar = this.drawableState;
        if (cVar.fillColor != colorStateList) {
            cVar.fillColor = colorStateList;
            onStateChange(getState());
        }
    }

    public void a0(float f) {
        c cVar = this.drawableState;
        if (cVar.interpolation != f) {
            cVar.interpolation = f;
            this.pathDirty = true;
            invalidateSelf();
        }
    }

    public void b0(int i10, int i11, int i12, int i13) {
        c cVar = this.drawableState;
        if (cVar.padding == null) {
            cVar.padding = new Rect();
        }
        this.drawableState.padding.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public void c0(Paint.Style style) {
        this.drawableState.paintStyle = style;
        P();
    }

    public void d0(float f) {
        c cVar = this.drawableState;
        if (cVar.parentAbsoluteElevation != f) {
            cVar.parentAbsoluteElevation = f;
            o0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.fillPaint.setColorFilter(this.tintFilter);
        int alpha = this.fillPaint.getAlpha();
        this.fillPaint.setAlpha(T(alpha, this.drawableState.alpha));
        this.strokePaint.setColorFilter(this.strokeTintFilter);
        this.strokePaint.setStrokeWidth(this.drawableState.strokeWidth);
        int alpha2 = this.strokePaint.getAlpha();
        this.strokePaint.setAlpha(T(alpha2, this.drawableState.alpha));
        if (this.pathDirty) {
            i();
            g(u(), this.path);
            this.pathDirty = false;
        }
        S(canvas);
        if (M()) {
            o(canvas);
        }
        if (N()) {
            r(canvas);
        }
        this.fillPaint.setAlpha(alpha);
        this.strokePaint.setAlpha(alpha2);
    }

    public void f0(int i10) {
        this.shadowRenderer.d(i10);
        this.drawableState.useTintColorForShadow = false;
        P();
    }

    public void g0(int i10) {
        c cVar = this.drawableState;
        if (cVar.shadowCompatRotation != i10) {
            cVar.shadowCompatRotation = i10;
            P();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.drawableState.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.drawableState.shadowCompatMode == 2) {
            return;
        }
        if (R()) {
            outline.setRoundRect(getBounds(), H() * this.drawableState.interpolation);
            return;
        }
        g(u(), this.path);
        if (this.path.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.drawableState.padding;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @RestrictTo
    protected final void h(@NonNull RectF rectF, @NonNull Path path) {
        l lVar = this.pathProvider;
        c cVar = this.drawableState;
        lVar.e(cVar.shapeAppearanceModel, cVar.interpolation, rectF, this.pathShadowListener, path);
    }

    public void h0(int i10) {
        c cVar = this.drawableState;
        if (cVar.shadowCompatMode != i10) {
            cVar.shadowCompatMode = i10;
            P();
        }
    }

    public void k0(@Nullable ColorStateList colorStateList) {
        c cVar = this.drawableState;
        if (cVar.strokeColor != colorStateList) {
            cVar.strokeColor = colorStateList;
            onStateChange(getState());
        }
    }

    public void l0(float f) {
        this.drawableState.strokeWidth = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.drawableState = new c(this.drawableState);
        return this;
    }

    @RestrictTo
    protected void p(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        q(canvas, paint, path, this.drawableState.shapeAppearanceModel, rectF);
    }

    @RestrictTo
    protected void r(@NonNull Canvas canvas) {
        q(canvas, this.strokePaint, this.pathInsetByStroke, this.strokeShapeAppearance, v());
    }

    public float s() {
        return this.drawableState.shapeAppearanceModel.j().a(u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange int i10) {
        c cVar = this.drawableState;
        if (cVar.alpha != i10) {
            cVar.alpha = i10;
            P();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.drawableState.colorFilter = colorFilter;
        P();
    }

    @Override // com.google.android.material.shape.o
    public void setShapeAppearanceModel(@NonNull k kVar) {
        this.drawableState.shapeAppearanceModel = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.drawableState.tintList = colorStateList;
        n0();
        P();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.drawableState;
        if (cVar.tintMode != mode) {
            cVar.tintMode = mode;
            n0();
            P();
        }
    }

    public float t() {
        return this.drawableState.shapeAppearanceModel.l().a(u());
    }

    @NonNull
    protected RectF u() {
        this.rectF.set(getBounds());
        return this.rectF;
    }

    public float w() {
        return this.drawableState.elevation;
    }

    @Nullable
    public ColorStateList x() {
        return this.drawableState.fillColor;
    }

    public float y() {
        return this.drawableState.interpolation;
    }

    public float z() {
        return this.drawableState.parentAbsoluteElevation;
    }

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        this(k.e(context, attributeSet, i10, i11).m());
    }

    private float F() {
        if (N()) {
            return this.strokePaint.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private void P() {
        super.invalidateSelf();
    }

    private void S(@NonNull Canvas canvas) {
        if (!L()) {
            return;
        }
        canvas.save();
        U(canvas);
        if (!this.shadowBitmapDrawingEnable) {
            n(canvas);
            canvas.restore();
            return;
        }
        int iWidth = (int) (this.pathBounds.width() - getBounds().width());
        int iHeight = (int) (this.pathBounds.height() - getBounds().height());
        if (iWidth >= 0 && iHeight >= 0) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.pathBounds.width()) + (this.drawableState.shadowCompatRadius * 2) + iWidth, ((int) this.pathBounds.height()) + (this.drawableState.shadowCompatRadius * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f = (getBounds().left - this.drawableState.shadowCompatRadius) - iWidth;
            float f6 = (getBounds().top - this.drawableState.shadowCompatRadius) - iHeight;
            canvas2.translate(-f, -f6);
            n(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f, f6, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
            return;
        }
        throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
    }

    private void U(@NonNull Canvas canvas) {
        canvas.translate(B(), C());
    }

    private void g(@NonNull RectF rectF, @NonNull Path path) {
        h(rectF, path);
        if (this.drawableState.scale != 1.0f) {
            this.matrix.reset();
            Matrix matrix = this.matrix;
            float f = this.drawableState.scale;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.matrix);
        }
        path.computeBounds(this.pathBounds, true);
    }

    private void i() {
        k kVarY = E().y(new b(-F()));
        this.strokeShapeAppearance = kVarY;
        this.pathProvider.d(kVarY, this.drawableState.interpolation, v(), this.pathInsetByStroke);
    }

    @NonNull
    private PorterDuffColorFilter j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z6) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z6) {
            colorForState = l(colorForState);
        }
        this.resolvedTintColor = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private void o0() {
        float fK = K();
        this.drawableState.shadowCompatRadius = (int) Math.ceil(0.75f * fK);
        this.drawableState.shadowCompatOffset = (int) Math.ceil(fK * SHADOW_OFFSET_MULTIPLIER);
        n0();
        P();
    }

    private void q(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull k kVar, @NonNull RectF rectF) {
        if (kVar.u(rectF)) {
            float fA = kVar.t().a(rectF) * this.drawableState.interpolation;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    public float K() {
        return w() + J();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.transparentRegion.set(getBounds());
        g(u(), this.path);
        this.scratchRegion.setPath(this.path, this.transparentRegion);
        this.transparentRegion.op(this.scratchRegion, Region.Op.DIFFERENCE);
        return this.transparentRegion;
    }

    public void i0(float f, @ColorInt int i10) {
        l0(f);
        k0(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        if (!super.isStateful() && (((colorStateList = this.drawableState.tintList) == null || !colorStateList.isStateful()) && (((colorStateList2 = this.drawableState.strokeTintList) == null || !colorStateList2.isStateful()) && (((colorStateList3 = this.drawableState.strokeColor) == null || !colorStateList3.isStateful()) && ((colorStateList4 = this.drawableState.fillColor) == null || !colorStateList4.isStateful()))))) {
            return false;
        }
        return true;
    }

    public void j0(float f, @Nullable ColorStateList colorStateList) {
        l0(f);
        k0(colorStateList);
    }

    @ColorInt
    @RestrictTo
    protected int l(@ColorInt int i10) {
        float fK = K() + z();
        l3.a aVar = this.drawableState.elevationOverlayProvider;
        if (aVar != null) {
            return aVar.c(i10, fK);
        }
        return i10;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.p.b
    protected boolean onStateChange(int[] iArr) {
        boolean z6;
        boolean zM0 = m0(iArr);
        boolean zN0 = n0();
        if (!zM0 && !zN0) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (z6) {
            invalidateSelf();
        }
        return z6;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(@ColorInt int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Deprecated
    public g(@NonNull n nVar) {
        this((k) nVar);
    }

    public g(@NonNull k kVar) {
        this(new c(kVar, null));
    }

    private g(@NonNull c cVar) {
        l lVar;
        this.cornerShadowOperation = new m.g[4];
        this.edgeShadowOperation = new m.g[4];
        this.containsIncompatibleShadowOp = new BitSet(8);
        this.matrix = new Matrix();
        this.path = new Path();
        this.pathInsetByStroke = new Path();
        this.rectF = new RectF();
        this.insetRectF = new RectF();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        Paint paint = new Paint(1);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        this.strokePaint = paint2;
        this.shadowRenderer = new q3.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            lVar = l.k();
        } else {
            lVar = new l();
        }
        this.pathProvider = lVar;
        this.pathBounds = new RectF();
        this.shadowBitmapDrawingEnable = true;
        this.drawableState = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        n0();
        m0(getState());
        this.pathShadowListener = new a();
    }
}
