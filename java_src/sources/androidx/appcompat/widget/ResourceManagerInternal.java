package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public final class ResourceManagerInternal {
    private static final boolean DEBUG = false;
    private static ResourceManagerInternal INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "ResourceManagerInternal";
    private SimpleArrayMap<String, InflateDelegate> mDelegates;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private ResourceManagerHooks mHooks;
    private SparseArrayCompat<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    private static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        private static int a(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        public ColorFilterLruCache(int i10) {
            super(i10);
        }

        PorterDuffColorFilter b(int i10, PorterDuff.Mode mode) {
            return get(Integer.valueOf(a(i10, mode)));
        }

        PorterDuffColorFilter c(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(a(i10, mode)), porterDuffColorFilter);
        }
    }

    private interface InflateDelegate {
        Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    @RestrictTo
    public interface ResourceManagerHooks {
        @Nullable
        Drawable a(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i10);

        @Nullable
        ColorStateList b(@NonNull Context context, @DrawableRes int i10);

        @Nullable
        PorterDuff.Mode c(int i10);

        boolean d(@NonNull Context context, @DrawableRes int i10, @NonNull Drawable drawable);

        boolean e(@NonNull Context context, @DrawableRes int i10, @NonNull Drawable drawable);
    }

    private synchronized boolean b(@NonNull Context context, long j6, @NonNull Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.m(j6, new WeakReference<>(constantState));
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized Drawable i(@NonNull Context context, long j6) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceH = longSparseArray.h(j6);
        if (weakReferenceH != null) {
            Drawable.ConstantState constantState = weakReferenceH.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.n(j6);
        }
        return null;
    }

    public synchronized Drawable j(@NonNull Context context, @DrawableRes int i10) {
        return k(context, i10, false);
    }

    synchronized Drawable k(@NonNull Context context, @DrawableRes int i10, boolean z6) {
        Drawable drawableR;
        try {
            d(context);
            drawableR = r(context, i10);
            if (drawableR == null) {
                drawableR = f(context, i10);
            }
            if (drawableR == null) {
                drawableR = ContextCompat.getDrawable(context, i10);
            }
            if (drawableR != null) {
                drawableR = v(context, i10, z6, drawableR);
            }
            if (drawableR != null) {
                DrawableUtils.b(drawableR);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableR;
    }

    synchronized ColorStateList m(@NonNull Context context, @DrawableRes int i10) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i10);
        if (colorStateListN == null) {
            ResourceManagerHooks resourceManagerHooks = this.mHooks;
            colorStateListN = resourceManagerHooks == null ? null : resourceManagerHooks.b(context, i10);
            if (colorStateListN != null) {
                c(context, i10, colorStateListN);
            }
        }
        return colorStateListN;
    }

    public synchronized void s(@NonNull Context context) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            longSparseArray.c();
        }
    }

    synchronized Drawable t(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i10) {
        try {
            Drawable drawableR = r(context, i10);
            if (drawableR == null) {
                drawableR = vectorEnabledTintResources.a(i10);
            }
            if (drawableR == null) {
                return null;
            }
            return v(context, i10, false, drawableR);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void u(ResourceManagerHooks resourceManagerHooks) {
        this.mHooks = resourceManagerHooks;
    }

    static class AsldcInflateDelegate implements InflateDelegate {
        AsldcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    private static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    static class DrawableDelegate implements InflateDelegate {
        DrawableDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    Compatibility.Api21Impl.c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                }
            }
            return null;
        }
    }

    private static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private void a(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new SimpleArrayMap<>();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private void c(@NonNull Context context, @DrawableRes int i10, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.b(i10, colorStateList);
    }

    private void d(@NonNull Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawableJ = j(context, R.drawable.abc_vector_test);
        if (drawableJ == null || !q(drawableJ)) {
            this.mHasCheckedVectorDrawableSetup = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(@NonNull Context context, @DrawableRes int i10) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        Drawable drawableA = resourceManagerHooks == null ? null : resourceManagerHooks.a(this, context, i10);
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableA);
        }
        return drawableA;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized ResourceManagerInternal h() {
        try {
            if (INSTANCE == null) {
                ResourceManagerInternal resourceManagerInternal = new ResourceManagerInternal();
                INSTANCE = resourceManagerInternal;
                p(resourceManagerInternal);
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public static synchronized PorterDuffColorFilter l(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterB;
        ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
        porterDuffColorFilterB = colorFilterLruCache.b(i10, mode);
        if (porterDuffColorFilterB == null) {
            porterDuffColorFilterB = new PorterDuffColorFilter(i10, mode);
            colorFilterLruCache.c(i10, mode, porterDuffColorFilterB);
        }
        return porterDuffColorFilterB;
    }

    private ColorStateList n(@NonNull Context context, @DrawableRes int i10) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.mTintLists;
        if (weakHashMap == null || (sparseArrayCompat = weakHashMap.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.j(i10);
    }

    private static void p(@NonNull ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.a("vector", new VdcInflateDelegate());
            resourceManagerInternal.a("animated-vector", new AvdcInflateDelegate());
            resourceManagerInternal.a("animated-selector", new AsldcInflateDelegate());
            resourceManagerInternal.a("drawable", new DrawableDelegate());
        }
    }

    private static boolean q(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName());
    }

    private Drawable r(@NonNull Context context, @DrawableRes int i10) {
        int next;
        SimpleArrayMap<String, InflateDelegate> simpleArrayMap = this.mDelegates;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String strJ = sparseArrayCompat.j(i10);
            if (SKIP_DRAWABLE_TAG.equals(strJ) || (strJ != null && this.mDelegates.get(strJ) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.b(i10, name);
                InflateDelegate inflateDelegate = this.mDelegates.get(name);
                if (inflateDelegate != null) {
                    drawableI = inflateDelegate.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception while inflating drawable", e);
            }
        }
        if (drawableI == null) {
            this.mKnownDrawableIdTags.b(i10, SKIP_DRAWABLE_TAG);
        }
        return drawableI;
    }

    PorterDuff.Mode o(int i10) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        if (resourceManagerHooks == null) {
            return null;
        }
        return resourceManagerHooks.c(i10);
    }

    boolean x(@NonNull Context context, @DrawableRes int i10, @NonNull Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        return resourceManagerHooks != null && resourceManagerHooks.e(context, i10, drawable);
    }

    private Drawable v(@NonNull Context context, @DrawableRes int i10, boolean z6, @NonNull Drawable drawable) {
        ColorStateList colorStateListM = m(context, i10);
        if (colorStateListM != null) {
            if (DrawableUtils.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableR = DrawableCompat.r(drawable);
            DrawableCompat.o(drawableR, colorStateListM);
            PorterDuff.Mode modeO = o(i10);
            if (modeO != null) {
                DrawableCompat.p(drawableR, modeO);
                return drawableR;
            }
            return drawableR;
        }
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        if ((resourceManagerHooks == null || !resourceManagerHooks.d(context, i10, drawable)) && !x(context, i10, drawable) && z6) {
            return null;
        }
        return drawable;
    }

    static void w(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        if (DrawableUtils.a(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z6 = tintInfo.mHasTintList;
        if (!z6 && !tintInfo.mHasTintMode) {
            drawable.clearColorFilter();
        } else {
            if (z6) {
                colorStateList = tintInfo.mTintList;
            } else {
                colorStateList = null;
            }
            if (tintInfo.mHasTintMode) {
                mode = tintInfo.mTintMode;
            } else {
                mode = DEFAULT_MODE;
            }
            drawable.setColorFilter(g(colorStateList, mode, iArr));
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }
}
