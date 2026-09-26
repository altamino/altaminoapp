package androidx.databinding;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.library.R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {
    private static final int BINDING_NUMBER_START = 8;
    public static final String BINDING_TAG_PREFIX = "binding_";
    private static final int HALTED = 2;
    private static final int REBIND = 1;
    private static final int REBOUND = 3;
    protected final DataBindingComponent mBindingComponent;
    private Choreographer mChoreographer;
    private ViewDataBinding mContainingBinding;
    private final Choreographer.FrameCallback mFrameCallback;
    private boolean mInLiveDataRegisterObserver;

    @RestrictTo
    protected boolean mInStateFlowRegisterObserver;
    private boolean mIsExecutingPendingBindings;
    private LifecycleOwner mLifecycleOwner;
    private WeakListener[] mLocalFieldObservers;
    private OnStartListener mOnStartListener;
    private boolean mPendingRebind;
    private CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> mRebindCallbacks;
    private boolean mRebindHalted;
    private final Runnable mRebindRunnable;
    private final View mRoot;
    private Handler mUIThreadHandler;
    static int SDK_INT = Build.VERSION.SDK_INT;
    private static final boolean USE_CHOREOGRAPHER = true;
    private static final CreateWeakListener CREATE_PROPERTY_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.1
        @Override // androidx.databinding.CreateWeakListener
        public WeakListener a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new WeakPropertyListener(viewDataBinding, i10, referenceQueue).g();
        }
    };
    private static final CreateWeakListener CREATE_LIST_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.2
        @Override // androidx.databinding.CreateWeakListener
        public WeakListener a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new WeakListListener(viewDataBinding, i10, referenceQueue).j();
        }
    };
    private static final CreateWeakListener CREATE_MAP_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.3
        @Override // androidx.databinding.CreateWeakListener
        public WeakListener a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new WeakMapListener(viewDataBinding, i10, referenceQueue).f();
        }
    };
    private static final CreateWeakListener CREATE_LIVE_DATA_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.4
        @Override // androidx.databinding.CreateWeakListener
        public WeakListener a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new LiveDataListener(viewDataBinding, i10, referenceQueue).f();
        }
    };
    private static final CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> REBIND_NOTIFIER = new CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void>() { // from class: androidx.databinding.ViewDataBinding.5
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(OnRebindCallback onRebindCallback, ViewDataBinding viewDataBinding, int i10, Void r5) {
            if (i10 == 1) {
                if (onRebindCallback.c(viewDataBinding)) {
                    return;
                }
                viewDataBinding.mRebindHalted = true;
            } else if (i10 == 2) {
                onRebindCallback.b(viewDataBinding);
            } else {
                if (i10 != 3) {
                    return;
                }
                onRebindCallback.a(viewDataBinding);
            }
        }
    };
    private static final ReferenceQueue<ViewDataBinding> sReferenceQueue = new ReferenceQueue<>();
    private static final View.OnAttachStateChangeListener ROOT_REATTACHED_LISTENER = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.getBinding(view).mRebindRunnable.run();
            view.removeOnAttachStateChangeListener(this);
        }
    };

    protected static class IncludedLayouts {
        public final int[][] indexes;
        public final int[][] layoutIds;
        public final String[][] layouts;

        public void a(int i10, String[] strArr, int[] iArr, int[] iArr2) {
            this.layouts[i10] = strArr;
            this.indexes[i10] = iArr;
            this.layoutIds[i10] = iArr2;
        }

        public IncludedLayouts(int i10) {
            this.layouts = new String[i10][];
            this.indexes = new int[i10][];
            this.layoutIds = new int[i10][];
        }
    }

    private static class LiveDataListener implements Observer, ObservableReference<LiveData<?>> {

        @Nullable
        WeakReference<LifecycleOwner> mLifecycleOwnerRef = null;
        final WeakListener<LiveData<?>> mListener;

        public WeakListener<LiveData<?>> f() {
            return this.mListener;
        }

        @Nullable
        private LifecycleOwner e() {
            WeakReference<LifecycleOwner> weakReference = this.mLifecycleOwnerRef;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable Object obj) {
            ViewDataBinding viewDataBindingA = this.mListener.a();
            if (viewDataBindingA != null) {
                WeakListener<LiveData<?>> weakListener = this.mListener;
                viewDataBindingA.handleFieldChange(weakListener.mLocalFieldId, weakListener.b(), 0);
            }
        }

        public LiveDataListener(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.mListener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void d(LiveData<?> liveData) {
            LifecycleOwner lifecycleOwnerE = e();
            if (lifecycleOwnerE != null) {
                liveData.i(lifecycleOwnerE, this);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void b(@Nullable LifecycleOwner lifecycleOwner) {
            LifecycleOwner lifecycleOwnerE = e();
            LiveData<?> liveDataB = this.mListener.b();
            if (liveDataB != null) {
                if (lifecycleOwnerE != null) {
                    liveDataB.n(this);
                }
                if (lifecycleOwner != null) {
                    liveDataB.i(lifecycleOwner, this);
                }
            }
            if (lifecycleOwner != null) {
                this.mLifecycleOwnerRef = new WeakReference<>(lifecycleOwner);
            }
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void c(LiveData<?> liveData) {
            liveData.n(this);
        }
    }

    static class OnStartListener implements LifecycleObserver {
        final WeakReference<ViewDataBinding> mBinding;

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.mBinding = new WeakReference<>(viewDataBinding);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.mBinding.get();
            if (viewDataBinding != null) {
                viewDataBinding.executePendingBindings();
            }
        }
    }

    protected static abstract class PropertyChangedInverseListener extends Observable.OnPropertyChangedCallback implements InverseBindingListener {
        final int mPropertyId;

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void e(Observable observable, int i10) {
            if (i10 == this.mPropertyId || i10 == 0) {
                a();
            }
        }

        public PropertyChangedInverseListener(int i10) {
            this.mPropertyId = i10;
        }
    }

    private static class WeakListListener extends ObservableList.OnListChangedCallback implements ObservableReference<ObservableList> {
        final WeakListener<ObservableList> mListener;

        @Override // androidx.databinding.ObservableReference
        public void b(LifecycleOwner lifecycleOwner) {
        }

        public WeakListener<ObservableList> j() {
            return this.mListener;
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void a(ObservableList observableList) {
            ObservableList observableListB;
            ViewDataBinding viewDataBindingA = this.mListener.a();
            if (viewDataBindingA != null && (observableListB = this.mListener.b()) == observableList) {
                viewDataBindingA.handleFieldChange(this.mListener.mLocalFieldId, observableListB, 0);
            }
        }

        public WeakListListener(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.mListener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void e(ObservableList observableList, int i10, int i11) {
            a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void f(ObservableList observableList, int i10, int i11) {
            a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void g(ObservableList observableList, int i10, int i11, int i12) {
            a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void h(ObservableList observableList, int i10, int i11) {
            a(observableList);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void d(ObservableList observableList) {
            observableList.k(this);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void c(ObservableList observableList) {
            observableList.l(this);
        }
    }

    private static class WeakMapListener extends ObservableMap.OnMapChangedCallback implements ObservableReference<ObservableMap> {
        final WeakListener<ObservableMap> mListener;

        @Override // androidx.databinding.ObservableReference
        public void b(LifecycleOwner lifecycleOwner) {
        }

        public WeakListener<ObservableMap> f() {
            return this.mListener;
        }

        @Override // androidx.databinding.ObservableMap.OnMapChangedCallback
        public void a(ObservableMap observableMap, Object obj) {
            ViewDataBinding viewDataBindingA = this.mListener.a();
            if (viewDataBindingA == null || observableMap != this.mListener.b()) {
                return;
            }
            viewDataBindingA.handleFieldChange(this.mListener.mLocalFieldId, observableMap, 0);
        }

        public WeakMapListener(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.mListener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void d(ObservableMap observableMap) {
            observableMap.b(this);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void c(ObservableMap observableMap) {
            observableMap.c(this);
        }
    }

    private static class WeakPropertyListener extends Observable.OnPropertyChangedCallback implements ObservableReference<Observable> {
        final WeakListener<Observable> mListener;

        @Override // androidx.databinding.ObservableReference
        public void b(LifecycleOwner lifecycleOwner) {
        }

        public WeakListener<Observable> g() {
            return this.mListener;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void e(Observable observable, int i10) {
            ViewDataBinding viewDataBindingA = this.mListener.a();
            if (viewDataBindingA != null && this.mListener.b() == observable) {
                viewDataBindingA.handleFieldChange(this.mListener.mLocalFieldId, observable, i10);
            }
        }

        public WeakPropertyListener(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.mListener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(Observable observable) {
            observable.addOnPropertyChangedCallback(this);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void c(Observable observable) {
            observable.removeOnPropertyChangedCallback(this);
        }
    }

    protected ViewDataBinding(DataBindingComponent dataBindingComponent, View view, int i10) {
        this.mRebindRunnable = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.mPendingRebind = false;
                }
                ViewDataBinding.processReferenceQueue();
                if (ViewDataBinding.this.mRoot.isAttachedToWindow()) {
                    ViewDataBinding.this.executePendingBindings();
                } else {
                    ViewDataBinding.this.mRoot.removeOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
                    ViewDataBinding.this.mRoot.addOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
                }
            }
        };
        this.mPendingRebind = false;
        this.mRebindHalted = false;
        this.mBindingComponent = dataBindingComponent;
        this.mLocalFieldObservers = new WeakListener[i10];
        this.mRoot = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (USE_CHOREOGRAPHER) {
            this.mChoreographer = Choreographer.getInstance();
            this.mFrameCallback = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j6) {
                    ViewDataBinding.this.mRebindRunnable.run();
                }
            };
        } else {
            this.mFrameCallback = null;
            this.mUIThreadHandler = new Handler(Looper.myLooper());
        }
    }

    public static int getBuildSdkInt() {
        return SDK_INT;
    }

    protected static <T> T getFromArray(T[] tArr, int i10) {
        if (tArr == null || i10 < 0 || i10 >= tArr.length) {
            return null;
        }
        return tArr[i10];
    }

    protected static <T> T getFromList(List<T> list, int i10) {
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return null;
        }
        return list.get(i10);
    }

    protected static Object[] mapBindings(DataBindingComponent dataBindingComponent, View view, int i10, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i10];
        mapBindings(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        return objArr;
    }

    protected static boolean parse(String str, boolean z6) {
        return str == null ? z6 : Boolean.parseBoolean(str);
    }

    protected static int safeUnbox(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    protected static <T> void setTo(T[] tArr, int i10, T t5) {
        if (tArr == null || i10 < 0 || i10 >= tArr.length) {
            return;
        }
        tArr[i10] = t5;
    }

    protected abstract void executeBindings();

    @Nullable
    public LifecycleOwner getLifecycleOwner() {
        return this.mLifecycleOwner;
    }

    @NonNull
    public View getRoot() {
        return this.mRoot;
    }

    public abstract boolean hasPendingBindings();

    public abstract void invalidateAll();

    protected abstract boolean onFieldChange(int i10, Object obj, int i11);

    protected void setRootTag(View view) {
        view.setTag(R.id.dataBinding, this);
    }

    public abstract boolean setVariable(int i10, @Nullable Object obj);

    protected boolean updateLiveDataRegistration(int i10, LiveData<?> liveData) {
        this.mInLiveDataRegisterObserver = true;
        try {
            return updateRegistration(i10, liveData, CREATE_LIVE_DATA_LISTENER);
        } finally {
            this.mInLiveDataRegisterObserver = false;
        }
    }

    @RestrictTo
    protected boolean updateRegistration(int i10, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return unregisterFrom(i10);
        }
        WeakListener weakListener = this.mLocalFieldObservers[i10];
        if (weakListener == null) {
            registerTo(i10, obj, createWeakListener);
            return true;
        }
        if (weakListener.b() == obj) {
            return false;
        }
        unregisterFrom(i10);
        registerTo(i10, obj, createWeakListener);
        return true;
    }

    private static DataBindingComponent checkAndCastToBindingComponent(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    private void executeBindingsInternal() {
        if (this.mIsExecutingPendingBindings) {
            requestRebind();
            return;
        }
        if (hasPendingBindings()) {
            this.mIsExecutingPendingBindings = true;
            this.mRebindHalted = false;
            CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.mRebindCallbacks;
            if (callbackRegistry != null) {
                callbackRegistry.e(this, 1, null);
                if (this.mRebindHalted) {
                    this.mRebindCallbacks.e(this, 2, null);
                }
            }
            if (!this.mRebindHalted) {
                executeBindings();
                CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry2 = this.mRebindCallbacks;
                if (callbackRegistry2 != null) {
                    callbackRegistry2.e(this, 3, null);
                }
            }
            this.mIsExecutingPendingBindings = false;
        }
    }

    private static int findIncludeIndex(String str, int i10, IncludedLayouts includedLayouts, int i11) {
        CharSequence charSequenceSubSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = includedLayouts.layouts[i11];
        int length = strArr.length;
        while (i10 < length) {
            if (TextUtils.equals(charSequenceSubSequence, strArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    static ViewDataBinding getBinding(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(R.id.dataBinding);
        }
        return null;
    }

    protected static <K, T> T getFrom(Map<K, T> map, K k) {
        if (map == null) {
            return null;
        }
        return map.get(k);
    }

    protected static byte parse(String str, byte b7) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b7;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processReferenceQueue() {
        while (true) {
            Reference<? extends ViewDataBinding> referencePoll = sReferenceQueue.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof WeakListener) {
                ((WeakListener) referencePoll).e();
            }
        }
    }

    protected static long safeUnbox(Long l) {
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    protected static void setBindingInverseListener(ViewDataBinding viewDataBinding, InverseBindingListener inverseBindingListener, PropertyChangedInverseListener propertyChangedInverseListener) {
        if (inverseBindingListener != propertyChangedInverseListener) {
            if (inverseBindingListener != null) {
                viewDataBinding.removeOnPropertyChangedCallback((PropertyChangedInverseListener) inverseBindingListener);
            }
            if (propertyChangedInverseListener != null) {
                viewDataBinding.addOnPropertyChangedCallback(propertyChangedInverseListener);
            }
        }
    }

    public void addOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        if (this.mRebindCallbacks == null) {
            this.mRebindCallbacks = new CallbackRegistry<>(REBIND_NOTIFIER);
        }
        this.mRebindCallbacks.b(onRebindCallback);
    }

    protected void ensureBindingComponentIsNotNull(Class<?> cls) {
        if (this.mBindingComponent != null) {
            return;
        }
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    public void executePendingBindings() {
        ViewDataBinding viewDataBinding = this.mContainingBinding;
        if (viewDataBinding == null) {
            executeBindingsInternal();
        } else {
            viewDataBinding.executePendingBindings();
        }
    }

    protected Object getObservedField(int i10) {
        WeakListener weakListener = this.mLocalFieldObservers[i10];
        if (weakListener == null) {
            return null;
        }
        return weakListener.b();
    }

    @RestrictTo
    protected void handleFieldChange(int i10, Object obj, int i11) {
        if (this.mInLiveDataRegisterObserver || this.mInStateFlowRegisterObserver || !onFieldChange(i10, obj, i11)) {
            return;
        }
        requestRebind();
    }

    protected void registerTo(int i10, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return;
        }
        WeakListener weakListenerA = this.mLocalFieldObservers[i10];
        if (weakListenerA == null) {
            weakListenerA = createWeakListener.a(this, i10, sReferenceQueue);
            this.mLocalFieldObservers[i10] = weakListenerA;
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            if (lifecycleOwner != null) {
                weakListenerA.c(lifecycleOwner);
            }
        }
        weakListenerA.d(obj);
    }

    public void removeOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.mRebindCallbacks;
        if (callbackRegistry != null) {
            callbackRegistry.j(onRebindCallback);
        }
    }

    protected void requestRebind() {
        ViewDataBinding viewDataBinding = this.mContainingBinding;
        if (viewDataBinding != null) {
            viewDataBinding.requestRebind();
            return;
        }
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        if (lifecycleOwner == null || lifecycleOwner.getLifecycle().b().b(Lifecycle.State.STARTED)) {
            synchronized (this) {
                try {
                    if (this.mPendingRebind) {
                        return;
                    }
                    this.mPendingRebind = true;
                    if (USE_CHOREOGRAPHER) {
                        this.mChoreographer.postFrameCallback(this.mFrameCallback);
                    } else {
                        this.mUIThreadHandler.post(this.mRebindRunnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    protected void setContainedBinding(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.mContainingBinding = this;
        }
    }

    @MainThread
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner instanceof Fragment) {
            Log.w("DataBinding", "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment's view lifecycle");
        }
        LifecycleOwner lifecycleOwner2 = this.mLifecycleOwner;
        if (lifecycleOwner2 == lifecycleOwner) {
            return;
        }
        if (lifecycleOwner2 != null) {
            lifecycleOwner2.getLifecycle().d(this.mOnStartListener);
        }
        this.mLifecycleOwner = lifecycleOwner;
        if (lifecycleOwner != null) {
            if (this.mOnStartListener == null) {
                this.mOnStartListener = new OnStartListener();
            }
            lifecycleOwner.getLifecycle().a(this.mOnStartListener);
        }
        for (WeakListener weakListener : this.mLocalFieldObservers) {
            if (weakListener != null) {
                weakListener.c(lifecycleOwner);
            }
        }
    }

    protected void setRootTag(View[] viewArr) {
        for (View view : viewArr) {
            view.setTag(R.id.dataBinding, this);
        }
    }

    public void unbind() {
        for (WeakListener weakListener : this.mLocalFieldObservers) {
            if (weakListener != null) {
                weakListener.e();
            }
        }
    }

    protected boolean unregisterFrom(int i10) {
        WeakListener weakListener = this.mLocalFieldObservers[i10];
        if (weakListener != null) {
            return weakListener.e();
        }
        return false;
    }

    protected static ViewDataBinding bind(Object obj, View view, int i10) {
        return DataBindingUtil.a(checkAndCastToBindingComponent(obj), view, i10);
    }

    protected static void executeBindingsOn(ViewDataBinding viewDataBinding) {
        viewDataBinding.executeBindingsInternal();
    }

    private static int findLastMatching(ViewGroup viewGroup, int i10) {
        String str;
        String str2 = (String) viewGroup.getChildAt(i10).getTag();
        String strSubstring = str2.substring(0, str2.length() - 1);
        int length = strSubstring.length();
        int childCount = viewGroup.getChildCount();
        for (int i11 = i10 + 1; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt.getTag() instanceof String) {
                str = (String) childAt.getTag();
            } else {
                str = null;
            }
            if (str != null && str.startsWith(strSubstring)) {
                if (str.length() == str2.length() && str.charAt(str.length() - 1) == '0') {
                    return i10;
                }
                if (isNumeric(str, length)) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    protected static int getColorFromResource(View view, int i10) {
        return view.getContext().getColor(i10);
    }

    protected static ColorStateList getColorStateListFromResource(View view, int i10) {
        return view.getContext().getColorStateList(i10);
    }

    protected static Drawable getDrawableFromResource(View view, int i10) {
        return view.getContext().getDrawable(i10);
    }

    protected static boolean getFromArray(boolean[] zArr, int i10) {
        if (zArr == null || i10 < 0 || i10 >= zArr.length) {
            return false;
        }
        return zArr[i10];
    }

    protected static <T> T getFromList(SparseArray<T> sparseArray, int i10) {
        if (sparseArray == null || i10 < 0) {
            return null;
        }
        return sparseArray.get(i10);
    }

    @RestrictTo
    protected static <T extends ViewDataBinding> T inflateInternal(@NonNull LayoutInflater layoutInflater, int i10, @Nullable ViewGroup viewGroup, boolean z6, @Nullable Object obj) {
        return (T) DataBindingUtil.e(layoutInflater, i10, viewGroup, z6, checkAndCastToBindingComponent(obj));
    }

    private static boolean isNumeric(String str, int i10) {
        int length = str.length();
        if (length == i10) {
            return false;
        }
        while (i10 < length) {
            if (!Character.isDigit(str.charAt(i10))) {
                return false;
            }
            i10++;
        }
        return true;
    }

    protected static Object[] mapBindings(DataBindingComponent dataBindingComponent, View[] viewArr, int i10, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i10];
        for (View view : viewArr) {
            mapBindings(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        }
        return objArr;
    }

    protected static short parse(String str, short s) {
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s;
        }
    }

    private static int parseTagInt(String str, int i10) {
        int length = str.length();
        int iCharAt = 0;
        while (i10 < length) {
            iCharAt = (iCharAt * 10) + (str.charAt(i10) - '0');
            i10++;
        }
        return iCharAt;
    }

    protected static short safeUnbox(Short sh) {
        if (sh == null) {
            return (short) 0;
        }
        return sh.shortValue();
    }

    protected static void setTo(boolean[] zArr, int i10, boolean z6) {
        if (zArr == null || i10 < 0 || i10 >= zArr.length) {
            return;
        }
        zArr[i10] = z6;
    }

    void forceExecuteBindings() {
        executeBindings();
    }

    @TargetApi(16)
    protected static <T> T getFromList(LongSparseArray<T> longSparseArray, int i10) {
        if (longSparseArray == null || i10 < 0) {
            return null;
        }
        return longSparseArray.get(i10);
    }

    protected static int parse(String str, int i10) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    protected static byte safeUnbox(Byte b7) {
        if (b7 == null) {
            return (byte) 0;
        }
        return b7.byteValue();
    }

    protected static byte getFromArray(byte[] bArr, int i10) {
        if (bArr == null || i10 < 0 || i10 >= bArr.length) {
            return (byte) 0;
        }
        return bArr[i10];
    }

    protected static <T> T getFromList(androidx.collection.LongSparseArray<T> longSparseArray, int i10) {
        if (longSparseArray == null || i10 < 0) {
            return null;
        }
        return longSparseArray.h(i10);
    }

    protected static long parse(String str, long j6) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j6;
        }
    }

    protected static char safeUnbox(Character ch) {
        if (ch == null) {
            return (char) 0;
        }
        return ch.charValue();
    }

    protected static void setTo(byte[] bArr, int i10, byte b7) {
        if (bArr == null || i10 < 0 || i10 >= bArr.length) {
            return;
        }
        bArr[i10] = b7;
    }

    protected static boolean getFromList(SparseBooleanArray sparseBooleanArray, int i10) {
        if (sparseBooleanArray == null || i10 < 0) {
            return false;
        }
        return sparseBooleanArray.get(i10);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    /* JADX WARN: Code duplicated, block: B:68:0x0101  */
    private static void mapBindings(DataBindingComponent dataBindingComponent, View view, Object[] objArr, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray, boolean z6) {
        int i10;
        boolean z10;
        int i11;
        int i12;
        boolean z11;
        int iFindIncludeIndex;
        int id;
        int i13;
        int tagInt;
        if (getBinding(view) != null) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        boolean z12 = true;
        if (z6 && str != null && str.startsWith("layout")) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf > 0) {
                int i14 = iLastIndexOf + 1;
                if (isNumeric(str, i14)) {
                    tagInt = parseTagInt(str, i14);
                    if (objArr[tagInt] == null) {
                        objArr[tagInt] = view;
                    }
                    if (includedLayouts == null) {
                        tagInt = -1;
                    }
                    z10 = true;
                } else {
                    tagInt = -1;
                    z10 = false;
                }
            } else {
                tagInt = -1;
                z10 = false;
            }
            i10 = tagInt;
        } else if (str == null || !str.startsWith(BINDING_TAG_PREFIX)) {
            i10 = -1;
            z10 = false;
        } else {
            int tagInt2 = parseTagInt(str, BINDING_NUMBER_START);
            if (objArr[tagInt2] == null) {
                objArr[tagInt2] = view;
            }
            if (includedLayouts == null) {
                tagInt2 = -1;
            }
            i10 = tagInt2;
            z10 = true;
        }
        if (!z10 && (id = view.getId()) > 0 && sparseIntArray != null && (i13 = sparseIntArray.get(id, -1)) >= 0 && objArr[i13] == null) {
            objArr[i13] = view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            int i15 = 0;
            int i16 = 0;
            while (i15 < childCount) {
                View childAt = viewGroup.getChildAt(i15);
                if (i10 < 0 || !(childAt.getTag() instanceof String)) {
                    i11 = i15;
                    i12 = i16;
                    z11 = false;
                } else {
                    String str2 = (String) childAt.getTag();
                    if (!str2.endsWith("_0") || !str2.startsWith("layout") || str2.indexOf(47) <= 0 || (iFindIncludeIndex = findIncludeIndex(str2, i16, includedLayouts, i10)) < 0) {
                        i11 = i15;
                        i12 = i16;
                        z11 = false;
                    } else {
                        int i17 = iFindIncludeIndex + 1;
                        int i18 = includedLayouts.indexes[i10][iFindIncludeIndex];
                        int i19 = includedLayouts.layoutIds[i10][iFindIncludeIndex];
                        int iFindLastMatching = findLastMatching(viewGroup, i15);
                        if (iFindLastMatching == i15) {
                            objArr[i18] = DataBindingUtil.a(dataBindingComponent, childAt, i19);
                            i11 = i15;
                            z11 = z12;
                            i12 = i17;
                        } else {
                            int i20 = iFindLastMatching - i15;
                            int i21 = i20 + 1;
                            View[] viewArr = new View[i21];
                            int i22 = 0;
                            while (i22 < i21) {
                                viewArr[i22] = viewGroup.getChildAt(i15 + i22);
                                i22++;
                                i17 = i17;
                            }
                            objArr[i18] = DataBindingUtil.b(dataBindingComponent, viewArr, i19);
                            i12 = i17;
                            i11 = i15 + i20;
                            z11 = true;
                        }
                    }
                }
                if (!z11) {
                    mapBindings(dataBindingComponent, childAt, objArr, includedLayouts, sparseIntArray, false);
                }
                int i23 = i12;
                z12 = true;
                i15 = i11 + 1;
                i16 = i23;
            }
        }
    }

    protected static float parse(String str, float f) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    protected static double safeUnbox(Double d) {
        return d == null ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : d.doubleValue();
    }

    protected static short getFromArray(short[] sArr, int i10) {
        if (sArr == null || i10 < 0 || i10 >= sArr.length) {
            return (short) 0;
        }
        return sArr[i10];
    }

    protected static int getFromList(SparseIntArray sparseIntArray, int i10) {
        if (sparseIntArray == null || i10 < 0) {
            return 0;
        }
        return sparseIntArray.get(i10);
    }

    protected static double parse(String str, double d) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    protected static float safeUnbox(Float f) {
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    protected static void setTo(short[] sArr, int i10, short s) {
        if (sArr == null || i10 < 0 || i10 >= sArr.length) {
            return;
        }
        sArr[i10] = s;
    }

    protected boolean updateRegistration(int i10, Observable observable) {
        return updateRegistration(i10, observable, CREATE_PROPERTY_LISTENER);
    }

    @TargetApi(18)
    protected static long getFromList(SparseLongArray sparseLongArray, int i10) {
        if (sparseLongArray == null || i10 < 0) {
            return 0L;
        }
        return sparseLongArray.get(i10);
    }

    protected static char parse(String str, char c7) {
        return (str == null || str.isEmpty()) ? c7 : str.charAt(0);
    }

    protected static boolean safeUnbox(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    protected boolean updateRegistration(int i10, ObservableList observableList) {
        return updateRegistration(i10, observableList, CREATE_LIST_LISTENER);
    }

    protected ViewDataBinding(Object obj, View view, int i10) {
        this(checkAndCastToBindingComponent(obj), view, i10);
    }

    protected static char getFromArray(char[] cArr, int i10) {
        if (cArr == null || i10 < 0 || i10 >= cArr.length) {
            return (char) 0;
        }
        return cArr[i10];
    }

    protected static void setTo(char[] cArr, int i10, char c7) {
        if (cArr == null || i10 < 0 || i10 >= cArr.length) {
            return;
        }
        cArr[i10] = c7;
    }

    protected boolean updateRegistration(int i10, ObservableMap observableMap) {
        return updateRegistration(i10, observableMap, CREATE_MAP_LISTENER);
    }

    protected static int getFromArray(int[] iArr, int i10) {
        if (iArr == null || i10 < 0 || i10 >= iArr.length) {
            return 0;
        }
        return iArr[i10];
    }

    protected static void setTo(int[] iArr, int i10, int i11) {
        if (iArr == null || i10 < 0 || i10 >= iArr.length) {
            return;
        }
        iArr[i10] = i11;
    }

    protected static long getFromArray(long[] jArr, int i10) {
        if (jArr == null || i10 < 0 || i10 >= jArr.length) {
            return 0L;
        }
        return jArr[i10];
    }

    protected static void setTo(long[] jArr, int i10, long j6) {
        if (jArr == null || i10 < 0 || i10 >= jArr.length) {
            return;
        }
        jArr[i10] = j6;
    }

    protected static float getFromArray(float[] fArr, int i10) {
        if (fArr == null || i10 < 0 || i10 >= fArr.length) {
            return 0.0f;
        }
        return fArr[i10];
    }

    protected static void setTo(float[] fArr, int i10, float f) {
        if (fArr == null || i10 < 0 || i10 >= fArr.length) {
            return;
        }
        fArr[i10] = f;
    }

    protected static double getFromArray(double[] dArr, int i10) {
        return (dArr == null || i10 < 0 || i10 >= dArr.length) ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : dArr[i10];
    }

    protected static void setTo(double[] dArr, int i10, double d) {
        if (dArr == null || i10 < 0 || i10 >= dArr.length) {
            return;
        }
        dArr[i10] = d;
    }

    protected static <T> void setTo(List<T> list, int i10, T t5) {
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return;
        }
        list.set(i10, t5);
    }

    protected static <T> void setTo(SparseArray<T> sparseArray, int i10, T t5) {
        if (sparseArray == null || i10 < 0 || i10 >= sparseArray.size()) {
            return;
        }
        sparseArray.put(i10, t5);
    }

    @TargetApi(16)
    protected static <T> void setTo(LongSparseArray<T> longSparseArray, int i10, T t5) {
        if (longSparseArray == null || i10 < 0 || i10 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i10, t5);
    }

    protected static <T> void setTo(androidx.collection.LongSparseArray<T> longSparseArray, int i10, T t5) {
        if (longSparseArray == null || i10 < 0 || i10 >= longSparseArray.p()) {
            return;
        }
        longSparseArray.m(i10, t5);
    }

    protected static void setTo(SparseBooleanArray sparseBooleanArray, int i10, boolean z6) {
        if (sparseBooleanArray == null || i10 < 0 || i10 >= sparseBooleanArray.size()) {
            return;
        }
        sparseBooleanArray.put(i10, z6);
    }

    protected static void setTo(SparseIntArray sparseIntArray, int i10, int i11) {
        if (sparseIntArray == null || i10 < 0 || i10 >= sparseIntArray.size()) {
            return;
        }
        sparseIntArray.put(i10, i11);
    }

    @TargetApi(18)
    protected static void setTo(SparseLongArray sparseLongArray, int i10, long j6) {
        if (sparseLongArray == null || i10 < 0 || i10 >= sparseLongArray.size()) {
            return;
        }
        sparseLongArray.put(i10, j6);
    }

    protected static <K, T> void setTo(Map<K, T> map, K k, T t5) {
        if (map == null) {
            return;
        }
        map.put(k, t5);
    }
}
