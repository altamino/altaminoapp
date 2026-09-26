package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.R;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    private static boolean DEBUG = false;
    private static final String EXTRA_CREATED_FILLIN_INTENT = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE";
    static final String FRAGMENT_MANAGER_STATE_TAG = "state";
    static final String FRAGMENT_NAME_PREFIX = "fragment_";
    static final String FRAGMENT_STATE_TAG = "state";
    public static final int POP_BACK_STACK_INCLUSIVE = 1;
    static final String RESULT_NAME_PREFIX = "result_";
    static final String SAVED_STATE_TAG = "android:support:fragments";

    @RestrictTo
    public static final String TAG = "FragmentManager";
    ArrayList<BackStackRecord> mBackStack;
    private ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    private FragmentContainer mContainer;
    private ArrayList<Fragment> mCreatedMenus;
    private boolean mDestroyed;
    private boolean mExecutingActions;
    private boolean mHavePendingDeferredStart;
    private FragmentHostCallback<?> mHost;
    private boolean mNeedMenuInvalidate;
    private FragmentManagerViewModel mNonConfig;
    private OnBackPressedDispatcher mOnBackPressedDispatcher;
    private Fragment mParent;

    @Nullable
    Fragment mPrimaryNav;
    private ActivityResultLauncher<String[]> mRequestPermissions;
    private ActivityResultLauncher<Intent> mStartActivityForResult;
    private ActivityResultLauncher<IntentSenderRequest> mStartIntentSenderForResult;
    private boolean mStateSaved;
    private boolean mStopped;
    private FragmentStrictMode.Policy mStrictModePolicy;
    private ArrayList<Fragment> mTmpAddedFragments;
    private ArrayList<Boolean> mTmpIsPop;
    private ArrayList<BackStackRecord> mTmpRecords;
    private final ArrayList<OpGenerator> mPendingActions = new ArrayList<>();
    private final FragmentStore mFragmentStore = new FragmentStore();
    private final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    private final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(false) { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.OnBackPressedCallback
        public void e() {
            FragmentManager.this.L0();
        }
    };
    private final AtomicInteger mBackStackIndex = new AtomicInteger();
    private final Map<String, BackStackState> mBackStackStates = Collections.synchronizedMap(new HashMap());
    private final Map<String, Bundle> mResults = Collections.synchronizedMap(new HashMap());
    private final Map<String, LifecycleAwareResultListener> mResultListeners = Collections.synchronizedMap(new HashMap());
    private final FragmentLifecycleCallbacksDispatcher mLifecycleCallbacksDispatcher = new FragmentLifecycleCallbacksDispatcher(this);
    private final CopyOnWriteArrayList<FragmentOnAttachListener> mOnAttachListeners = new CopyOnWriteArrayList<>();
    private final Consumer<Configuration> mOnConfigurationChangedListener = new Consumer() { // from class: androidx.fragment.app.e
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            this.f208a.X0((Configuration) obj);
        }
    };
    private final Consumer<Integer> mOnTrimMemoryListener = new Consumer() { // from class: androidx.fragment.app.f
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            this.f209a.Y0((Integer) obj);
        }
    };
    private final Consumer<MultiWindowModeChangedInfo> mOnMultiWindowModeChangedListener = new Consumer() { // from class: androidx.fragment.app.g
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            this.f210a.Z0((MultiWindowModeChangedInfo) obj);
        }
    };
    private final Consumer<PictureInPictureModeChangedInfo> mOnPictureInPictureModeChangedListener = new Consumer() { // from class: androidx.fragment.app.h
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            this.f211a.a1((PictureInPictureModeChangedInfo) obj);
        }
    };
    private final MenuProvider mMenuProvider = new MenuProvider() { // from class: androidx.fragment.app.FragmentManager.2
        @Override // androidx.core.view.MenuProvider
        public void a(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
            FragmentManager.this.G(menu, menuInflater);
        }

        @Override // androidx.core.view.MenuProvider
        public void b(@NonNull Menu menu) {
            FragmentManager.this.O(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public void c(@NonNull Menu menu) {
            FragmentManager.this.S(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public boolean d(@NonNull MenuItem menuItem) {
            return FragmentManager.this.N(menuItem);
        }
    };
    int mCurState = -1;
    private FragmentFactory mFragmentFactory = null;
    private FragmentFactory mHostFragmentFactory = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
        @Override // androidx.fragment.app.FragmentFactory
        @NonNull
        public Fragment a(@NonNull ClassLoader classLoader, @NonNull String str) {
            return FragmentManager.this.C0().b(FragmentManager.this.C0().f(), str, null);
        }
    };
    private SpecialEffectsControllerFactory mSpecialEffectsControllerFactory = null;
    private SpecialEffectsControllerFactory mDefaultSpecialEffectsControllerFactory = new SpecialEffectsControllerFactory() { // from class: androidx.fragment.app.FragmentManager.4
        @Override // androidx.fragment.app.SpecialEffectsControllerFactory
        @NonNull
        public SpecialEffectsController a(@NonNull ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    };
    ArrayDeque<LaunchedFragmentInfo> mLaunchedFragments = new ArrayDeque<>();
    private Runnable mExecCommit = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.e0(true);
        }
    };

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    class AnonymousClass6 implements LifecycleEventObserver {
        final /* synthetic */ FragmentManager this$0;
        final /* synthetic */ Lifecycle val$lifecycle;
        final /* synthetic */ FragmentResultListener val$listener;
        final /* synthetic */ String val$requestKey;

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            Bundle bundle;
            if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) this.this$0.mResults.get(this.val$requestKey)) != null) {
                this.val$listener.a(this.val$requestKey, bundle);
                this.this$0.w(this.val$requestKey);
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.val$lifecycle.d(this);
                this.this$0.mResultListeners.remove(this.val$requestKey);
            }
        }
    }

    public interface BackStackEntry {
        int getId();

        @Nullable
        String getName();
    }

    private class ClearBackStackState implements OpGenerator {
        private final String mName;
        final /* synthetic */ FragmentManager this$0;

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return this.this$0.u(arrayList, arrayList2, this.mName);
        }
    }

    static class FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST);
            Intent intentC = intentSenderRequest.c();
            if (intentC != null && (bundleExtra = intentC.getBundleExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) != null) {
                intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundleExtra);
                intentC.removeExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
                if (intentC.getBooleanExtra(FragmentManager.EXTRA_CREATED_FILLIN_INTENT, false)) {
                    intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.h()).b(null).c(intentSenderRequest.g(), intentSenderRequest.e()).a();
                }
            }
            intent.putExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            if (FragmentManager.P0(2)) {
                Log.v(FragmentManager.TAG, "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResult c(int i10, @Nullable Intent intent) {
            return new ActivityResult(i10, intent);
        }

        FragmentIntentSenderContract() {
        }
    }

    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        }

        public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        }

        public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator<LaunchedFragmentInfo>() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo[] newArray(int i10) {
                return new LaunchedFragmentInfo[i10];
            }
        };
        int mRequestCode;
        String mWho;

        LaunchedFragmentInfo(@NonNull String str, int i10) {
            this.mWho = str;
            this.mRequestCode = i10;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        LaunchedFragmentInfo(@NonNull Parcel parcel) {
            this.mWho = parcel.readString();
            this.mRequestCode = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }
    }

    private static class LifecycleAwareResultListener implements FragmentResultListener {
        private final Lifecycle mLifecycle;
        private final FragmentResultListener mListener;
        private final LifecycleEventObserver mObserver;

        @Override // androidx.fragment.app.FragmentResultListener
        public void a(@NonNull String str, @NonNull Bundle bundle) {
            this.mListener.a(str, bundle);
        }
    }

    public interface OnBackStackChangedListener {
        @MainThread
        void a();
    }

    interface OpGenerator {
        boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2);
    }

    private class PopBackStackState implements OpGenerator {
        final int mFlags;
        final int mId;
        final String mName;

        PopBackStackState(String str, int i10, int i11) {
            this.mName = str;
            this.mId = i10;
            this.mFlags = i11;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.mPrimaryNav;
            if (fragment == null || this.mId >= 0 || this.mName != null || !fragment.getChildFragmentManager().m1()) {
                return FragmentManager.this.p1(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
            }
            return false;
        }
    }

    private class RestoreBackStackState implements OpGenerator {
        private final String mName;

        RestoreBackStackState(String str) {
            this.mName = str;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return FragmentManager.this.x1(arrayList, arrayList2, this.mName);
        }
    }

    private class SaveBackStackState implements OpGenerator {
        private final String mName;

        SaveBackStackState(String str) {
            this.mName = str;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return FragmentManager.this.C1(arrayList, arrayList2, this.mName);
        }
    }

    private void W(int i10) {
        try {
            this.mExecutingActions = true;
            this.mFragmentStore.d(i10);
            e1(i10, false);
            Iterator<SpecialEffectsController> it = x().iterator();
            while (it.hasNext()) {
                it.next().j();
            }
            this.mExecutingActions = false;
            e0(true);
        } catch (Throwable th) {
            this.mExecutingActions = false;
            throw th;
        }
    }

    private boolean o1(@Nullable String str, int i10, int i11) {
        e0(false);
        d0(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && i10 < 0 && str == null && fragment.getChildFragmentManager().m1()) {
            return true;
        }
        boolean zP1 = p1(this.mTmpRecords, this.mTmpIsPop, str, i10, i11);
        if (zP1) {
            this.mExecutingActions = true;
            try {
                t1(this.mTmpRecords, this.mTmpIsPop);
                t();
            } catch (Throwable th) {
                t();
                throw th;
            }
        }
        N1();
        Z();
        this.mFragmentStore.b();
        return zP1;
    }

    @Nullable
    private static Fragment p0(@NonNull View view) {
        while (view != null) {
            Fragment fragmentJ0 = J0(view);
            if (fragmentJ0 != null) {
                return fragmentJ0;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    private void t() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    static int z1(int i10) {
        int i11 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        if (i10 == 4097) {
            return 8194;
        }
        if (i10 != 8194) {
            i11 = FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE;
            if (i10 == 8197) {
                return FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN;
            }
            if (i10 == 4099) {
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            }
            if (i10 != 4100) {
                return 0;
            }
        }
        return i11;
    }

    void A(@NonNull Fragment fragment) {
        if (P0(2)) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (P0(2)) {
                Log.v(TAG, "remove from detach: " + fragment);
            }
            this.mFragmentStore.u(fragment);
            if (Q0(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            I1(fragment);
        }
    }

    @NonNull
    FragmentStore A0() {
        return this.mFragmentStore;
    }

    void B() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        W(4);
    }

    void C() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        W(0);
    }

    @NonNull
    @RestrictTo
    public FragmentHostCallback<?> C0() {
        return this.mHost;
    }

    @NonNull
    LayoutInflater.Factory2 D0() {
        return this.mLayoutInflaterFactory;
    }

    @NonNull
    FragmentLifecycleCallbacksDispatcher E0() {
        return this.mLifecycleCallbacksDispatcher;
    }

    void F() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        W(1);
    }

    @Nullable
    Fragment F0() {
        return this.mParent;
    }

    @Nullable
    public Fragment G0() {
        return this.mPrimaryNav;
    }

    void H() {
        this.mDestroyed = true;
        e0(true);
        b0();
        v();
        W(-1);
        Object obj = this.mHost;
        if (obj instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj).removeOnTrimMemoryListener(this.mOnTrimMemoryListener);
        }
        Object obj2 = this.mHost;
        if (obj2 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj2).removeOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
        }
        Object obj3 = this.mHost;
        if (obj3 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj3).removeOnMultiWindowModeChangedListener(this.mOnMultiWindowModeChangedListener);
        }
        Object obj4 = this.mHost;
        if (obj4 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj4).removeOnPictureInPictureModeChangedListener(this.mOnPictureInPictureModeChangedListener);
        }
        Object obj5 = this.mHost;
        if (obj5 instanceof MenuHost) {
            ((MenuHost) obj5).removeMenuProvider(this.mMenuProvider);
        }
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
        if (this.mOnBackPressedDispatcher != null) {
            this.mOnBackPressedCallback.g();
            this.mOnBackPressedDispatcher = null;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.mStartActivityForResult;
        if (activityResultLauncher != null) {
            activityResultLauncher.c();
            this.mStartIntentSenderForResult.c();
            this.mRequestPermissions.c();
        }
    }

    void I() {
        W(1);
    }

    @Nullable
    public FragmentStrictMode.Policy I0() {
        return this.mStrictModePolicy;
    }

    void J1(@NonNull Fragment fragment) {
        if (P0(2)) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    void L0() {
        e0(true);
        if (this.mOnBackPressedCallback.f()) {
            m1();
        } else {
            this.mOnBackPressedDispatcher.e();
        }
    }

    void M0(@NonNull Fragment fragment) {
        if (P0(2)) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        I1(fragment);
    }

    public boolean O0() {
        return this.mDestroyed;
    }

    void Q() {
        W(5);
    }

    boolean T0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.G0()) && T0(fragmentManager.mParent);
    }

    void U() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        W(7);
    }

    boolean U0(int i10) {
        return this.mCurState >= i10;
    }

    void V() {
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        W(5);
    }

    public boolean V0() {
        return this.mStateSaved || this.mStopped;
    }

    void X() {
        this.mStopped = true;
        this.mNonConfig.m(true);
        W(4);
    }

    void Y() {
        W(2);
    }

    void d1(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.mStartIntentSenderForResult == null) {
            this.mHost.n(fragment, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra(EXTRA_CREATED_FILLIN_INTENT, true);
            } else {
                intent2 = intent;
            }
            if (P0(2)) {
                Log.v(TAG, "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        } else {
            intent2 = intent;
        }
        IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.Builder(intentSender).b(intent2).c(i12, i11).a();
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (P0(2)) {
            Log.v(TAG, "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.mStartIntentSenderForResult.a(intentSenderRequestA);
    }

    public boolean i0() {
        boolean zE0 = e0(true);
        q0();
        return zE0;
    }

    public void j1(int i10, int i11) {
        k1(i10, i11, false);
    }

    public boolean m1() {
        return o1(null, -1, 0);
    }

    void p(@NonNull Fragment fragment) {
        if (P0(2)) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.mFragmentStore.a(fragment);
            if (P0(2)) {
                Log.v(TAG, "add from attach: " + fragment);
            }
            if (Q0(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
    }

    boolean p1(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, @Nullable String str, int i10, int i11) {
        int iK0 = k0(str, i10, (i11 & 1) != 0);
        if (iK0 < 0) {
            return false;
        }
        for (int size = this.mBackStack.size() - 1; size >= iK0; size--) {
            arrayList.add(this.mBackStack.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    void s1(@NonNull Fragment fragment) {
        if (P0(2)) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z6 = !fragment.isInBackStack();
        if (!fragment.mDetached || z6) {
            this.mFragmentStore.u(fragment);
            if (Q0(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mRemoving = true;
            I1(fragment);
        }
    }

    @NonNull
    FragmentContainer w0() {
        return this.mContainer;
    }

    @Nullable
    static Fragment J0(@NonNull View view) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    private void K1() {
        Iterator<FragmentStateManager> it = this.mFragmentStore.k().iterator();
        while (it.hasNext()) {
            h1(it.next());
        }
    }

    private void N1() {
        synchronized (this.mPendingActions) {
            try {
                if (this.mPendingActions.isEmpty()) {
                    this.mOnBackPressedCallback.i(u0() > 0 && T0(this.mParent));
                } else {
                    this.mOnBackPressedCallback.i(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void P(@Nullable Fragment fragment) {
        if (fragment == null || !fragment.equals(j0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    @RestrictTo
    public static boolean P0(int i10) {
        return DEBUG || Log.isLoggable(TAG, i10);
    }

    private boolean Q0(@NonNull Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.r();
    }

    private void Z() {
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            K1();
        }
    }

    private void d0(boolean z6) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.mHost == null) {
            if (!this.mDestroyed) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.mHost.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z6) {
            s();
        }
        if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList<>();
            this.mTmpIsPop = new ArrayList<>();
        }
    }

    private static void g0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i10, int i11) {
        while (i10 < i11) {
            BackStackRecord backStackRecord = arrayList.get(i10);
            if (arrayList2.get(i10).booleanValue()) {
                backStackRecord.F(-1);
                backStackRecord.L();
            } else {
                backStackRecord.F(1);
                backStackRecord.K();
            }
            i10++;
        }
    }

    private int k0(@Nullable String str, int i10, boolean z6) {
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        if (str == null && i10 < 0) {
            if (z6) {
                return 0;
            }
            return this.mBackStack.size() - 1;
        }
        int size = this.mBackStack.size() - 1;
        while (size >= 0) {
            BackStackRecord backStackRecord = this.mBackStack.get(size);
            if ((str != null && str.equals(backStackRecord.getName())) || (i10 >= 0 && i10 == backStackRecord.mIndex)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z6) {
            if (size == this.mBackStack.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            BackStackRecord backStackRecord2 = this.mBackStack.get(size - 1);
            if ((str == null || !str.equals(backStackRecord2.getName())) && (i10 < 0 || i10 != backStackRecord2.mIndex)) {
                return size;
            }
            size--;
        }
        return size;
    }

    private boolean r0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        synchronized (this.mPendingActions) {
            if (this.mPendingActions.isEmpty()) {
                return false;
            }
            try {
                int size = this.mPendingActions.size();
                boolean zA = false;
                for (int i10 = 0; i10 < size; i10++) {
                    zA |= this.mPendingActions.get(i10).a(arrayList, arrayList2);
                }
                this.mPendingActions.clear();
                this.mHost.g().removeCallbacks(this.mExecCommit);
                return zA;
            } catch (Throwable th) {
                this.mPendingActions.clear();
                this.mHost.g().removeCallbacks(this.mExecCommit);
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    /* JADX WARN: Code duplicated, block: B:15:0x004b A[LOOP:1: B:13:0x0045->B:15:0x004b, LOOP_END] */
    private void v() {
        boolean zK;
        Iterator<BackStackState> it;
        Iterator<String> it2;
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (!(fragmentHostCallback instanceof ViewModelStoreOwner)) {
            if (fragmentHostCallback.f() instanceof Activity) {
                zK = !((Activity) this.mHost.f()).isChangingConfigurations();
            }
            it = this.mBackStackStates.values().iterator();
            while (it.hasNext()) {
                it2 = it.next().mFragments.iterator();
                while (it2.hasNext()) {
                    this.mFragmentStore.p().d(it2.next());
                }
            }
        }
        zK = this.mFragmentStore.p().k();
        if (!zK) {
            return;
        }
        it = this.mBackStackStates.values().iterator();
        while (it.hasNext()) {
            it2 = it.next().mFragments.iterator();
            while (it2.hasNext()) {
                this.mFragmentStore.p().d(it2.next());
            }
        }
    }

    @NonNull
    private FragmentManagerViewModel v0(@NonNull Fragment fragment) {
        return this.mNonConfig.g(fragment);
    }

    private void v1() {
        if (this.mBackStackChangeListeners != null) {
            for (int i10 = 0; i10 < this.mBackStackChangeListeners.size(); i10++) {
                this.mBackStackChangeListeners.get(i10).a();
            }
        }
    }

    private Set<SpecialEffectsController> x() {
        HashSet hashSet = new HashSet();
        Iterator<FragmentStateManager> it = this.mFragmentStore.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().k().mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.o(viewGroup, H0()));
            }
        }
        return hashSet;
    }

    private Set<SpecialEffectsController> y(@NonNull ArrayList<BackStackRecord> arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator<FragmentTransaction.Op> it = arrayList.get(i10).mOps.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().mFragment;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.n(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    private ViewGroup y0(@NonNull Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.mContainer.d()) {
            View viewC = this.mContainer.c(fragment.mContainerId);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* JADX INFO: renamed from: A1, reason: merged with bridge method [inline-methods] */
    public Bundle W0() {
        BackStackRecordState[] backStackRecordStateArr;
        int size;
        Bundle bundle = new Bundle();
        q0();
        b0();
        e0(true);
        this.mStateSaved = true;
        this.mNonConfig.m(true);
        ArrayList<String> arrayListY = this.mFragmentStore.y();
        ArrayList<FragmentState> arrayListM = this.mFragmentStore.m();
        if (!arrayListM.isEmpty()) {
            ArrayList<String> arrayListZ = this.mFragmentStore.z();
            ArrayList<BackStackRecord> arrayList = this.mBackStack;
            if (arrayList == null || (size = arrayList.size()) <= 0) {
                backStackRecordStateArr = null;
            } else {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i10 = 0; i10 < size; i10++) {
                    backStackRecordStateArr[i10] = new BackStackRecordState(this.mBackStack.get(i10));
                    if (P0(2)) {
                        Log.v(TAG, "saveAllState: adding back stack #" + i10 + ": " + this.mBackStack.get(i10));
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mActive = arrayListY;
            fragmentManagerState.mAdded = arrayListZ;
            fragmentManagerState.mBackStack = backStackRecordStateArr;
            fragmentManagerState.mBackStackIndex = this.mBackStackIndex.get();
            Fragment fragment = this.mPrimaryNav;
            if (fragment != null) {
                fragmentManagerState.mPrimaryNavActiveWho = fragment.mWho;
            }
            fragmentManagerState.mBackStackStateKeys.addAll(this.mBackStackStates.keySet());
            fragmentManagerState.mBackStackStates.addAll(this.mBackStackStates.values());
            fragmentManagerState.mLaunchedFragments = new ArrayList<>(this.mLaunchedFragments);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.mResults.keySet()) {
                bundle.putBundle(RESULT_NAME_PREFIX + str, this.mResults.get(str));
            }
            for (FragmentState fragmentState : arrayListM) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", fragmentState);
                bundle.putBundle(FRAGMENT_NAME_PREFIX + fragmentState.mWho, bundle2);
            }
        } else if (P0(2)) {
            Log.v(TAG, "saveAllState: no fragments!");
        }
        return bundle;
    }

    @NonNull
    public List<Fragment> B0() {
        return this.mFragmentStore.o();
    }

    public void B1(@NonNull String str) {
        c0(new SaveBackStackState(str), false);
    }

    boolean C1(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        int i10;
        int iK0 = k0(str, -1, true);
        if (iK0 < 0) {
            return false;
        }
        for (int i11 = iK0; i11 < this.mBackStack.size(); i11++) {
            BackStackRecord backStackRecord = this.mBackStack.get(i11);
            if (!backStackRecord.mReorderingAllowed) {
                L1(new IllegalArgumentException("saveBackStack(\"" + str + "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found " + backStackRecord + " that did not use setReorderingAllowed(true)."));
            }
        }
        HashSet hashSet = new HashSet();
        for (int i12 = iK0; i12 < this.mBackStack.size(); i12++) {
            BackStackRecord backStackRecord2 = this.mBackStack.get(i12);
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            for (FragmentTransaction.Op op : backStackRecord2.mOps) {
                Fragment fragment = op.mFragment;
                if (fragment != null) {
                    if (!op.mFromExpandedOp || (i10 = op.mCmd) == 1 || i10 == 2 || i10 == 8) {
                        hashSet.add(fragment);
                        hashSet2.add(fragment);
                    }
                    int i13 = op.mCmd;
                    if (i13 == 1 || i13 == 2) {
                        hashSet3.add(fragment);
                    }
                }
            }
            hashSet2.removeAll(hashSet3);
            if (!hashSet2.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                sb.append("saveBackStack(\"");
                sb.append(str);
                sb.append("\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment");
                sb.append(hashSet2.size() == 1 ? " " + hashSet2.iterator().next() : "s " + hashSet2);
                sb.append(" in ");
                sb.append(backStackRecord2);
                sb.append(" that were previously added to the FragmentManager through a separate FragmentTransaction.");
                L1(new IllegalArgumentException(sb.toString()));
            }
        }
        ArrayDeque arrayDeque = new ArrayDeque(hashSet);
        while (!arrayDeque.isEmpty()) {
            Fragment fragment2 = (Fragment) arrayDeque.removeFirst();
            if (fragment2.mRetainInstance) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("saveBackStack(\"");
                sb2.append(str);
                sb2.append("\") must not contain retained fragments. Found ");
                sb2.append(hashSet.contains(fragment2) ? "direct reference to retained " : "retained child ");
                sb2.append("fragment ");
                sb2.append(fragment2);
                L1(new IllegalArgumentException(sb2.toString()));
            }
            for (Fragment fragment3 : fragment2.mChildFragmentManager.s0()) {
                if (fragment3 != null) {
                    arrayDeque.addLast(fragment3);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList3.add(((Fragment) it.next()).mWho);
        }
        ArrayList arrayList4 = new ArrayList(this.mBackStack.size() - iK0);
        for (int i14 = iK0; i14 < this.mBackStack.size(); i14++) {
            arrayList4.add(null);
        }
        BackStackState backStackState = new BackStackState(arrayList3, arrayList4);
        for (int size = this.mBackStack.size() - 1; size >= iK0; size--) {
            BackStackRecord backStackRecordRemove = this.mBackStack.remove(size);
            BackStackRecord backStackRecord3 = new BackStackRecord(backStackRecordRemove);
            backStackRecord3.G();
            arrayList4.set(size - iK0, new BackStackRecordState(backStackRecord3));
            backStackRecordRemove.mBeingSaved = true;
            arrayList.add(backStackRecordRemove);
            arrayList2.add(Boolean.TRUE);
        }
        this.mBackStackStates.put(str, backStackState);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public void X0(@NonNull Configuration configuration) {
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    @Nullable
    public Fragment.SavedState D1(@NonNull Fragment fragment) {
        FragmentStateManager fragmentStateManagerN = this.mFragmentStore.n(fragment.mWho);
        if (fragmentStateManagerN == null || !fragmentStateManagerN.k().equals(fragment)) {
            L1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return fragmentStateManagerN.r();
    }

    boolean E(@NonNull MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void E1() {
        synchronized (this.mPendingActions) {
            try {
                if (this.mPendingActions.size() == 1) {
                    this.mHost.g().removeCallbacks(this.mExecCommit);
                    this.mHost.g().post(this.mExecCommit);
                    N1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean G(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z6 = false;
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null && S0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z6 = true;
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i10 = 0; i10 < this.mCreatedMenus.size(); i10++) {
                Fragment fragment2 = this.mCreatedMenus.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z6;
    }

    void G1(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.equals(j0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    @NonNull
    SpecialEffectsControllerFactory H0() {
        SpecialEffectsControllerFactory specialEffectsControllerFactory = this.mSpecialEffectsControllerFactory;
        if (specialEffectsControllerFactory != null) {
            return specialEffectsControllerFactory;
        }
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.H0() : this.mDefaultSpecialEffectsControllerFactory;
    }

    void H1(@Nullable Fragment fragment) {
        if (fragment == null || (fragment.equals(j0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.mPrimaryNav;
            this.mPrimaryNav = fragment;
            P(fragment2);
            P(this.mPrimaryNav);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    void J() {
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    void K(boolean z6) {
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z6);
            }
        }
    }

    @NonNull
    ViewModelStore K0(@NonNull Fragment fragment) {
        return this.mNonConfig.j(fragment);
    }

    void L(@NonNull Fragment fragment) {
        Iterator<FragmentOnAttachListener> it = this.mOnAttachListeners.iterator();
        while (it.hasNext()) {
            it.next().a(this, fragment);
        }
    }

    void M() {
        for (Fragment fragment : this.mFragmentStore.l()) {
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.M();
            }
        }
    }

    public void M1(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.mLifecycleCallbacksDispatcher.p(fragmentLifecycleCallbacks);
    }

    boolean N(@NonNull MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void N0(@NonNull Fragment fragment) {
        if (fragment.mAdded && Q0(fragment)) {
            this.mNeedMenuInvalidate = true;
        }
    }

    void O(@NonNull Menu menu) {
        if (this.mCurState < 1) {
            return;
        }
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    void R(boolean z6) {
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z6);
            }
        }
    }

    boolean R0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return false;
        }
        return fragment.isHidden();
    }

    boolean S(@NonNull Menu menu) {
        boolean z6 = false;
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null && S0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z6 = true;
            }
        }
        return z6;
    }

    boolean S0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    public void a0(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.mFragmentStore.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.mCreatedMenus;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment = this.mCreatedMenus.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<BackStackRecord> arrayList2 = this.mBackStack;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.I(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.mBackStackIndex.get());
        synchronized (this.mPendingActions) {
            try {
                int size3 = this.mPendingActions.size();
                if (size3 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i12 = 0; i12 < size3; i12++) {
                        OpGenerator opGenerator = this.mPendingActions.get(i12);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i12);
                        printWriter.print(": ");
                        printWriter.println(opGenerator);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
    }

    void b1(@NonNull Fragment fragment, @NonNull String[] strArr, int i10) {
        if (this.mRequestPermissions == null) {
            this.mHost.k(fragment, strArr, i10);
            return;
        }
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        this.mRequestPermissions.a(strArr);
    }

    void c0(@NonNull OpGenerator opGenerator, boolean z6) {
        if (!z6) {
            if (this.mHost == null) {
                if (!this.mDestroyed) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            s();
        }
        synchronized (this.mPendingActions) {
            try {
                if (this.mHost == null) {
                    if (!z6) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.mPendingActions.add(opGenerator);
                    E1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void c1(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, @Nullable Bundle bundle) {
        if (this.mStartActivityForResult == null) {
            this.mHost.m(fragment, intent, i10, bundle);
            return;
        }
        this.mLaunchedFragments.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (intent != null && bundle != null) {
            intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        }
        this.mStartActivityForResult.a(intent);
    }

    void e1(int i10, boolean z6) {
        FragmentHostCallback<?> fragmentHostCallback;
        if (this.mHost == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z6 || i10 != this.mCurState) {
            this.mCurState = i10;
            this.mFragmentStore.t();
            K1();
            if (this.mNeedMenuInvalidate && (fragmentHostCallback = this.mHost) != null && this.mCurState == 7) {
                fragmentHostCallback.o();
                this.mNeedMenuInvalidate = false;
            }
        }
    }

    void f0(@NonNull OpGenerator opGenerator, boolean z6) {
        if (z6 && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        d0(z6);
        if (opGenerator.a(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                t1(this.mTmpRecords, this.mTmpIsPop);
                t();
            } catch (Throwable th) {
                t();
                throw th;
            }
        }
        N1();
        Z();
        this.mFragmentStore.b();
    }

    void f1() {
        if (this.mHost == null) {
            return;
        }
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.m(false);
        for (Fragment fragment : this.mFragmentStore.o()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    void g1(@NonNull FragmentContainerView fragmentContainerView) {
        View view;
        for (FragmentStateManager fragmentStateManager : this.mFragmentStore.k()) {
            Fragment fragmentK = fragmentStateManager.k();
            if (fragmentK.mContainerId == fragmentContainerView.getId() && (view = fragmentK.mView) != null && view.getParent() == null) {
                fragmentK.mContainer = fragmentContainerView;
                fragmentStateManager.b();
            }
        }
    }

    void i(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(backStackRecord);
    }

    public void i1() {
        c0(new PopBackStackState(null, -1, 0), false);
    }

    FragmentStateManager j(@NonNull Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.h(fragment, str);
        }
        if (P0(2)) {
            Log.v(TAG, "add: " + fragment);
        }
        FragmentStateManager fragmentStateManagerZ = z(fragment);
        fragment.mFragmentManager = this;
        this.mFragmentStore.r(fragmentStateManagerZ);
        if (!fragment.mDetached) {
            this.mFragmentStore.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (Q0(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
        return fragmentStateManagerZ;
    }

    @Nullable
    Fragment j0(@NonNull String str) {
        return this.mFragmentStore.f(str);
    }

    public void k(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.mOnAttachListeners.add(fragmentOnAttachListener);
    }

    void k1(int i10, int i11, boolean z6) {
        if (i10 >= 0) {
            c0(new PopBackStackState(null, i10, i11), z6);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    public void l(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    @Nullable
    public Fragment l0(@IdRes int i10) {
        return this.mFragmentStore.g(i10);
    }

    public void l1(@Nullable String str, int i10) {
        c0(new PopBackStackState(str, -1, i10), false);
    }

    void m(@NonNull Fragment fragment) {
        this.mNonConfig.b(fragment);
    }

    @Nullable
    public Fragment m0(@Nullable String str) {
        return this.mFragmentStore.h(str);
    }

    int n() {
        return this.mBackStackIndex.getAndIncrement();
    }

    Fragment n0(@NonNull String str) {
        return this.mFragmentStore.i(str);
    }

    public boolean n1(int i10, int i11) {
        if (i10 >= 0) {
            return o1(null, i10, i11);
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    void o(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentContainer fragmentContainer, @Nullable final Fragment fragment) {
        String str;
        LifecycleOwner lifecycleOwner;
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
        if (fragment != null) {
            k(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager.7
                @Override // androidx.fragment.app.FragmentOnAttachListener
                public void a(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2) {
                    fragment.onAttachFragment(fragment2);
                }
            });
        } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
            k((FragmentOnAttachListener) fragmentHostCallback);
        }
        if (this.mParent != null) {
            N1();
        }
        if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
            this.mOnBackPressedDispatcher = onBackPressedDispatcher;
            if (fragment != null) {
                lifecycleOwner = onBackPressedDispatcherOwner;
                lifecycleOwner = fragment;
            }
            lifecycleOwner = onBackPressedDispatcherOwner;
            onBackPressedDispatcher.b(lifecycleOwner, this.mOnBackPressedCallback);
        }
        if (fragment != null) {
            this.mNonConfig = fragment.mFragmentManager.v0(fragment);
        } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            this.mNonConfig = FragmentManagerViewModel.h(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore());
        } else {
            this.mNonConfig = new FragmentManagerViewModel(false);
        }
        this.mNonConfig.m(V0());
        this.mFragmentStore.A(this.mNonConfig);
        Object obj = this.mHost;
        if ((obj instanceof SavedStateRegistryOwner) && fragment == null) {
            SavedStateRegistry savedStateRegistry = ((SavedStateRegistryOwner) obj).getSavedStateRegistry();
            savedStateRegistry.h(SAVED_STATE_TAG, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.fragment.app.i
                @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
                public final Bundle a() {
                    return this.f212a.W0();
                }
            });
            Bundle bundleB = savedStateRegistry.b(SAVED_STATE_TAG);
            if (bundleB != null) {
                y1(bundleB);
            }
        }
        Object obj2 = this.mHost;
        if (obj2 instanceof ActivityResultRegistryOwner) {
            ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj2).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.mStartActivityForResult = activityResultRegistry.i(str2 + "StartActivityForResult", new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.8
                @Override // androidx.activity.result.ActivityResultCallback
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public void a(ActivityResult activityResult) {
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(FragmentManager.TAG, "No Activities were started for result for " + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i10 = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentI = FragmentManager.this.mFragmentStore.i(str3);
                    if (fragmentI != null) {
                        fragmentI.onActivityResult(i10, activityResult.e(), activityResult.c());
                        return;
                    }
                    Log.w(FragmentManager.TAG, "Activity result delivered for unknown Fragment " + str3);
                }
            });
            this.mStartIntentSenderForResult = activityResultRegistry.i(str2 + "StartIntentSenderForResult", new FragmentIntentSenderContract(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.9
                @Override // androidx.activity.result.ActivityResultCallback
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public void a(ActivityResult activityResult) {
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(FragmentManager.TAG, "No IntentSenders were started for " + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i10 = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentI = FragmentManager.this.mFragmentStore.i(str3);
                    if (fragmentI != null) {
                        fragmentI.onActivityResult(i10, activityResult.e(), activityResult.c());
                        return;
                    }
                    Log.w(FragmentManager.TAG, "Intent Sender result delivered for unknown Fragment " + str3);
                }
            });
            this.mRequestPermissions = activityResultRegistry.i(str2 + "RequestPermissions", new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.10
                @Override // androidx.activity.result.ActivityResultCallback
                @SuppressLint({"SyntheticAccessor"})
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public void a(Map<String, Boolean> map) {
                    int i10;
                    String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                    ArrayList arrayList = new ArrayList(map.values());
                    int[] iArr = new int[arrayList.size()];
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        if (((Boolean) arrayList.get(i11)).booleanValue()) {
                            i10 = 0;
                        } else {
                            i10 = -1;
                        }
                        iArr[i11] = i10;
                    }
                    LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.mLaunchedFragments.pollFirst();
                    if (launchedFragmentInfoPollFirst == null) {
                        Log.w(FragmentManager.TAG, "No permissions were requested for " + this);
                        return;
                    }
                    String str3 = launchedFragmentInfoPollFirst.mWho;
                    int i12 = launchedFragmentInfoPollFirst.mRequestCode;
                    Fragment fragmentI = FragmentManager.this.mFragmentStore.i(str3);
                    if (fragmentI == null) {
                        Log.w(FragmentManager.TAG, "Permission request result delivered for unknown Fragment " + str3);
                        return;
                    }
                    fragmentI.onRequestPermissionsResult(i12, strArr, iArr);
                }
            });
        }
        Object obj3 = this.mHost;
        if (obj3 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj3).addOnConfigurationChangedListener(this.mOnConfigurationChangedListener);
        }
        Object obj4 = this.mHost;
        if (obj4 instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj4).addOnTrimMemoryListener(this.mOnTrimMemoryListener);
        }
        Object obj5 = this.mHost;
        if (obj5 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj5).addOnMultiWindowModeChangedListener(this.mOnMultiWindowModeChangedListener);
        }
        Object obj6 = this.mHost;
        if (obj6 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj6).addOnPictureInPictureModeChangedListener(this.mOnPictureInPictureModeChangedListener);
        }
        Object obj7 = this.mHost;
        if ((obj7 instanceof MenuHost) && fragment == null) {
            ((MenuHost) obj7).addMenuProvider(this.mMenuProvider);
        }
    }

    @NonNull
    public FragmentTransaction q() {
        return new BackStackRecord(this);
    }

    public void q1(@NonNull Bundle bundle, @NonNull String str, @NonNull Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            L1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    boolean r() {
        boolean zQ0 = false;
        for (Fragment fragment : this.mFragmentStore.l()) {
            if (fragment != null) {
                zQ0 = Q0(fragment);
            }
            if (zQ0) {
                return true;
            }
        }
        return false;
    }

    public void r1(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z6) {
        this.mLifecycleCallbacksDispatcher.o(fragmentLifecycleCallbacks, z6);
    }

    @NonNull
    List<Fragment> s0() {
        return this.mFragmentStore.l();
    }

    @NonNull
    public BackStackEntry t0(int i10) {
        return this.mBackStack.get(i10);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.mParent)));
            sb.append("}");
        } else {
            FragmentHostCallback<?> fragmentHostCallback = this.mHost;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.mHost)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public int u0() {
        ArrayList<BackStackRecord> arrayList = this.mBackStack;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    void u1(@NonNull Fragment fragment) {
        this.mNonConfig.l(fragment);
    }

    public final void w(@NonNull String str) {
        this.mResults.remove(str);
        if (P0(2)) {
            Log.v(TAG, "Clearing fragment result with key " + str);
        }
    }

    public void w1(@NonNull String str) {
        c0(new RestoreBackStackState(str), false);
    }

    boolean x1(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        BackStackState backStackStateRemove = this.mBackStackStates.remove(str);
        if (backStackStateRemove == null) {
            return false;
        }
        HashMap map = new HashMap();
        for (BackStackRecord backStackRecord : arrayList) {
            if (backStackRecord.mBeingSaved) {
                Iterator<FragmentTransaction.Op> it = backStackRecord.mOps.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().mFragment;
                    if (fragment != null) {
                        map.put(fragment.mWho, fragment);
                    }
                }
            }
        }
        Iterator<BackStackRecord> it2 = backStackStateRemove.a(this, map).iterator();
        while (true) {
            boolean z6 = false;
            while (it2.hasNext()) {
                if (it2.next().a(arrayList, arrayList2) || z6) {
                    z6 = true;
                }
            }
            return z6;
        }
    }

    void y1(@Nullable Parcelable parcelable) {
        FragmentStateManager fragmentStateManager;
        Bundle bundle;
        Bundle bundle2;
        if (parcelable == null) {
            return;
        }
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith(RESULT_NAME_PREFIX) && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.mHost.f().getClassLoader());
                this.mResults.put(str.substring(7), bundle2);
            }
        }
        ArrayList<FragmentState> arrayList = new ArrayList<>();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith(FRAGMENT_NAME_PREFIX) && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.mHost.f().getClassLoader());
                arrayList.add((FragmentState) bundle.getParcelable("state"));
            }
        }
        this.mFragmentStore.x(arrayList);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle3.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        this.mFragmentStore.v();
        Iterator<String> it = fragmentManagerState.mActive.iterator();
        while (it.hasNext()) {
            FragmentState fragmentStateB = this.mFragmentStore.B(it.next(), null);
            if (fragmentStateB != null) {
                Fragment fragmentF = this.mNonConfig.f(fragmentStateB.mWho);
                if (fragmentF != null) {
                    if (P0(2)) {
                        Log.v(TAG, "restoreSaveState: re-attaching retained " + fragmentF);
                    }
                    fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragmentF, fragmentStateB);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, this.mHost.f().getClassLoader(), z0(), fragmentStateB);
                }
                Fragment fragmentK = fragmentStateManager.k();
                fragmentK.mFragmentManager = this;
                if (P0(2)) {
                    Log.v(TAG, "restoreSaveState: active (" + fragmentK.mWho + "): " + fragmentK);
                }
                fragmentStateManager.o(this.mHost.f().getClassLoader());
                this.mFragmentStore.r(fragmentStateManager);
                fragmentStateManager.u(this.mCurState);
            }
        }
        for (Fragment fragment : this.mNonConfig.i()) {
            if (!this.mFragmentStore.c(fragment.mWho)) {
                if (P0(2)) {
                    Log.v(TAG, "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.mActive);
                }
                this.mNonConfig.l(fragment);
                fragment.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragment);
                fragmentStateManager2.u(1);
                fragmentStateManager2.m();
                fragment.mRemoving = true;
                fragmentStateManager2.m();
            }
        }
        this.mFragmentStore.w(fragmentManagerState.mAdded);
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
            int i10 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.mBackStack;
                if (i10 >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecord backStackRecordC = backStackRecordStateArr[i10].c(this);
                if (P0(2)) {
                    Log.v(TAG, "restoreAllState: back stack #" + i10 + " (index " + backStackRecordC.mIndex + "): " + backStackRecordC);
                    PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
                    backStackRecordC.J("  ", printWriter, false);
                    printWriter.close();
                }
                this.mBackStack.add(backStackRecordC);
                i10++;
            }
        } else {
            this.mBackStack = null;
        }
        this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
        String str3 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str3 != null) {
            Fragment fragmentJ0 = j0(str3);
            this.mPrimaryNav = fragmentJ0;
            P(fragmentJ0);
        }
        ArrayList<String> arrayList2 = fragmentManagerState.mBackStackStateKeys;
        if (arrayList2 != null) {
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                this.mBackStackStates.put(arrayList2.get(i11), fragmentManagerState.mBackStackStates.get(i11));
            }
        }
        this.mLaunchedFragments = new ArrayDeque<>(fragmentManagerState.mLaunchedFragments);
    }

    @NonNull
    FragmentStateManager z(@NonNull Fragment fragment) {
        FragmentStateManager fragmentStateManagerN = this.mFragmentStore.n(fragment.mWho);
        if (fragmentStateManagerN != null) {
            return fragmentStateManagerN;
        }
        FragmentStateManager fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, fragment);
        fragmentStateManager.o(this.mHost.f().getClassLoader());
        fragmentStateManager.u(this.mCurState);
        return fragmentStateManager;
    }

    @NonNull
    public FragmentFactory z0() {
        FragmentFactory fragmentFactory = this.mFragmentFactory;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.z0() : this.mHostFragmentFactory;
    }

    private void I1(@NonNull Fragment fragment) {
        ViewGroup viewGroupY0 = y0(fragment);
        if (viewGroupY0 != null && fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() > 0) {
            int i10 = R.id.visible_removing_fragment_view_tag;
            if (viewGroupY0.getTag(i10) == null) {
                viewGroupY0.setTag(i10, fragment);
            }
            ((Fragment) viewGroupY0.getTag(i10)).setPopDirection(fragment.getPopDirection());
        }
    }

    private void L1(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.h("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            a0("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e(TAG, "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0(Integer num) {
        if (num.intValue() == 80) {
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z0(MultiWindowModeChangedInfo multiWindowModeChangedInfo) {
        K(multiWindowModeChangedInfo.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a1(PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo) {
        R(pictureInPictureModeChangedInfo.a());
    }

    private void b0() {
        Iterator<SpecialEffectsController> it = x().iterator();
        while (it.hasNext()) {
            it.next().j();
        }
    }

    private void h0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i10, int i11) {
        boolean z6 = arrayList.get(i10).mReorderingAllowed;
        ArrayList<Fragment> arrayList3 = this.mTmpAddedFragments;
        if (arrayList3 == null) {
            this.mTmpAddedFragments = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.mTmpAddedFragments.addAll(this.mFragmentStore.o());
        Fragment fragmentG0 = G0();
        boolean z10 = false;
        for (int i12 = i10; i12 < i11; i12++) {
            BackStackRecord backStackRecord = arrayList.get(i12);
            if (!arrayList2.get(i12).booleanValue()) {
                fragmentG0 = backStackRecord.M(this.mTmpAddedFragments, fragmentG0);
            } else {
                fragmentG0 = backStackRecord.O(this.mTmpAddedFragments, fragmentG0);
            }
            if (!z10 && !backStackRecord.mAddToBackStack) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        this.mTmpAddedFragments.clear();
        if (!z6 && this.mCurState >= 1) {
            for (int i13 = i10; i13 < i11; i13++) {
                Iterator<FragmentTransaction.Op> it = arrayList.get(i13).mOps.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().mFragment;
                    if (fragment != null && fragment.mFragmentManager != null) {
                        this.mFragmentStore.r(z(fragment));
                    }
                }
            }
        }
        g0(arrayList, arrayList2, i10, i11);
        boolean zBooleanValue = arrayList2.get(i11 - 1).booleanValue();
        for (int i14 = i10; i14 < i11; i14++) {
            BackStackRecord backStackRecord2 = arrayList.get(i14);
            if (zBooleanValue) {
                for (int size = backStackRecord2.mOps.size() - 1; size >= 0; size--) {
                    Fragment fragment2 = backStackRecord2.mOps.get(size).mFragment;
                    if (fragment2 != null) {
                        z(fragment2).m();
                    }
                }
            } else {
                Iterator<FragmentTransaction.Op> it2 = backStackRecord2.mOps.iterator();
                while (it2.hasNext()) {
                    Fragment fragment3 = it2.next().mFragment;
                    if (fragment3 != null) {
                        z(fragment3).m();
                    }
                }
            }
        }
        e1(this.mCurState, true);
        for (SpecialEffectsController specialEffectsController : y(arrayList, i10, i11)) {
            specialEffectsController.r(zBooleanValue);
            specialEffectsController.p();
            specialEffectsController.g();
        }
        while (i10 < i11) {
            BackStackRecord backStackRecord3 = arrayList.get(i10);
            if (arrayList2.get(i10).booleanValue() && backStackRecord3.mIndex >= 0) {
                backStackRecord3.mIndex = -1;
            }
            backStackRecord3.N();
            i10++;
        }
        if (z10) {
            v1();
        }
    }

    @NonNull
    static FragmentManager o0(@NonNull View view) {
        FragmentActivity fragmentActivity;
        Fragment fragmentP0 = p0(view);
        if (fragmentP0 != null) {
            if (fragmentP0.isAdded()) {
                return fragmentP0.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + fragmentP0 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (context instanceof ContextWrapper) {
                if (context instanceof FragmentActivity) {
                    fragmentActivity = (FragmentActivity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                fragmentActivity = null;
                break;
            }
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    private void q0() {
        Iterator<SpecialEffectsController> it = x().iterator();
        while (it.hasNext()) {
            it.next().k();
        }
    }

    private void s() {
        if (!V0()) {
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void t1(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                if (!arrayList.get(i10).mReorderingAllowed) {
                    if (i11 != i10) {
                        h0(arrayList, arrayList2, i11, i10);
                    }
                    i11 = i10 + 1;
                    if (arrayList2.get(i10).booleanValue()) {
                        while (i11 < size && arrayList2.get(i11).booleanValue() && !arrayList.get(i11).mReorderingAllowed) {
                            i11++;
                        }
                    }
                    h0(arrayList, arrayList2, i10, i11);
                    i10 = i11 - 1;
                }
                i10++;
            }
            if (i11 != size) {
                h0(arrayList, arrayList2, i11, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    void F1(@NonNull Fragment fragment, boolean z6) {
        ViewGroup viewGroupY0 = y0(fragment);
        if (viewGroupY0 != null && (viewGroupY0 instanceof FragmentContainerView)) {
            ((FragmentContainerView) viewGroupY0).setDrawDisappearingViewsLast(!z6);
        }
    }

    void T() {
        N1();
        P(this.mPrimaryNav);
    }

    boolean e0(boolean z6) {
        d0(z6);
        boolean z10 = false;
        while (r0(this.mTmpRecords, this.mTmpIsPop)) {
            z10 = true;
            this.mExecutingActions = true;
            try {
                t1(this.mTmpRecords, this.mTmpIsPop);
                t();
            } catch (Throwable th) {
                t();
                throw th;
            }
        }
        N1();
        Z();
        this.mFragmentStore.b();
        return z10;
    }

    void h1(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment fragmentK = fragmentStateManager.k();
        if (fragmentK.mDeferStart) {
            if (this.mExecutingActions) {
                this.mHavePendingDeferredStart = true;
            } else {
                fragmentK.mDeferStart = false;
                fragmentStateManager.m();
            }
        }
    }

    boolean u(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        if (!x1(arrayList, arrayList2, str)) {
            return false;
        }
        return p1(arrayList, arrayList2, str, -1, 1);
    }

    @Nullable
    public Fragment x0(@NonNull Bundle bundle, @NonNull String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentJ0 = j0(string);
        if (fragmentJ0 == null) {
            L1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragmentJ0;
    }
}
