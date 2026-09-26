package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import com.narvii.chat.input.MentionedEditText;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Transition implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<TransitionValues> mEndValuesList;
    private EpicenterCallback mEpicenterCallback;
    private ArrayMap<String, String> mNameOverrides;
    TransitionPropagation mPropagation;
    private ArrayList<TransitionValues> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final PathMotion STRAIGHT_PATH_MOTION = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        public Path a(float f, float f6, float f7, float f10) {
            Path path = new Path();
            path.moveTo(f, f6);
            path.lineTo(f7, f10);
            return path;
        }
    };
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
    private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
    TransitionSet mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<TransitionListener> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private PathMotion mPathMotion = STRAIGHT_PATH_MOTION;

    public static abstract class EpicenterCallback {
        public abstract Rect a(@NonNull Transition transition);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface MatchOrder {
    }

    public interface TransitionListener {
        void a(@NonNull Transition transition);

        void b(@NonNull Transition transition);

        void c(@NonNull Transition transition);

        void d(@NonNull Transition transition);

        void e(@NonNull Transition transition);
    }

    public Transition() {
    }

    private static boolean I(int i10) {
        return i10 >= 1 && i10 <= 4;
    }

    private void d(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i10 = 0; i10 < arrayMap.size(); i10++) {
            TransitionValues transitionValuesP = arrayMap.p(i10);
            if (J(transitionValuesP.view)) {
                this.mStartValuesList.add(transitionValuesP);
                this.mEndValuesList.add(null);
            }
        }
        for (int i11 = 0; i11 < arrayMap2.size(); i11++) {
            TransitionValues transitionValuesP2 = arrayMap2.p(i11);
            if (J(transitionValuesP2.view)) {
                this.mEndValuesList.add(transitionValuesP2);
                this.mStartValuesList.add(null);
            }
        }
    }

    public long A() {
        return this.mStartDelay;
    }

    @NonNull
    public List<Integer> B() {
        return this.mTargetIds;
    }

    @Nullable
    public List<String> C() {
        return this.mTargetNames;
    }

    @Nullable
    public List<Class<?>> D() {
        return this.mTargetTypes;
    }

    @NonNull
    public List<View> E() {
        return this.mTargets;
    }

    @Nullable
    public String[] F() {
        return null;
    }

    public boolean H(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return false;
        }
        String[] strArrF = F();
        if (strArrF == null) {
            Iterator<String> it = transitionValues.values.keySet().iterator();
            while (it.hasNext()) {
                if (K(transitionValues, transitionValues2, it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrF) {
            if (!K(transitionValues, transitionValues2, str)) {
            }
        }
        return false;
        return true;
    }

    @NonNull
    public Transition Y(long j6) {
        this.mDuration = j6;
        return this;
    }

    public void Z(@Nullable EpicenterCallback epicenterCallback) {
        this.mEpicenterCallback = epicenterCallback;
    }

    @NonNull
    public Transition a0(@Nullable TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void c0(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = pathMotion;
        }
    }

    public void d0(@Nullable TransitionPropagation transitionPropagation) {
        this.mPropagation = transitionPropagation;
    }

    @NonNull
    public Transition e0(long j6) {
        this.mStartDelay = j6;
        return this;
    }

    public abstract void h(@NonNull TransitionValues transitionValues);

    public abstract void k(@NonNull TransitionValues transitionValues);

    @Override // 
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList<>();
            transition.mStartValues = new TransitionValuesMaps();
            transition.mEndValues = new TransitionValuesMaps();
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Nullable
    public Animator o(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    public long r() {
        return this.mDuration;
    }

    @Nullable
    public EpicenterCallback t() {
        return this.mEpicenterCallback;
    }

    @Nullable
    public TimeInterpolator u() {
        return this.mInterpolator;
    }

    @NonNull
    public String w() {
        return this.mName;
    }

    @NonNull
    public PathMotion x() {
        return this.mPathMotion;
    }

    @Nullable
    public TransitionPropagation y() {
        return this.mPropagation;
    }

    private static class AnimationInfo {
        String mName;
        Transition mTransition;
        TransitionValues mValues;
        View mView;
        WindowIdImpl mWindowId;

        AnimationInfo(View view, String str, Transition transition, WindowIdImpl windowIdImpl, TransitionValues transitionValues) {
            this.mView = view;
            this.mName = str;
            this.mValues = transitionValues;
            this.mWindowId = windowIdImpl;
            this.mTransition = transition;
        }
    }

    private static class ArrayListManager {
        private ArrayListManager() {
        }
    }

    private static boolean K(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void P(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.mViewValues);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.mViewValues);
        int i10 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i10 >= iArr.length) {
                d(arrayMap, arrayMap2);
                return;
            }
            int i11 = iArr[i10];
            if (i11 == 1) {
                M(arrayMap, arrayMap2);
            } else if (i11 == 2) {
                O(arrayMap, arrayMap2, transitionValuesMaps.mNameValues, transitionValuesMaps2.mNameValues);
            } else if (i11 == 3) {
                L(arrayMap, arrayMap2, transitionValuesMaps.mIdValues, transitionValuesMaps2.mIdValues);
            } else if (i11 == 4) {
                N(arrayMap, arrayMap2, transitionValuesMaps.mItemIdValues, transitionValuesMaps2.mItemIdValues);
            }
            i10++;
        }
    }

    private static int[] Q(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(strTrim)) {
                iArr[i10] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(strTrim)) {
                iArr[i10] = 1;
            } else if ("name".equalsIgnoreCase(strTrim)) {
                iArr[i10] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i10] = 4;
            } else {
                if (!strTrim.isEmpty()) {
                    throw new InflateException("Unknown match type in matchOrder: '" + strTrim + "'");
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                i10--;
                iArr = iArr2;
            }
            i10++;
        }
        return iArr;
    }

    private void W(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    Transition.this.mCurrentAnimators.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Transition.this.mCurrentAnimators.add(animator2);
                }
            });
            g(animator);
        }
    }

    private static void e(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.mViewValues.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (transitionValuesMaps.mIdValues.indexOfKey(id) >= 0) {
                transitionValuesMaps.mIdValues.put(id, null);
            } else {
                transitionValuesMaps.mIdValues.put(id, view);
            }
        }
        String strN = ViewCompat.N(view);
        if (strN != null) {
            if (transitionValuesMaps.mNameValues.containsKey(strN)) {
                transitionValuesMaps.mNameValues.put(strN, null);
            } else {
                transitionValuesMaps.mNameValues.put(strN, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.mItemIdValues.j(itemIdAtPosition) < 0) {
                    ViewCompat.E0(view, true);
                    transitionValuesMaps.mItemIdValues.m(itemIdAtPosition, view);
                    return;
                }
                View viewH = transitionValuesMaps.mItemIdValues.h(itemIdAtPosition);
                if (viewH != null) {
                    ViewCompat.E0(viewH, false);
                    transitionValuesMaps.mItemIdValues.m(itemIdAtPosition, null);
                }
            }
        }
    }

    private static boolean f(int[] iArr, int i10) {
        int i11 = iArr[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    private void i(View view, boolean z6) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z6) {
                        k(transitionValues);
                    } else {
                        h(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    j(transitionValues);
                    if (z6) {
                        e(this.mStartValues, view, transitionValues);
                    } else {
                        e(this.mEndValues, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    if (this.mTargetTypeChildExcludes.get(i11).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                                i(viewGroup.getChildAt(i12), z6);
                            }
                        }
                    }
                }
            }
        }
    }

    private static ArrayMap<Animator, AnimationInfo> z() {
        ArrayMap<Animator, AnimationInfo> arrayMap = sRunningAnimators.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<Animator, AnimationInfo> arrayMap2 = new ArrayMap<>();
        sRunningAnimators.set(arrayMap2);
        return arrayMap2;
    }

    @Nullable
    public TransitionValues G(@NonNull View view, boolean z6) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.G(view, z6);
        }
        return (z6 ? this.mStartValues : this.mEndValues).mViewValues.get(view);
    }

    @RestrictTo
    public void R(View view) {
        if (this.mEnded) {
            return;
        }
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            AnimatorUtils.b(this.mCurrentAnimators.get(size));
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                ((TransitionListener) arrayList2.get(i10)).c(this);
            }
        }
        this.mPaused = true;
    }

    void S(ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        P(this.mStartValues, this.mEndValues);
        ArrayMap<Animator, AnimationInfo> arrayMapZ = z();
        int size = arrayMapZ.size();
        WindowIdImpl windowIdImplD = ViewUtils.d(viewGroup);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animatorL = arrayMapZ.l(i10);
            if (animatorL != null && (animationInfo = arrayMapZ.get(animatorL)) != null && animationInfo.mView != null && windowIdImplD.equals(animationInfo.mWindowId)) {
                TransitionValues transitionValues = animationInfo.mValues;
                View view = animationInfo.mView;
                TransitionValues transitionValuesG = G(view, true);
                TransitionValues transitionValuesV = v(view, true);
                if (transitionValuesG == null && transitionValuesV == null) {
                    transitionValuesV = this.mEndValues.mViewValues.get(view);
                }
                if ((transitionValuesG != null || transitionValuesV != null) && animationInfo.mTransition.H(transitionValues, transitionValuesV)) {
                    if (animatorL.isRunning() || animatorL.isStarted()) {
                        animatorL.cancel();
                    } else {
                        arrayMapZ.remove(animatorL);
                    }
                }
            }
        }
        p(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        X();
    }

    @NonNull
    public Transition T(@NonNull TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(transitionListener);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    @NonNull
    public Transition U(@NonNull View view) {
        this.mTargets.remove(view);
        return this;
    }

    @RestrictTo
    public void V(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
                    AnimatorUtils.c(this.mCurrentAnimators.get(size));
                }
                ArrayList<TransitionListener> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        ((TransitionListener) arrayList2.get(i10)).a(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    @NonNull
    public Transition b(@NonNull TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(transitionListener);
        return this;
    }

    public void b0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (!I(iArr[i10])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (f(iArr, i10)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    @NonNull
    public Transition c(@NonNull View view) {
        this.mTargets.add(view);
        return this;
    }

    @RestrictTo
    protected void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            ((TransitionListener) arrayList2.get(i10)).e(this);
        }
    }

    @RestrictTo
    protected void f0() {
        if (this.mNumInstances == 0) {
            ArrayList<TransitionListener> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((TransitionListener) arrayList2.get(i10)).b(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    @RestrictTo
    protected void g(Animator animator) {
        if (animator == null) {
            q();
            return;
        }
        if (r() >= 0) {
            animator.setDuration(r());
        }
        if (A() >= 0) {
            animator.setStartDelay(A() + animator.getStartDelay());
        }
        if (u() != null) {
            animator.setInterpolator(u());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.q();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    String g0(String str) {
        String str2 = str + getClass().getSimpleName() + MentionedEditText.DEFAULT_METION_TAG + Integer.toHexString(hashCode()) + ": ";
        if (this.mDuration != -1) {
            str2 = str2 + "dur(" + this.mDuration + ") ";
        }
        if (this.mStartDelay != -1) {
            str2 = str2 + "dly(" + this.mStartDelay + ") ";
        }
        if (this.mInterpolator != null) {
            str2 = str2 + "interp(" + this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                if (i10 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargetIds.get(i10);
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                if (i11 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargets.get(i11);
            }
        }
        return str3 + ")";
    }

    void j(TransitionValues transitionValues) {
        String[] strArrB;
        if (this.mPropagation == null || transitionValues.values.isEmpty() || (strArrB = this.mPropagation.b()) == null) {
            return;
        }
        for (String str : strArrB) {
            if (!transitionValues.values.containsKey(str)) {
                this.mPropagation.a(transitionValues);
                return;
            }
        }
    }

    void m(boolean z6) {
        if (z6) {
            this.mStartValues.mViewValues.clear();
            this.mStartValues.mIdValues.clear();
            this.mStartValues.mItemIdValues.c();
        } else {
            this.mEndValues.mViewValues.clear();
            this.mEndValues.mIdValues.clear();
            this.mEndValues.mItemIdValues.c();
        }
    }

    @RestrictTo
    protected void p(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        Animator animatorO;
        int i10;
        View view;
        Animator animator;
        TransitionValues transitionValues;
        Animator animator2;
        TransitionValues transitionValues2;
        ArrayMap<Animator, AnimationInfo> arrayMapZ = z();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i11 = 0;
        while (i11 < size) {
            TransitionValues transitionValues3 = arrayList.get(i11);
            TransitionValues transitionValues4 = arrayList2.get(i11);
            if (transitionValues3 != null && !transitionValues3.mTargetedTransitions.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.mTargetedTransitions.contains(this)) {
                transitionValues4 = null;
            }
            if (!(transitionValues3 == null && transitionValues4 == null) && ((transitionValues3 == null || transitionValues4 == null || H(transitionValues3, transitionValues4)) && (animatorO = o(viewGroup, transitionValues3, transitionValues4)) != null)) {
                if (transitionValues4 != null) {
                    view = transitionValues4.view;
                    String[] strArrF = F();
                    if (strArrF != null && strArrF.length > 0) {
                        transitionValues2 = new TransitionValues(view);
                        i10 = size;
                        TransitionValues transitionValues5 = transitionValuesMaps2.mViewValues.get(view);
                        if (transitionValues5 != null) {
                            int i12 = 0;
                            while (i12 < strArrF.length) {
                                Map<String, Object> map = transitionValues2.values;
                                String str = strArrF[i12];
                                map.put(str, transitionValues5.values.get(str));
                                i12++;
                                strArrF = strArrF;
                            }
                        }
                        int size2 = arrayMapZ.size();
                        int i13 = 0;
                        while (true) {
                            if (i13 >= size2) {
                                animator2 = animatorO;
                                break;
                            }
                            AnimationInfo animationInfo = arrayMapZ.get(arrayMapZ.l(i13));
                            if (animationInfo.mValues != null && animationInfo.mView == view && animationInfo.mName.equals(w()) && animationInfo.mValues.equals(transitionValues2)) {
                                animator2 = null;
                                break;
                            }
                            i13++;
                        }
                    } else {
                        i10 = size;
                        animator2 = animatorO;
                        transitionValues2 = null;
                    }
                    animator = animator2;
                    transitionValues = transitionValues2;
                } else {
                    i10 = size;
                    view = transitionValues3.view;
                    animator = animatorO;
                    transitionValues = null;
                }
                if (animator != null) {
                    TransitionPropagation transitionPropagation = this.mPropagation;
                    if (transitionPropagation != null) {
                        long jC = transitionPropagation.c(viewGroup, this, transitionValues3, transitionValues4);
                        sparseIntArray.put(this.mAnimators.size(), (int) jC);
                        jMin = Math.min(jC, jMin);
                    }
                    arrayMapZ.put(animator, new AnimationInfo(view, w(), this, ViewUtils.d(viewGroup), transitionValues));
                    this.mAnimators.add(animator);
                    jMin = jMin;
                }
            } else {
                i10 = size;
            }
            i11++;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i14 = 0; i14 < sparseIntArray.size(); i14++) {
                Animator animator3 = this.mAnimators.get(sparseIntArray.keyAt(i14));
                animator3.setStartDelay((((long) sparseIntArray.valueAt(i14)) - jMin) + animator3.getStartDelay());
            }
        }
    }

    @RestrictTo
    protected void q() {
        int i10 = this.mNumInstances - 1;
        this.mNumInstances = i10;
        if (i10 == 0) {
            ArrayList<TransitionListener> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((TransitionListener) arrayList2.get(i11)).d(this);
                }
            }
            for (int i12 = 0; i12 < this.mStartValues.mItemIdValues.p(); i12++) {
                View viewQ = this.mStartValues.mItemIdValues.q(i12);
                if (viewQ != null) {
                    ViewCompat.E0(viewQ, false);
                }
            }
            for (int i13 = 0; i13 < this.mEndValues.mItemIdValues.p(); i13++) {
                View viewQ2 = this.mEndValues.mItemIdValues.q(i13);
                if (viewQ2 != null) {
                    ViewCompat.E0(viewQ2, false);
                }
            }
            this.mEnded = true;
        }
    }

    @Nullable
    public Rect s() {
        EpicenterCallback epicenterCallback = this.mEpicenterCallback;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.a(this);
    }

    public String toString() {
        return g0("");
    }

    TransitionValues v(View view, boolean z6) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.v(view, z6);
        }
        ArrayList<TransitionValues> arrayList = z6 ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            }
            TransitionValues transitionValues = arrayList.get(i10);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                break;
            }
            i10++;
        }
        if (i10 >= 0) {
            return (z6 ? this.mEndValuesList : this.mStartValuesList).get(i10);
        }
        return null;
    }

    private void L(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View viewValueAt = sparseArray.valueAt(i10);
            if (viewValueAt != null && J(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i10))) != null && J(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void M(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues transitionValuesRemove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View viewL = arrayMap.l(size);
            if (viewL != null && J(viewL) && (transitionValuesRemove = arrayMap2.remove(viewL)) != null && J(transitionValuesRemove.view)) {
                this.mStartValuesList.add(arrayMap.n(size));
                this.mEndValuesList.add(transitionValuesRemove);
            }
        }
    }

    private void N(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View viewH;
        int iP = longSparseArray.p();
        for (int i10 = 0; i10 < iP; i10++) {
            View viewQ = longSparseArray.q(i10);
            if (viewQ != null && J(viewQ) && (viewH = longSparseArray2.h(longSparseArray.l(i10))) != null && J(viewH)) {
                TransitionValues transitionValues = arrayMap.get(viewQ);
                TransitionValues transitionValues2 = arrayMap2.get(viewH);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewQ);
                    arrayMap2.remove(viewH);
                }
            }
        }
    }

    private void O(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View viewP = arrayMap3.p(i10);
            if (viewP != null && J(viewP) && (view = arrayMap4.get(arrayMap3.l(i10))) != null && J(view)) {
                TransitionValues transitionValues = arrayMap.get(viewP);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewP);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    boolean J(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && ViewCompat.N(view) != null && this.mTargetNameExcludes.contains(ViewCompat.N(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.N(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i11 = 0; i11 < this.mTargetTypes.size(); i11++) {
                if (this.mTargetTypes.get(i11).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    @RestrictTo
    protected void X() {
        f0();
        ArrayMap<Animator, AnimationInfo> arrayMapZ = z();
        for (Animator animator : this.mAnimators) {
            if (arrayMapZ.containsKey(animator)) {
                f0();
                W(animator, arrayMapZ);
            }
        }
        this.mAnimators.clear();
        q();
    }

    void l(ViewGroup viewGroup, boolean z6) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        ArrayMap<String, String> arrayMap;
        m(z6);
        if ((this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) || (((arrayList = this.mTargetNames) != null && !arrayList.isEmpty()) || ((arrayList2 = this.mTargetTypes) != null && !arrayList2.isEmpty()))) {
            i(viewGroup, z6);
        } else {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i10).intValue());
                if (viewFindViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(viewFindViewById);
                    if (z6) {
                        k(transitionValues);
                    } else {
                        h(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    j(transitionValues);
                    if (z6) {
                        e(this.mStartValues, viewFindViewById, transitionValues);
                    } else {
                        e(this.mEndValues, viewFindViewById, transitionValues);
                    }
                }
            }
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                View view = this.mTargets.get(i11);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z6) {
                    k(transitionValues2);
                } else {
                    h(transitionValues2);
                }
                transitionValues2.mTargetedTransitions.add(this);
                j(transitionValues2);
                if (z6) {
                    e(this.mStartValues, view, transitionValues2);
                } else {
                    e(this.mEndValues, view, transitionValues2);
                }
            }
        }
        if (!z6 && (arrayMap = this.mNameOverrides) != null) {
            int size = arrayMap.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                arrayList3.add(this.mStartValues.mNameValues.remove(this.mNameOverrides.l(i12)));
            }
            for (int i13 = 0; i13 < size; i13++) {
                View view2 = (View) arrayList3.get(i13);
                if (view2 != null) {
                    this.mStartValues.mNameValues.put(this.mNameOverrides.p(i13), view2);
                }
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long jK = TypedArrayUtils.k(typedArrayObtainStyledAttributes, xmlResourceParser, TypedValues.TransitionType.S_DURATION, 1, -1);
        if (jK >= 0) {
            Y(jK);
        }
        long jK2 = TypedArrayUtils.k(typedArrayObtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (jK2 > 0) {
            e0(jK2);
        }
        int iL = TypedArrayUtils.l(typedArrayObtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (iL > 0) {
            a0(AnimationUtils.loadInterpolator(context, iL));
        }
        String strM = TypedArrayUtils.m(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (strM != null) {
            b0(Q(strM));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
