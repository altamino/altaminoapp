package e3;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class h {
    private static final String TAG = "MotionSpec";
    private final SimpleArrayMap<String, i> timings = new SimpleArrayMap<>();
    private final SimpleArrayMap<String, PropertyValuesHolder[]> propertyValues = new SimpleArrayMap<>();

    @NonNull
    private PropertyValuesHolder[] b(@NonNull PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i10 = 0; i10 < propertyValuesHolderArr.length; i10++) {
            propertyValuesHolderArr2[i10] = propertyValuesHolderArr[i10].clone();
        }
        return propertyValuesHolderArr2;
    }

    @Nullable
    public static h d(@NonNull Context context, @AnimatorRes int i10) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return e(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return e(arrayList);
        } catch (Exception e) {
            Log.w(TAG, "Can't load animation resource ID #0x" + Integer.toHexString(i10), e);
            return null;
        }
    }

    private static void a(@NonNull h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.m(objectAnimator.getPropertyName(), i.b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    @NonNull
    private static h e(@NonNull List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(hVar, list.get(i10));
        }
        return hVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return this.timings.equals(((h) obj).timings);
        }
        return false;
    }

    public int hashCode() {
        return this.timings.hashCode();
    }

    public long i() {
        int size = this.timings.size();
        long jMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i iVarP = this.timings.p(i10);
            jMax = Math.max(jMax, iVarP.c() + iVarP.d());
        }
        return jMax;
    }

    public boolean j(String str) {
        return this.propertyValues.get(str) != null;
    }

    public boolean k(String str) {
        return this.timings.get(str) != null;
    }

    public void l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.propertyValues.put(str, propertyValuesHolderArr);
    }

    public void m(String str, @Nullable i iVar) {
        this.timings.put(str, iVar);
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + kotlinx.serialization.json.internal.b.BEGIN_OBJ + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.timings + "}\n";
    }

    @Nullable
    public static h c(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        int resourceId;
        if (typedArray.hasValue(i10) && (resourceId = typedArray.getResourceId(i10, 0)) != 0) {
            return d(context, resourceId);
        }
        return null;
    }

    @NonNull
    public <T> ObjectAnimator f(@NonNull String str, @NonNull T t5, @NonNull Property<T, ?> property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t5, g(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        h(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    @NonNull
    public PropertyValuesHolder[] g(String str) {
        if (j(str)) {
            return b(this.propertyValues.get(str));
        }
        throw new IllegalArgumentException();
    }

    public i h(String str) {
        if (k(str)) {
            return this.timings.get(str);
        }
        throw new IllegalArgumentException();
    }
}
