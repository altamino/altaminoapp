package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class AnimatorInflaterCompat {
    private static final boolean DBG_ANIMATOR_INFLATER = false;
    private static final int MAX_NUM_POINTS = 100;
    private static final String TAG = "AnimatorInflater";
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 3;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;
    private static final int VALUE_TYPE_PATH = 2;
    private static final int VALUE_TYPE_UNDEFINED = 4;

    private static boolean h(int i10) {
        return i10 >= 28 && i10 <= 31;
    }

    private static PropertyValuesHolder o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i10) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolderOfKeyframe = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i10 == 4) {
                    i10 = g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeM = m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i10, xmlPullParser);
                if (keyframeM != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeM);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, c(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i11 = 0; i11 < size; i11++) {
                Keyframe keyframe3 = keyframeArr[i11];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i11 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i12 = size - 1;
                        if (i11 == i12) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i13 = i11;
                            for (int i14 = i11 + 1; i14 < i12 && keyframeArr[i14].getFraction() < 0.0f; i14++) {
                                i13 = i14;
                            }
                            d(keyframeArr, keyframeArr[i13 + 1].getFraction() - keyframeArr[i11 - 1].getFraction(), i11, i13);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i10 == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(ArgbEvaluator.a());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    private static class PathDataEvaluator implements TypeEvaluator<PathParser.PathDataNode[]> {
        private PathParser.PathDataNode[] mNodeArray;

        PathDataEvaluator() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (PathParser.b(pathDataNodeArr, pathDataNodeArr2)) {
                if (!PathParser.b(this.mNodeArray, pathDataNodeArr)) {
                    this.mNodeArray = PathParser.f(pathDataNodeArr);
                }
                for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
                    this.mNodeArray[i10].d(pathDataNodeArr[i10], pathDataNodeArr2[i10], f);
                }
                return this.mNodeArray;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private static Animator b(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i10, float f) throws XmlPullParserException, IOException {
        int i11;
        int depth = xmlPullParser.getDepth();
        Animator animatorL = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i11 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    animatorL = n(context, resources, theme, attributeSet, f, xmlPullParser);
                } else {
                    if (name.equals("animator")) {
                        animatorL = l(context, resources, theme, attributeSet, null, f, xmlPullParser);
                    } else if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR_SET);
                        b(context, resources, theme, xmlPullParser, attributeSet, animatorSet2, TypedArrayUtils.k(typedArrayS, xmlPullParser, "ordering", 0, 0), f);
                        typedArrayS.recycle();
                        animatorL = animatorSet2;
                    } else {
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        PropertyValuesHolder[] propertyValuesHolderArrP = p(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (propertyValuesHolderArrP != null && (animatorL instanceof ValueAnimator)) {
                            ((ValueAnimator) animatorL).setValues(propertyValuesHolderArrP);
                        }
                        i11 = 1;
                    }
                    if (animatorSet == null && i11 == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(animatorL);
                    }
                }
                if (animatorSet == null) {
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorArr[i11] = (Animator) it.next();
                i11++;
            }
            if (i10 == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return animatorL;
    }

    private static void d(Keyframe[] keyframeArr, float f, int i10, int i11) {
        float f6 = f / ((i11 - i10) + 2);
        while (i10 <= i11) {
            keyframeArr[i10].setFraction(keyframeArr[i10 - 1].getFraction() + f6);
            i10++;
        }
    }

    private static int g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        int i10 = 0;
        TypedValue typedValueT = TypedArrayUtils.t(typedArrayS, xmlPullParser, "value", 0);
        if (typedValueT != null && h(typedValueT.type)) {
            i10 = 3;
        }
        typedArrayS.recycle();
        return i10;
    }

    public static Animator i(Context context, @AnimatorRes int i10) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i10) : j(context, context.getResources(), context.getTheme(), i10);
    }

    public static Animator j(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i10) throws Resources.NotFoundException {
        return k(context, resources, theme, i10, 1.0f);
    }

    public static Animator k(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i10, float f) throws Resources.NotFoundException {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i10);
                    Animator animatorA = a(context, resources, theme, animation, f);
                    if (animation != null) {
                        animation.close();
                    }
                    return animatorA;
                } catch (IOException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    private static ValueAnimator l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR);
        TypedArray typedArrayS2 = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_ANIMATOR);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        q(valueAnimator, typedArrayS, typedArrayS2, f, xmlPullParser);
        int iL = TypedArrayUtils.l(typedArrayS, xmlPullParser, "interpolator", 0, 0);
        if (iL > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.a(context, iL));
        }
        typedArrayS.recycle();
        if (typedArrayS2 != null) {
            typedArrayS2.recycle();
        }
        return valueAnimator;
    }

    private static Keyframe m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i10, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Keyframe keyframeOfFloat;
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        float fJ = TypedArrayUtils.j(typedArrayS, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueT = TypedArrayUtils.t(typedArrayS, xmlPullParser, "value", 0);
        boolean z6 = typedValueT != null;
        if (i10 == 4) {
            i10 = (z6 && h(typedValueT.type)) ? 3 : 0;
        }
        if (!z6) {
            keyframeOfFloat = i10 == 0 ? Keyframe.ofFloat(fJ) : Keyframe.ofInt(fJ);
        } else if (i10 != 0) {
            keyframeOfFloat = (i10 == 1 || i10 == 3) ? Keyframe.ofInt(fJ, TypedArrayUtils.k(typedArrayS, xmlPullParser, "value", 0, 0)) : null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(fJ, TypedArrayUtils.j(typedArrayS, xmlPullParser, "value", 0, 0.0f));
        }
        int iL = TypedArrayUtils.l(typedArrayS, xmlPullParser, "interpolator", 1, 0);
        if (iL > 0) {
            keyframeOfFloat.setInterpolator(AnimationUtilsCompat.a(context, iL));
        }
        typedArrayS.recycle();
        return keyframeOfFloat;
    }

    private static ObjectAnimator n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    private static PropertyValuesHolder[] p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i10;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_VALUES_HOLDER);
                    String strM = TypedArrayUtils.m(typedArrayS, xmlPullParser, "propertyName", 3);
                    int iK = TypedArrayUtils.k(typedArrayS, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderO = o(context, resources, theme, xmlPullParser, strM, iK);
                    if (propertyValuesHolderO == null) {
                        propertyValuesHolderO = e(typedArrayS, iK, 0, 1, strM);
                    }
                    if (propertyValuesHolderO != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderO);
                    }
                    typedArrayS.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i10 = 0; i10 < size; i10++) {
                propertyValuesHolderArr[i10] = (PropertyValuesHolder) arrayList.get(i10);
            }
        }
        return propertyValuesHolderArr;
    }

    private static void q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long jK = TypedArrayUtils.k(typedArray, xmlPullParser, TypedValues.TransitionType.S_DURATION, 1, 300);
        long jK2 = TypedArrayUtils.k(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iK = TypedArrayUtils.k(typedArray, xmlPullParser, "valueType", 7, 4);
        if (TypedArrayUtils.r(xmlPullParser, "valueFrom") && TypedArrayUtils.r(xmlPullParser, "valueTo")) {
            if (iK == 4) {
                iK = f(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderE = e(typedArray, iK, 5, 6, "");
            if (propertyValuesHolderE != null) {
                valueAnimator.setValues(propertyValuesHolderE);
            }
        }
        valueAnimator.setDuration(jK);
        valueAnimator.setStartDelay(jK2);
        valueAnimator.setRepeatCount(TypedArrayUtils.k(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.k(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            r(valueAnimator, typedArray2, iK, f, xmlPullParser);
        }
    }

    private static void r(ValueAnimator valueAnimator, TypedArray typedArray, int i10, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strM = TypedArrayUtils.m(typedArray, xmlPullParser, "pathData", 1);
        if (strM == null) {
            objectAnimator.setPropertyName(TypedArrayUtils.m(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String strM2 = TypedArrayUtils.m(typedArray, xmlPullParser, "propertyXName", 2);
        String strM3 = TypedArrayUtils.m(typedArray, xmlPullParser, "propertyYName", 3);
        if (i10 != 2) {
        }
        if (strM2 != null || strM3 != null) {
            s(PathParser.e(strM), objectAnimator, f * 0.5f, strM2, strM3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    private static void s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f6 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float length = 0.0f;
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        float f7 = length / (iMin - 1);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= iMin) {
                break;
            }
            pathMeasure2.getPosTan(f6 - ((Float) arrayList.get(i11)).floatValue(), fArr3, null);
            fArr[i10] = fArr3[0];
            fArr2[i10] = fArr3[1];
            f6 += f7;
            int i12 = i11 + 1;
            if (i12 < arrayList.size() && f6 > ((Float) arrayList.get(i12)).floatValue()) {
                pathMeasure2.nextContour();
                i11 = i12;
            }
            i10++;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }

    private AnimatorInflaterCompat() {
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) throws XmlPullParserException, IOException {
        return b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    private static Keyframe c(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    private static PropertyValuesHolder e(TypedArray typedArray, int i10, int i11, int i12, String str) {
        boolean z6;
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        ArgbEvaluator argbEvaluatorA;
        int color;
        int color2;
        int color3;
        float dimension;
        PropertyValuesHolder propertyValuesHolderOfFloat;
        float dimension2;
        float dimension3;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i11);
        if (typedValuePeekValue != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            i13 = typedValuePeekValue.type;
        } else {
            i13 = 0;
        }
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i12);
        if (typedValuePeekValue2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i14 = typedValuePeekValue2.type;
        } else {
            i14 = 0;
        }
        if (i10 == 4) {
            if ((z6 && h(i13)) || (z10 && h(i14))) {
                i10 = 3;
            } else {
                i10 = 0;
            }
        }
        if (i10 == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i10 == 2) {
            String string = typedArray.getString(i11);
            String string2 = typedArray.getString(i12);
            PathParser.PathDataNode[] pathDataNodeArrD = PathParser.d(string);
            PathParser.PathDataNode[] pathDataNodeArrD2 = PathParser.d(string2);
            if (pathDataNodeArrD == null && pathDataNodeArrD2 == null) {
                return null;
            }
            if (pathDataNodeArrD != null) {
                PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
                if (pathDataNodeArrD2 != null) {
                    if (PathParser.b(pathDataNodeArrD, pathDataNodeArrD2)) {
                        propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathDataNodeArrD, pathDataNodeArrD2);
                    } else {
                        throw new InflateException(" Can't morph from " + string + " to " + string2);
                    }
                } else {
                    propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathDataNodeArrD);
                }
                return propertyValuesHolderOfObject;
            }
            if (pathDataNodeArrD2 == null) {
                return null;
            }
            return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), pathDataNodeArrD2);
        }
        if (i10 == 3) {
            argbEvaluatorA = ArgbEvaluator.a();
        } else {
            argbEvaluatorA = null;
        }
        if (z11) {
            if (z6) {
                if (i13 == 5) {
                    dimension2 = typedArray.getDimension(i11, 0.0f);
                } else {
                    dimension2 = typedArray.getFloat(i11, 0.0f);
                }
                if (z10) {
                    if (i14 == 5) {
                        dimension3 = typedArray.getDimension(i12, 0.0f);
                    } else {
                        dimension3 = typedArray.getFloat(i12, 0.0f);
                    }
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension2, dimension3);
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension2);
                }
            } else {
                if (i14 == 5) {
                    dimension = typedArray.getDimension(i12, 0.0f);
                } else {
                    dimension = typedArray.getFloat(i12, 0.0f);
                }
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z6) {
            if (i13 == 5) {
                color2 = (int) typedArray.getDimension(i11, 0.0f);
            } else if (h(i13)) {
                color2 = typedArray.getColor(i11, 0);
            } else {
                color2 = typedArray.getInt(i11, 0);
            }
            if (z10) {
                if (i14 == 5) {
                    color3 = (int) typedArray.getDimension(i12, 0.0f);
                } else if (h(i14)) {
                    color3 = typedArray.getColor(i12, 0);
                } else {
                    color3 = typedArray.getInt(i12, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (z10) {
            if (i14 == 5) {
                color = (int) typedArray.getDimension(i12, 0.0f);
            } else if (h(i14)) {
                color = typedArray.getColor(i12, 0);
            } else {
                color = typedArray.getInt(i12, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt != null && argbEvaluatorA != null) {
            propertyValuesHolderOfInt.setEvaluator(argbEvaluatorA);
            return propertyValuesHolderOfInt;
        }
        return propertyValuesHolderOfInt;
    }

    private static int f(TypedArray typedArray, int i10, int i11) {
        boolean z6;
        int i12;
        int i13;
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        boolean z10 = true;
        if (typedValuePeekValue != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            i12 = typedValuePeekValue.type;
        } else {
            i12 = 0;
        }
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i11);
        if (typedValuePeekValue2 == null) {
            z10 = false;
        }
        if (z10) {
            i13 = typedValuePeekValue2.type;
        } else {
            i13 = 0;
        }
        if ((!z6 || !h(i12)) && (!z10 || !h(i13))) {
            return 0;
        }
        return 3;
    }
}
