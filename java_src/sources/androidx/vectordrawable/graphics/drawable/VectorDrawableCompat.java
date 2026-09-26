package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class VectorDrawableCompat extends VectorDrawableCommon {
    private static final boolean DBG_VECTOR_DRAWABLE = false;
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    private static final int LINECAP_BUTT = 0;
    private static final int LINECAP_ROUND = 1;
    private static final int LINECAP_SQUARE = 2;
    private static final int LINEJOIN_BEVEL = 2;
    private static final int LINEJOIN_MITER = 0;
    private static final int LINEJOIN_ROUND = 1;
    static final String LOGTAG = "VectorDrawableCompat";
    private static final int MAX_CACHED_BITMAP_SIZE = 2048;
    private static final String SHAPE_CLIP_PATH = "clip-path";
    private static final String SHAPE_GROUP = "group";
    private static final String SHAPE_PATH = "path";
    private static final String SHAPE_VECTOR = "vector";
    private boolean mAllowCaching;
    private Drawable.ConstantState mCachedConstantStateDelegate;
    private ColorFilter mColorFilter;
    private boolean mMutated;
    private PorterDuffColorFilter mTintFilter;
    private final Rect mTmpBounds;
    private final float[] mTmpFloats;
    private final Matrix mTmpMatrix;
    private VectorDrawableCompatState mVectorState;

    private static class VClipPath extends VPath {
        VClipPath() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.mPathName = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.mNodes = PathParser.d(string2);
            }
            this.mFillRule = TypedArrayUtils.k(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VPath
        public boolean c() {
            return true;
        }

        VClipPath(VClipPath vClipPath) {
            super(vClipPath);
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!TypedArrayUtils.r(xmlPullParser, "pathData")) {
                return;
            }
            TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH);
            f(typedArrayS, xmlPullParser);
            typedArrayS.recycle();
        }
    }

    private static class VFullPath extends VPath {
        float mFillAlpha;
        ComplexColorCompat mFillColor;
        float mStrokeAlpha;
        ComplexColorCompat mStrokeColor;
        Paint.Cap mStrokeLineCap;
        Paint.Join mStrokeLineJoin;
        float mStrokeMiterlimit;
        float mStrokeWidth;
        private int[] mThemeAttrs;
        float mTrimPathEnd;
        float mTrimPathOffset;
        float mTrimPathStart;

        VFullPath() {
            this.mStrokeWidth = 0.0f;
            this.mStrokeAlpha = 1.0f;
            this.mFillAlpha = 1.0f;
            this.mTrimPathStart = 0.0f;
            this.mTrimPathEnd = 1.0f;
            this.mTrimPathOffset = 0.0f;
            this.mStrokeLineCap = Paint.Cap.BUTT;
            this.mStrokeLineJoin = Paint.Join.MITER;
            this.mStrokeMiterlimit = 4.0f;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.mThemeAttrs = null;
            if (TypedArrayUtils.r(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.mPathName = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.mNodes = PathParser.d(string2);
                }
                this.mFillColor = TypedArrayUtils.i(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.mFillAlpha = TypedArrayUtils.j(typedArray, xmlPullParser, "fillAlpha", 12, this.mFillAlpha);
                this.mStrokeLineCap = e(TypedArrayUtils.k(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.mStrokeLineCap);
                this.mStrokeLineJoin = f(TypedArrayUtils.k(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.mStrokeLineJoin);
                this.mStrokeMiterlimit = TypedArrayUtils.j(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.mStrokeMiterlimit);
                this.mStrokeColor = TypedArrayUtils.i(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.mStrokeAlpha = TypedArrayUtils.j(typedArray, xmlPullParser, "strokeAlpha", 11, this.mStrokeAlpha);
                this.mStrokeWidth = TypedArrayUtils.j(typedArray, xmlPullParser, "strokeWidth", 4, this.mStrokeWidth);
                this.mTrimPathEnd = TypedArrayUtils.j(typedArray, xmlPullParser, "trimPathEnd", 6, this.mTrimPathEnd);
                this.mTrimPathOffset = TypedArrayUtils.j(typedArray, xmlPullParser, "trimPathOffset", 7, this.mTrimPathOffset);
                this.mTrimPathStart = TypedArrayUtils.j(typedArray, xmlPullParser, "trimPathStart", 5, this.mTrimPathStart);
                this.mFillRule = TypedArrayUtils.k(typedArray, xmlPullParser, "fillType", 13, this.mFillRule);
            }
        }

        float getFillAlpha() {
            return this.mFillAlpha;
        }

        float getStrokeAlpha() {
            return this.mStrokeAlpha;
        }

        float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        float getTrimPathEnd() {
            return this.mTrimPathEnd;
        }

        float getTrimPathOffset() {
            return this.mTrimPathOffset;
        }

        float getTrimPathStart() {
            return this.mTrimPathStart;
        }

        void setFillAlpha(float f) {
            this.mFillAlpha = f;
        }

        void setStrokeAlpha(float f) {
            this.mStrokeAlpha = f;
        }

        void setStrokeWidth(float f) {
            this.mStrokeWidth = f;
        }

        void setTrimPathEnd(float f) {
            this.mTrimPathEnd = f;
        }

        void setTrimPathOffset(float f) {
            this.mTrimPathOffset = f;
        }

        void setTrimPathStart(float f) {
            this.mTrimPathStart = f;
        }

        private Paint.Cap e(int i10, Paint.Cap cap) {
            if (i10 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i10 != 1) {
                return i10 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        private Paint.Join f(int i10, Paint.Join join) {
            if (i10 == 0) {
                return Paint.Join.MITER;
            }
            if (i10 != 1) {
                return i10 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean a() {
            return this.mFillColor.i() || this.mStrokeColor.i();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean b(int[] iArr) {
            return this.mStrokeColor.j(iArr) | this.mFillColor.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_PATH);
            h(typedArrayS, xmlPullParser, theme);
            typedArrayS.recycle();
        }

        @ColorInt
        int getFillColor() {
            return this.mFillColor.e();
        }

        @ColorInt
        int getStrokeColor() {
            return this.mStrokeColor.e();
        }

        void setFillColor(int i10) {
            this.mFillColor.k(i10);
        }

        void setStrokeColor(int i10) {
            this.mStrokeColor.k(i10);
        }

        VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.mStrokeWidth = 0.0f;
            this.mStrokeAlpha = 1.0f;
            this.mFillAlpha = 1.0f;
            this.mTrimPathStart = 0.0f;
            this.mTrimPathEnd = 1.0f;
            this.mTrimPathOffset = 0.0f;
            this.mStrokeLineCap = Paint.Cap.BUTT;
            this.mStrokeLineJoin = Paint.Join.MITER;
            this.mStrokeMiterlimit = 4.0f;
            this.mThemeAttrs = vFullPath.mThemeAttrs;
            this.mStrokeColor = vFullPath.mStrokeColor;
            this.mStrokeWidth = vFullPath.mStrokeWidth;
            this.mStrokeAlpha = vFullPath.mStrokeAlpha;
            this.mFillColor = vFullPath.mFillColor;
            this.mFillRule = vFullPath.mFillRule;
            this.mFillAlpha = vFullPath.mFillAlpha;
            this.mTrimPathStart = vFullPath.mTrimPathStart;
            this.mTrimPathEnd = vFullPath.mTrimPathEnd;
            this.mTrimPathOffset = vFullPath.mTrimPathOffset;
            this.mStrokeLineCap = vFullPath.mStrokeLineCap;
            this.mStrokeLineJoin = vFullPath.mStrokeLineJoin;
            this.mStrokeMiterlimit = vFullPath.mStrokeMiterlimit;
        }
    }

    private static class VGroup extends VObject {
        int mChangingConfigurations;
        final ArrayList<VObject> mChildren;
        private String mGroupName;
        final Matrix mLocalMatrix;
        private float mPivotX;
        private float mPivotY;
        float mRotate;
        private float mScaleX;
        private float mScaleY;
        final Matrix mStackedMatrix;
        private int[] mThemeAttrs;
        private float mTranslateX;
        private float mTranslateY;

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            VPath vClipPath;
            super();
            this.mStackedMatrix = new Matrix();
            this.mChildren = new ArrayList<>();
            this.mRotate = 0.0f;
            this.mPivotX = 0.0f;
            this.mPivotY = 0.0f;
            this.mScaleX = 1.0f;
            this.mScaleY = 1.0f;
            this.mTranslateX = 0.0f;
            this.mTranslateY = 0.0f;
            Matrix matrix = new Matrix();
            this.mLocalMatrix = matrix;
            this.mGroupName = null;
            this.mRotate = vGroup.mRotate;
            this.mPivotX = vGroup.mPivotX;
            this.mPivotY = vGroup.mPivotY;
            this.mScaleX = vGroup.mScaleX;
            this.mScaleY = vGroup.mScaleY;
            this.mTranslateX = vGroup.mTranslateX;
            this.mTranslateY = vGroup.mTranslateY;
            this.mThemeAttrs = vGroup.mThemeAttrs;
            String str = vGroup.mGroupName;
            this.mGroupName = str;
            this.mChangingConfigurations = vGroup.mChangingConfigurations;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(vGroup.mLocalMatrix);
            ArrayList<VObject> arrayList = vGroup.mChildren;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                VObject vObject = arrayList.get(i10);
                if (vObject instanceof VGroup) {
                    this.mChildren.add(new VGroup((VGroup) vObject, arrayMap));
                } else {
                    if (vObject instanceof VFullPath) {
                        vClipPath = new VFullPath((VFullPath) vObject);
                    } else {
                        if (!(vObject instanceof VClipPath)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        vClipPath = new VClipPath((VClipPath) vObject);
                    }
                    this.mChildren.add(vClipPath);
                    String str2 = vClipPath.mPathName;
                    if (str2 != null) {
                        arrayMap.put(str2, vClipPath);
                    }
                }
            }
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.mThemeAttrs = null;
            this.mRotate = TypedArrayUtils.j(typedArray, xmlPullParser, Key.ROTATION, 5, this.mRotate);
            this.mPivotX = typedArray.getFloat(1, this.mPivotX);
            this.mPivotY = typedArray.getFloat(2, this.mPivotY);
            this.mScaleX = TypedArrayUtils.j(typedArray, xmlPullParser, "scaleX", 3, this.mScaleX);
            this.mScaleY = TypedArrayUtils.j(typedArray, xmlPullParser, "scaleY", 4, this.mScaleY);
            this.mTranslateX = TypedArrayUtils.j(typedArray, xmlPullParser, "translateX", 6, this.mTranslateX);
            this.mTranslateY = TypedArrayUtils.j(typedArray, xmlPullParser, "translateY", 7, this.mTranslateY);
            String string = typedArray.getString(0);
            if (string != null) {
                this.mGroupName = string;
            }
            d();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean a() {
            for (int i10 = 0; i10 < this.mChildren.size(); i10++) {
                if (this.mChildren.get(i10).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i10 = 0; i10 < this.mChildren.size(); i10++) {
                zB |= this.mChildren.get(i10).b(iArr);
            }
            return zB;
        }

        public String getGroupName() {
            return this.mGroupName;
        }

        public Matrix getLocalMatrix() {
            return this.mLocalMatrix;
        }

        public float getPivotX() {
            return this.mPivotX;
        }

        public float getPivotY() {
            return this.mPivotY;
        }

        public float getRotation() {
            return this.mRotate;
        }

        public float getScaleX() {
            return this.mScaleX;
        }

        public float getScaleY() {
            return this.mScaleY;
        }

        public float getTranslateX() {
            return this.mTranslateX;
        }

        public float getTranslateY() {
            return this.mTranslateY;
        }

        private void d() {
            this.mLocalMatrix.reset();
            this.mLocalMatrix.postTranslate(-this.mPivotX, -this.mPivotY);
            this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
            this.mLocalMatrix.postRotate(this.mRotate, 0.0f, 0.0f);
            this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_GROUP);
            e(typedArrayS, xmlPullParser);
            typedArrayS.recycle();
        }

        public void setPivotX(float f) {
            if (f != this.mPivotX) {
                this.mPivotX = f;
                d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.mPivotY) {
                this.mPivotY = f;
                d();
            }
        }

        public void setRotation(float f) {
            if (f != this.mRotate) {
                this.mRotate = f;
                d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.mScaleX) {
                this.mScaleX = f;
                d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.mScaleY) {
                this.mScaleY = f;
                d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.mTranslateX) {
                this.mTranslateX = f;
                d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.mTranslateY) {
                this.mTranslateY = f;
                d();
            }
        }

        public VGroup() {
            super();
            this.mStackedMatrix = new Matrix();
            this.mChildren = new ArrayList<>();
            this.mRotate = 0.0f;
            this.mPivotX = 0.0f;
            this.mPivotY = 0.0f;
            this.mScaleX = 1.0f;
            this.mScaleY = 1.0f;
            this.mTranslateX = 0.0f;
            this.mTranslateY = 0.0f;
            this.mLocalMatrix = new Matrix();
            this.mGroupName = null;
        }
    }

    private static abstract class VObject {
        private VObject() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    private static abstract class VPath extends VObject {
        protected static final int FILL_TYPE_WINDING = 0;
        int mChangingConfigurations;
        int mFillRule;
        protected PathParser.PathDataNode[] mNodes;
        String mPathName;

        public VPath() {
            super();
            this.mNodes = null;
            this.mFillRule = 0;
        }

        public boolean c() {
            return false;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.mNodes;
        }

        public String getPathName() {
            return this.mPathName;
        }

        public VPath(VPath vPath) {
            super();
            this.mNodes = null;
            this.mFillRule = 0;
            this.mPathName = vPath.mPathName;
            this.mChangingConfigurations = vPath.mChangingConfigurations;
            this.mNodes = PathParser.f(vPath.mNodes);
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (PathParser.b(this.mNodes, pathDataNodeArr)) {
                PathParser.j(this.mNodes, pathDataNodeArr);
            } else {
                this.mNodes = PathParser.f(pathDataNodeArr);
            }
        }

        public void d(Path path) {
            path.reset();
            PathParser.PathDataNode[] pathDataNodeArr = this.mNodes;
            if (pathDataNodeArr != null) {
                PathParser.PathDataNode.e(pathDataNodeArr, path);
            }
        }
    }

    private static class VPathRenderer {
        private static final Matrix IDENTITY_MATRIX = new Matrix();
        float mBaseHeight;
        float mBaseWidth;
        private int mChangingConfigurations;
        Paint mFillPaint;
        private final Matrix mFinalPathMatrix;
        Boolean mIsStateful;
        private final Path mPath;
        private PathMeasure mPathMeasure;
        private final Path mRenderPath;
        int mRootAlpha;
        final VGroup mRootGroup;
        String mRootName;
        Paint mStrokePaint;
        final ArrayMap<String, Object> mVGTargetsMap;
        float mViewportHeight;
        float mViewportWidth;

        public VPathRenderer() {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = 0.0f;
            this.mBaseHeight = 0.0f;
            this.mViewportWidth = 0.0f;
            this.mViewportHeight = 0.0f;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mIsStateful = null;
            this.mVGTargetsMap = new ArrayMap<>();
            this.mRootGroup = new VGroup();
            this.mPath = new Path();
            this.mRenderPath = new Path();
        }

        private static float a(float f, float f6, float f7, float f10) {
            return (f * f10) - (f6 * f7);
        }

        private void d(VGroup vGroup, VPath vPath, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            float f = i10 / this.mViewportWidth;
            float f6 = i11 / this.mViewportHeight;
            float fMin = Math.min(f, f6);
            Matrix matrix = vGroup.mStackedMatrix;
            this.mFinalPathMatrix.set(matrix);
            this.mFinalPathMatrix.postScale(f, f6);
            float fE = e(matrix);
            if (fE == 0.0f) {
                return;
            }
            vPath.d(this.mPath);
            Path path = this.mPath;
            this.mRenderPath.reset();
            if (vPath.c()) {
                this.mRenderPath.setFillType(vPath.mFillRule == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.mRenderPath.addPath(path, this.mFinalPathMatrix);
                canvas.clipPath(this.mRenderPath);
                return;
            }
            VFullPath vFullPath = (VFullPath) vPath;
            float f7 = vFullPath.mTrimPathStart;
            if (f7 != 0.0f || vFullPath.mTrimPathEnd != 1.0f) {
                float f10 = vFullPath.mTrimPathOffset;
                float f11 = (f7 + f10) % 1.0f;
                float f12 = (vFullPath.mTrimPathEnd + f10) % 1.0f;
                if (this.mPathMeasure == null) {
                    this.mPathMeasure = new PathMeasure();
                }
                this.mPathMeasure.setPath(this.mPath, false);
                float length = this.mPathMeasure.getLength();
                float f13 = f11 * length;
                float f14 = f12 * length;
                path.reset();
                if (f13 > f14) {
                    this.mPathMeasure.getSegment(f13, length, path, true);
                    this.mPathMeasure.getSegment(0.0f, f14, path, true);
                } else {
                    this.mPathMeasure.getSegment(f13, f14, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.mRenderPath.addPath(path, this.mFinalPathMatrix);
            if (vFullPath.mFillColor.l()) {
                ComplexColorCompat complexColorCompat = vFullPath.mFillColor;
                if (this.mFillPaint == null) {
                    Paint paint = new Paint(1);
                    this.mFillPaint = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.mFillPaint;
                if (complexColorCompat.h()) {
                    Shader shaderF = complexColorCompat.f();
                    shaderF.setLocalMatrix(this.mFinalPathMatrix);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(vFullPath.mFillAlpha * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(VectorDrawableCompat.a(complexColorCompat.e(), vFullPath.mFillAlpha));
                }
                paint2.setColorFilter(colorFilter);
                this.mRenderPath.setFillType(vFullPath.mFillRule == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.mRenderPath, paint2);
            }
            if (vFullPath.mStrokeColor.l()) {
                ComplexColorCompat complexColorCompat2 = vFullPath.mStrokeColor;
                if (this.mStrokePaint == null) {
                    Paint paint3 = new Paint(1);
                    this.mStrokePaint = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.mStrokePaint;
                Paint.Join join = vFullPath.mStrokeLineJoin;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = vFullPath.mStrokeLineCap;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(vFullPath.mStrokeMiterlimit);
                if (complexColorCompat2.h()) {
                    Shader shaderF2 = complexColorCompat2.f();
                    shaderF2.setLocalMatrix(this.mFinalPathMatrix);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(vFullPath.mStrokeAlpha * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(VectorDrawableCompat.a(complexColorCompat2.e(), vFullPath.mStrokeAlpha));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(vFullPath.mStrokeWidth * fMin * fE);
                canvas.drawPath(this.mRenderPath, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        public int getRootAlpha() {
            return this.mRootAlpha;
        }

        public void setRootAlpha(int i10) {
            this.mRootAlpha = i10;
        }

        private void c(VGroup vGroup, Matrix matrix, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            vGroup.mStackedMatrix.set(matrix);
            vGroup.mStackedMatrix.preConcat(vGroup.mLocalMatrix);
            canvas.save();
            for (int i12 = 0; i12 < vGroup.mChildren.size(); i12++) {
                VObject vObject = vGroup.mChildren.get(i12);
                if (vObject instanceof VGroup) {
                    c((VGroup) vObject, vGroup.mStackedMatrix, canvas, i10, i11, colorFilter);
                } else if (vObject instanceof VPath) {
                    d(vGroup, (VPath) vObject, canvas, i10, i11, colorFilter);
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            c(this.mRootGroup, IDENTITY_MATRIX, canvas, i10, i11, colorFilter);
        }

        public boolean f() {
            if (this.mIsStateful == null) {
                this.mIsStateful = Boolean.valueOf(this.mRootGroup.a());
            }
            return this.mIsStateful.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.mRootGroup.b(iArr);
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = 0.0f;
            this.mBaseHeight = 0.0f;
            this.mViewportWidth = 0.0f;
            this.mViewportHeight = 0.0f;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mIsStateful = null;
            ArrayMap<String, Object> arrayMap = new ArrayMap<>();
            this.mVGTargetsMap = arrayMap;
            this.mRootGroup = new VGroup(vPathRenderer.mRootGroup, arrayMap);
            this.mPath = new Path(vPathRenderer.mPath);
            this.mRenderPath = new Path(vPathRenderer.mRenderPath);
            this.mBaseWidth = vPathRenderer.mBaseWidth;
            this.mBaseHeight = vPathRenderer.mBaseHeight;
            this.mViewportWidth = vPathRenderer.mViewportWidth;
            this.mViewportHeight = vPathRenderer.mViewportHeight;
            this.mChangingConfigurations = vPathRenderer.mChangingConfigurations;
            this.mRootAlpha = vPathRenderer.mRootAlpha;
            this.mRootName = vPathRenderer.mRootName;
            String str = vPathRenderer.mRootName;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.mIsStateful = vPathRenderer.mIsStateful;
        }
    }

    private static class VectorDrawableCompatState extends Drawable.ConstantState {
        boolean mAutoMirrored;
        boolean mCacheDirty;
        boolean mCachedAutoMirrored;
        Bitmap mCachedBitmap;
        int mCachedRootAlpha;
        int[] mCachedThemeAttrs;
        ColorStateList mCachedTint;
        PorterDuff.Mode mCachedTintMode;
        int mChangingConfigurations;
        Paint mTempPaint;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;
        VPathRenderer mVPathRenderer;

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            this.mTint = null;
            this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
            if (vectorDrawableCompatState != null) {
                this.mChangingConfigurations = vectorDrawableCompatState.mChangingConfigurations;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.mVPathRenderer);
                this.mVPathRenderer = vPathRenderer;
                if (vectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                    vPathRenderer.mFillPaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mFillPaint);
                }
                if (vectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                    this.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mStrokePaint);
                }
                this.mTint = vectorDrawableCompatState.mTint;
                this.mTintMode = vectorDrawableCompatState.mTintMode;
                this.mAutoMirrored = vectorDrawableCompatState.mAutoMirrored;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        public boolean a(int i10, int i11) {
            return i10 == this.mCachedBitmap.getWidth() && i11 == this.mCachedBitmap.getHeight();
        }

        public boolean b() {
            return !this.mCacheDirty && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored && this.mCachedRootAlpha == this.mVPathRenderer.getRootAlpha();
        }

        public void c(int i10, int i11) {
            if (this.mCachedBitmap == null || !a(i10, i11)) {
                this.mCachedBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                this.mCacheDirty = true;
            }
        }

        public boolean f() {
            return this.mVPathRenderer.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.mVPathRenderer.f();
        }

        public boolean h(int[] iArr) {
            boolean zG = this.mVPathRenderer.g(iArr);
            this.mCacheDirty |= zG;
            return zG;
        }

        public void i() {
            this.mCachedTint = this.mTint;
            this.mCachedTintMode = this.mTintMode;
            this.mCachedRootAlpha = this.mVPathRenderer.getRootAlpha();
            this.mCachedAutoMirrored = this.mAutoMirrored;
            this.mCacheDirty = false;
        }

        public void j(int i10, int i11) {
            this.mCachedBitmap.eraseColor(0);
            this.mVPathRenderer.b(new Canvas(this.mCachedBitmap), i10, i11, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.mCachedBitmap, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.mTempPaint == null) {
                Paint paint = new Paint();
                this.mTempPaint = paint;
                paint.setFilterBitmap(true);
            }
            this.mTempPaint.setAlpha(this.mVPathRenderer.getRootAlpha());
            this.mTempPaint.setColorFilter(colorFilter);
            return this.mTempPaint;
        }

        public VectorDrawableCompatState() {
            this.mTint = null;
            this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
            this.mVPathRenderer = new VPathRenderer();
        }
    }

    @RequiresApi
    private static class VectorDrawableDelegateState extends Drawable.ConstantState {
        private final Drawable.ConstantState mDelegateState;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.mDelegateState.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mDelegateState.getChangingConfigurations();
        }

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.mDelegateState = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    VectorDrawableCompat() {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = new VectorDrawableCompatState();
    }

    private static PorterDuff.Mode g(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    void h(boolean z6) {
        this.mAllowCaching = z6;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    public static VectorDrawableCompat c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(vPathRenderer.mRootGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z6 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) arrayDeque.peek();
                if ("path".equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.g(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vFullPath.getPathName(), vFullPath);
                    }
                    vectorDrawableCompatState.mChangingConfigurations = vFullPath.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                    z6 = false;
                } else if (SHAPE_CLIP_PATH.equals(name)) {
                    VClipPath vClipPath = new VClipPath();
                    vClipPath.e(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vClipPath);
                    if (vClipPath.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vClipPath.getPathName(), vClipPath);
                    }
                    vectorDrawableCompatState.mChangingConfigurations = vClipPath.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                } else if ("group".equals(name)) {
                    VGroup vGroup2 = new VGroup();
                    vGroup2.c(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vGroup2);
                    arrayDeque.push(vGroup2);
                    if (vGroup2.getGroupName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vGroup2.getGroupName(), vGroup2);
                    }
                    vectorDrawableCompatState.mChangingConfigurations = vGroup2.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z6) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        vectorDrawableCompatState.mTintMode = g(TypedArrayUtils.k(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListG = TypedArrayUtils.g(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListG != null) {
            vectorDrawableCompatState.mTint = colorStateListG;
        }
        vectorDrawableCompatState.mAutoMirrored = TypedArrayUtils.e(typedArray, xmlPullParser, "autoMirrored", 5, vectorDrawableCompatState.mAutoMirrored);
        vPathRenderer.mViewportWidth = TypedArrayUtils.j(typedArray, xmlPullParser, "viewportWidth", 7, vPathRenderer.mViewportWidth);
        float fJ = TypedArrayUtils.j(typedArray, xmlPullParser, "viewportHeight", 8, vPathRenderer.mViewportHeight);
        vPathRenderer.mViewportHeight = fJ;
        if (vPathRenderer.mViewportWidth <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fJ <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        vPathRenderer.mBaseWidth = typedArray.getDimension(3, vPathRenderer.mBaseWidth);
        float dimension = typedArray.getDimension(2, vPathRenderer.mBaseHeight);
        vPathRenderer.mBaseHeight = dimension;
        if (vPathRenderer.mBaseWidth <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        vPathRenderer.setAlpha(TypedArrayUtils.j(typedArray, xmlPullParser, "alpha", 4, vPathRenderer.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            vPathRenderer.mRootName = string;
            vPathRenderer.mVGTargetsMap.put(string, vPathRenderer);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.b(drawable);
        return false;
    }

    Object d(String str) {
        return this.mVectorState.mVPathRenderer.mVGTargetsMap.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.mTmpBounds);
        if (this.mTmpBounds.width() <= 0 || this.mTmpBounds.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.mColorFilter;
        if (colorFilter == null) {
            colorFilter = this.mTintFilter;
        }
        canvas.getMatrix(this.mTmpMatrix);
        this.mTmpMatrix.getValues(this.mTmpFloats);
        float fAbs = Math.abs(this.mTmpFloats[0]);
        float fAbs2 = Math.abs(this.mTmpFloats[4]);
        float fAbs3 = Math.abs(this.mTmpFloats[1]);
        float fAbs4 = Math.abs(this.mTmpFloats[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (this.mTmpBounds.width() * fAbs);
        int iHeight = (int) (this.mTmpBounds.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.mTmpBounds;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.mTmpBounds.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.mTmpBounds.offsetTo(0, 0);
        this.mVectorState.c(iMin, iMin2);
        if (!this.mAllowCaching) {
            this.mVectorState.j(iMin, iMin2);
        } else if (!this.mVectorState.b()) {
            this.mVectorState.j(iMin, iMin2);
            this.mVectorState.i();
        }
        this.mVectorState.d(canvas, colorFilter, this.mTmpBounds);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? DrawableCompat.d(drawable) : this.mVectorState.mVPathRenderer.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.mVectorState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? DrawableCompat.e(drawable) : this.mColorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.mDelegateDrawable != null && Build.VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        this.mVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mVectorState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.mVectorState.mVPathRenderer.mBaseHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.mVectorState.mVPathRenderer.mBaseWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? DrawableCompat.h(drawable) : this.mVectorState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        VectorDrawableCompatState vectorDrawableCompatState;
        ColorStateList colorStateList;
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((vectorDrawableCompatState = this.mVectorState) != null && (vectorDrawableCompatState.g() || ((colorStateList = this.mVectorState.mTint) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.mMutated && super.mutate() == this) {
            this.mVectorState = new VectorDrawableCompatState(this.mVectorState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z6;
        PorterDuff.Mode mode;
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        ColorStateList colorStateList = vectorDrawableCompatState.mTint;
        if (colorStateList == null || (mode = vectorDrawableCompatState.mTintMode) == null) {
            z6 = false;
        } else {
            this.mTintFilter = j(this.mTintFilter, colorStateList, mode);
            invalidateSelf();
            z6 = true;
        }
        if (!vectorDrawableCompatState.g() || !vectorDrawableCompatState.h(iArr)) {
            return z6;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j6) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j6);
        } else {
            super.scheduleSelf(runnable, j6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.mVectorState.mVPathRenderer.getRootAlpha() != i10) {
            this.mVectorState.mVPathRenderer.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z6) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.j(drawable, z6);
        } else {
            this.mVectorState.mAutoMirrored = z6;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.mColorFilter = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.n(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.o(drawable, colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTint != colorStateList) {
            vectorDrawableCompatState.mTint = colorStateList;
            this.mTintFilter = j(this.mTintFilter, colorStateList, vectorDrawableCompatState.mTintMode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.p(drawable, mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTintMode != mode) {
            vectorDrawableCompatState.mTintMode = mode;
            this.mTintFilter = j(this.mTintFilter, vectorDrawableCompatState.mTint, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.setVisible(z6, z10) : super.setVisible(z6, z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    static int a(int i10, float f) {
        return (i10 & ViewCompat.MEASURED_SIZE_MASK) | (((int) (Color.alpha(i10) * f)) << 24);
    }

    @Nullable
    public static VectorDrawableCompat b(@NonNull Resources resources, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = ResourcesCompat.e(resources, i10, theme);
            vectorDrawableCompat.mCachedConstantStateDelegate = new VectorDrawableDelegateState(vectorDrawableCompat.mDelegateDrawable.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = resources.getXml(i10);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e(LOGTAG, "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e(LOGTAG, "parser error", e2);
            return null;
        }
    }

    private boolean f() {
        if (isAutoMirrored() && DrawableCompat.f(this) == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        vectorDrawableCompatState.mVPathRenderer = new VPathRenderer();
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY);
        i(typedArrayS, xmlPullParser, theme);
        typedArrayS.recycle();
        vectorDrawableCompatState.mChangingConfigurations = getChangingConfigurations();
        vectorDrawableCompatState.mCacheDirty = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.mTintFilter = j(this.mTintFilter, vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z6) {
        super.setFilterBitmap(z6);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f6) {
        super.setHotspot(f, f6);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    VectorDrawableCompat(@NonNull VectorDrawableCompatState vectorDrawableCompatState) {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = vectorDrawableCompatState;
        this.mTintFilter = j(this.mTintFilter, vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }
}
