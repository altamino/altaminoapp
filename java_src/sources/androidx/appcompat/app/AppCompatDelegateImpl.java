package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.StandaloneActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.PopupWindowCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private static boolean sInstalledExceptionHandler;
    ActionBar mActionBar;
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private boolean mActivityHandlesUiMode;
    private boolean mActivityHandlesUiModeChecked;
    final AppCompatCallback mAppCompatCallback;
    private AppCompatViewInflater mAppCompatViewInflater;
    private AppCompatWindowCallback mAppCompatWindowCallback;
    private AutoNightModeManager mAutoBatteryNightModeManager;
    private AutoNightModeManager mAutoTimeNightModeManager;
    private boolean mBaseContextAttached;
    private boolean mClosingActionMenu;
    final Context mContext;
    private boolean mCreated;
    private DecorContentParent mDecorContentParent;
    boolean mDestroyed;
    private Configuration mEffectiveConfiguration;
    private boolean mEnableDefaultActionBarUp;
    ViewPropertyAnimatorCompat mFadeAnim;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    private boolean mHandleNativeActionModes;
    boolean mHasActionBar;
    final Object mHost;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    boolean mIsFloating;
    private LayoutIncludeDetector mLayoutIncludeDetector;
    private int mLocalNightMode;
    private boolean mLongPressBackDown;
    MenuInflater mMenuInflater;
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private int mThemeResId;
    private CharSequence mTitle;
    private TextView mTitleView;
    Window mWindow;
    boolean mWindowNoTitle;
    private static final SimpleArrayMap<String, Integer> sLocalNightModes = new SimpleArrayMap<>();
    private static final boolean IS_PRE_LOLLIPOP = false;
    private static final int[] sWindowBackgroundStyleable = {R.attr.windowBackground};
    private static final boolean sCanReturnDifferentContext = !"robolectric".equals(Build.FINGERPRINT);
    private static final boolean sCanApplyOverrideConfiguration = true;

    /* JADX INFO: renamed from: androidx.appcompat.app.AppCompatDelegateImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Thread.UncaughtExceptionHandler {
        final /* synthetic */ Thread.UncaughtExceptionHandler val$defHandler;

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            if (a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + AppCompatDelegateImpl.EXCEPTION_HANDLER_MESSAGE_SUFFIX);
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.val$defHandler.uncaughtException(thread, notFoundException);
                return;
            }
            this.val$defHandler.uncaughtException(thread, th);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AppCompatDelegateImpl$4, reason: invalid class name */
    class AnonymousClass4 implements FitWindowsViewGroup.OnFitSystemWindowsListener {
        final /* synthetic */ AppCompatDelegateImpl this$0;

        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
        public void a(Rect rect) {
            rect.top = this.this$0.N0(null, rect);
        }
    }

    private class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        ActionBarDrawableToggleImpl() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void b(int i10) {
            ActionBar actionBarN = AppCompatDelegateImpl.this.n();
            if (actionBarN != null) {
                actionBarN.u(i10);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context c() {
            return AppCompatDelegateImpl.this.d0();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void d(Drawable drawable, int i10) {
            ActionBar actionBarN = AppCompatDelegateImpl.this.n();
            if (actionBarN != null) {
                actionBarN.v(drawable);
                actionBarN.u(i10);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable a() {
            TintTypedArray tintTypedArrayU = TintTypedArray.u(c(), null, new int[]{androidx.appcompat.R.attr.homeAsUpIndicator});
            Drawable drawableG = tintTypedArrayU.g(0);
            tintTypedArrayU.w();
            return drawableG;
        }
    }

    interface ActionBarMenuCallback {
        boolean a(int i10);

        @Nullable
        View onCreatePanelView(int i10);
    }

    private final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void a(@NonNull MenuBuilder menuBuilder, boolean z6) {
            AppCompatDelegateImpl.this.O(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean b(@NonNull MenuBuilder menuBuilder) {
            Window.Callback callbackI0 = AppCompatDelegateImpl.this.i0();
            if (callbackI0 == null) {
                return true;
            }
            callbackI0.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    class ActionModeCallbackWrapperV9 implements ActionMode.Callback {
        private ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean a(ActionMode actionMode, Menu menu) {
            return this.mWrapped.a(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean b(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.b(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean c(ActionMode actionMode, Menu menu) {
            ViewCompat.q0(AppCompatDelegateImpl.this.mSubDecor);
            return this.mWrapped.c(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void d(ActionMode actionMode) {
            this.mWrapped.d(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.mActionModePopup != null) {
                appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.mShowActionModePopup);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.mActionModeView != null) {
                appCompatDelegateImpl2.Y();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.mFadeAnim = ViewCompat.e(appCompatDelegateImpl3.mActionModeView).b(0.0f);
                AppCompatDelegateImpl.this.mFadeAnim.h(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public void b(View view) {
                        AppCompatDelegateImpl.this.mActionModeView.setVisibility(8);
                        AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
                        PopupWindow popupWindow = appCompatDelegateImpl4.mActionModePopup;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl4.mActionModeView.getParent() instanceof View) {
                            ViewCompat.q0((View) AppCompatDelegateImpl.this.mActionModeView.getParent());
                        }
                        AppCompatDelegateImpl.this.mActionModeView.l();
                        AppCompatDelegateImpl.this.mFadeAnim.h(null);
                        AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
                        appCompatDelegateImpl5.mFadeAnim = null;
                        ViewCompat.q0(appCompatDelegateImpl5.mSubDecor);
                    }
                });
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AppCompatCallback appCompatCallback = appCompatDelegateImpl4.mAppCompatCallback;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.mActionMode);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.mActionMode = null;
            ViewCompat.q0(appCompatDelegateImpl5.mSubDecor);
        }
    }

    @RequiresApi
    static class Api17Impl {
        static void b(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i10 = configuration.densityDpi;
            int i11 = configuration2.densityDpi;
            if (i10 != i11) {
                configuration3.densityDpi = i11;
            }
        }

        private Api17Impl() {
        }

        static Context a(@NonNull Context context, @NonNull Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }
    }

    class AppCompatWindowCallback extends WindowCallbackWrapper {
        private ActionBarMenuCallback mActionBarCallback;

        void b(@Nullable ActionBarMenuCallback actionBarMenuCallback) {
            this.mActionBarCallback = actionBarMenuCallback;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback) {
            return null;
        }

        AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        final android.view.ActionMode c(android.view.ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImpl.this.mContext, callback);
            ActionMode actionModeH = AppCompatDelegateImpl.this.H(callbackWrapper);
            if (actionModeH != null) {
                return callbackWrapper.e(actionModeH);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.W(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i10) {
            View viewOnCreatePanelView;
            ActionBarMenuCallback actionBarMenuCallback = this.mActionBarCallback;
            return (actionBarMenuCallback == null || (viewOnCreatePanelView = actionBarMenuCallback.onCreatePanelView(i10)) == null) ? super.onCreatePanelView(i10) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i10 == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.e0(true);
            }
            ActionBarMenuCallback actionBarMenuCallback = this.mActionBarCallback;
            boolean zOnPreparePanel = actionBarMenuCallback != null && actionBarMenuCallback.a(i10);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i10, view, menu);
            }
            if (menuBuilder != null) {
                menuBuilder.e0(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i10) {
            MenuBuilder menuBuilder;
            PanelFeatureState panelFeatureStateG0 = AppCompatDelegateImpl.this.g0(0, true);
            if (panelFeatureStateG0 == null || (menuBuilder = panelFeatureStateG0.menu) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i10);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int i10) {
            return (AppCompatDelegateImpl.this.p0() && i10 == 0) ? c(callback) : super.onWindowStartingActionMode(callback, i10);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!super.dispatchKeyShortcutEvent(keyEvent) && !AppCompatDelegateImpl.this.u0(keyEvent.getKeyCode(), keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            AppCompatDelegateImpl.this.x0(i10);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i10, Menu menu) {
            super.onPanelClosed(i10, menu);
            AppCompatDelegateImpl.this.y0(i10);
        }
    }

    private class AutoBatteryNightModeManager extends AutoNightModeManager {
        private final PowerManager mPowerManager;

        AutoBatteryNightModeManager(Context context) {
            super();
            this.mPowerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int c() {
            return Api21Impl.a(this.mPowerManager) ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void d() {
            AppCompatDelegateImpl.this.I();
        }
    }

    @RestrictTo
    @VisibleForTesting
    abstract class AutoNightModeManager {
        private BroadcastReceiver mReceiver;

        @Nullable
        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        AutoNightModeManager() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.mReceiver;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.mContext.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.mReceiver = null;
            }
        }

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB != null && intentFilterB.countActions() != 0) {
                if (this.mReceiver == null) {
                    this.mReceiver = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                        @Override // android.content.BroadcastReceiver
                        public void onReceive(Context context, Intent intent) {
                            AutoNightModeManager.this.d();
                        }
                    };
                }
                AppCompatDelegateImpl.this.mContext.registerReceiver(this.mReceiver, intentFilterB);
            }
        }
    }

    private class AutoTimeNightModeManager extends AutoNightModeManager {
        private final TwilightManager mTwilightManager;

        AutoTimeNightModeManager(TwilightManager twilightManager) {
            super();
            this.mTwilightManager = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int c() {
            return this.mTwilightManager.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void d() {
            AppCompatDelegateImpl.this.I();
        }
    }

    private class ListMenuDecorView extends ContentFrameLayout {
        private boolean b(int i10, int i11) {
            return i10 < -5 || i11 < -5 || i10 > getWidth() + 5 || i11 > getHeight() + 5;
        }

        public ListMenuDecorView(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.W(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                AppCompatDelegateImpl.this.Q(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(AppCompatResources.b(getContext(), i10));
        }
    }

    protected static final class PanelFeatureState {
        int background;
        View createdPanelView;
        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int gravity;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        Context listPresenterContext;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastOpen;
        int windowAnimations;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f52x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f53y;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }
            };
            int featureId;
            boolean isOpen;
            Bundle menuState;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z6 = parcel.readInt() == 1;
                savedState.isOpen = z6;
                if (z6) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }

            SavedState() {
            }
        }

        MenuView a(MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, androidx.appcompat.R.layout.abc_list_menu_item_layout);
                this.listMenuPresenter = listMenuPresenter;
                listMenuPresenter.h(callback);
                this.menu.b(this.listMenuPresenter);
            }
            return this.listMenuPresenter.l(this.decorView);
        }

        public boolean b() {
            if (this.shownPanelView == null) {
                return false;
            }
            return this.createdPanelView != null || this.listMenuPresenter.i().getCount() > 0;
        }

        void c(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.menu;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.Q(this.listMenuPresenter);
            }
            this.menu = menuBuilder;
            if (menuBuilder == null || (listMenuPresenter = this.listMenuPresenter) == null) {
                return;
            }
            menuBuilder.b(listMenuPresenter);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarPopupTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                themeNewTheme.applyStyle(i10, true);
            }
            themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.panelMenuListTheme, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                themeNewTheme.applyStyle(i11, true);
            } else {
                themeNewTheme.applyStyle(androidx.appcompat.R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(themeNewTheme);
            this.listPresenterContext = contextThemeWrapper;
            TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
            this.background = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_panelBackground, 0);
            this.windowAnimations = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        PanelFeatureState(int i10) {
            this.featureId = i10;
        }
    }

    private final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void a(@NonNull MenuBuilder menuBuilder, boolean z6) {
            boolean z10;
            MenuBuilder menuBuilderF = menuBuilder.F();
            if (menuBuilderF != menuBuilder) {
                z10 = true;
            } else {
                z10 = false;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z10) {
                menuBuilder = menuBuilderF;
            }
            PanelFeatureState panelFeatureStateB0 = appCompatDelegateImpl.b0(menuBuilder);
            if (panelFeatureStateB0 != null) {
                if (z10) {
                    AppCompatDelegateImpl.this.N(panelFeatureStateB0.featureId, panelFeatureStateB0, menuBuilderF);
                    AppCompatDelegateImpl.this.R(panelFeatureStateB0, true);
                } else {
                    AppCompatDelegateImpl.this.R(panelFeatureStateB0, z6);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean b(@NonNull MenuBuilder menuBuilder) {
            Window.Callback callbackI0;
            if (menuBuilder == menuBuilder.F()) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (appCompatDelegateImpl.mHasActionBar && (callbackI0 = appCompatDelegateImpl.i0()) != null && !AppCompatDelegateImpl.this.mDestroyed) {
                    callbackI0.onMenuOpened(108, menuBuilder);
                    return true;
                }
                return true;
            }
            return true;
        }
    }

    AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }

    private boolean H0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.W((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @NonNull
    private Configuration S(@NonNull Context context, int i10, @Nullable Configuration configuration) {
        int i11;
        if (i10 != 1) {
            i11 = i10 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32;
        } else {
            i11 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    final ActionBar B0() {
        return this.mActionBar;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void F(@StyleRes int i10) {
        this.mThemeResId = i10;
    }

    public boolean I() {
        return J(true);
    }

    final int N0(@Nullable WindowInsetsCompat windowInsetsCompat, @Nullable Rect rect) {
        int iM;
        boolean z6;
        boolean z10;
        if (windowInsetsCompat != null) {
            iM = windowInsetsCompat.m();
        } else {
            iM = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.mActionModeView;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z6 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mActionModeView.getLayoutParams();
            boolean z11 = true;
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect2 = this.mTempRect1;
                Rect rect3 = this.mTempRect2;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.k(), windowInsetsCompat.m(), windowInsetsCompat.l(), windowInsetsCompat.j());
                }
                ViewUtils.a(this.mSubDecor, rect2, rect3);
                int i10 = rect2.top;
                int i11 = rect2.left;
                int i12 = rect2.right;
                WindowInsetsCompat windowInsetsCompatK = ViewCompat.K(this.mSubDecor);
                int iK = windowInsetsCompatK == null ? 0 : windowInsetsCompatK.k();
                int iL = windowInsetsCompatK == null ? 0 : windowInsetsCompatK.l();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z10 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z10 = true;
                }
                if (i10 <= 0 || this.mStatusGuard != null) {
                    View view = this.mStatusGuard;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iK || marginLayoutParams2.rightMargin != iL) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iK;
                            marginLayoutParams2.rightMargin = iL;
                            this.mStatusGuard.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.mContext);
                    this.mStatusGuard = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iK;
                    layoutParams.rightMargin = iL;
                    this.mSubDecor.addView(this.mStatusGuard, -1, layoutParams);
                }
                View view3 = this.mStatusGuard;
                z11 = view3 != null;
                if (z11 && view3.getVisibility() != 0) {
                    O0(this.mStatusGuard);
                }
                if (!this.mOverlayActionMode && z11) {
                    iM = 0;
                }
                z6 = z11;
                z11 = z10;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z6 = false;
            } else {
                z6 = false;
                z11 = false;
            }
            if (z11) {
                this.mActionModeView.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.mStatusGuard;
        if (view4 != null) {
            view4.setVisibility(z6 ? 0 : 8);
        }
        return iM;
    }

    void Q(int i10) {
        R(g0(i10, true), true);
    }

    void X(int i10) {
        PanelFeatureState panelFeatureStateG0;
        PanelFeatureState panelFeatureStateG1 = g0(i10, true);
        if (panelFeatureStateG1.menu != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateG1.menu.T(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateG1.frozenActionViewState = bundle;
            }
            panelFeatureStateG1.menu.h0();
            panelFeatureStateG1.menu.clear();
        }
        panelFeatureStateG1.refreshMenuContent = true;
        panelFeatureStateG1.refreshDecorView = true;
        if ((i10 != 108 && i10 != 0) || this.mDecorContentParent == null || (panelFeatureStateG0 = g0(0, false)) == null) {
            return;
        }
        panelFeatureStateG0.isPrepared = false;
        D0(panelFeatureStateG0, null);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void b(@NonNull MenuBuilder menuBuilder) {
        E0(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context f(@NonNull Context context) {
        this.mBaseContextAttached = true;
        int iQ0 = q0(context, M());
        if (sCanApplyOverrideConfiguration && (context instanceof android.view.ContextThemeWrapper)) {
            try {
                ContextThemeWrapperCompatApi17Impl.a((android.view.ContextThemeWrapper) context, S(context, iQ0, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).a(S(context, iQ0, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!sCanReturnDifferentContext) {
            return super.f(context);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = Api17Impl.a(context, configuration).getResources().getConfiguration();
        Configuration configuration3 = context.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration configurationS = S(context, iQ0, configuration2.equals(configuration3) ? null : c0(configuration2, configuration3));
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, androidx.appcompat.R.style.Theme_AppCompat_Empty);
        contextThemeWrapper.a(configurationS);
        try {
            if (context.getTheme() != null) {
                ResourcesCompat.ThemeCompat.a(contextThemeWrapper.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.f(contextThemeWrapper);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int l() {
        return this.mLocalNightMode;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return U(view, str, context, attributeSet);
    }

    public boolean p0() {
        return this.mHandleNativeActionModes;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void r(Bundle bundle) {
        String strC;
        this.mBaseContextAttached = true;
        J(false);
        a0();
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            try {
                strC = NavUtils.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                ActionBar actionBarB0 = B0();
                if (actionBarB0 == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    actionBarB0.s(true);
                }
            }
            AppCompatDelegate.c(this);
        }
        this.mEffectiveConfiguration = new Configuration(this.mContext.getResources().getConfiguration());
        this.mCreated = true;
    }

    boolean s0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            this.mLongPressBackDown = (keyEvent.getFlags() & 128) != 0;
        } else if (i10 == 82) {
            t0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void v(Bundle bundle) {
    }

    boolean v0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            boolean z6 = this.mLongPressBackDown;
            this.mLongPressBackDown = false;
            PanelFeatureState panelFeatureStateG0 = g0(0, false);
            if (panelFeatureStateG0 != null && panelFeatureStateG0.isOpen) {
                if (!z6) {
                    R(panelFeatureStateG0, true);
                }
                return true;
            }
            if (r0()) {
                return true;
            }
        } else if (i10 == 82) {
            w0(0, keyEvent);
            return true;
        }
        return false;
    }

    void z0(ViewGroup viewGroup) {
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                configuration3.colorMode |= configuration2.colorMode & 3;
            }
            if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                configuration3.colorMode |= configuration2.colorMode & 12;
            }
        }
    }

    @RequiresApi
    private static class ContextThemeWrapperCompatApi17Impl {
        private ContextThemeWrapperCompatApi17Impl() {
        }

        static void a(android.view.ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    private void A0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i10;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.isOpen || this.mDestroyed) {
            return;
        }
        if (panelFeatureState.featureId == 0 && (this.mContext.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callbackI0 = i0();
        if (callbackI0 != null && !callbackI0.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
            R(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && D0(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.decorView;
            if (viewGroup != null && !panelFeatureState.refreshDecorView) {
                View view = panelFeatureState.createdPanelView;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i10 = -1;
                }
                panelFeatureState.isHandled = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i10, -2, panelFeatureState.f52x, panelFeatureState.f53y, 1002, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.gravity;
                layoutParams2.windowAnimations = panelFeatureState.windowAnimations;
                windowManager.addView(panelFeatureState.decorView, layoutParams2);
                panelFeatureState.isOpen = true;
            }
            if (viewGroup == null) {
                if (!l0(panelFeatureState) || panelFeatureState.decorView == null) {
                    return;
                }
            } else if (panelFeatureState.refreshDecorView && viewGroup.getChildCount() > 0) {
                panelFeatureState.decorView.removeAllViews();
            }
            if (!k0(panelFeatureState) || !panelFeatureState.b()) {
                panelFeatureState.refreshDecorView = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = panelFeatureState.shownPanelView.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.decorView.setBackgroundResource(panelFeatureState.background);
            ViewParent parent = panelFeatureState.shownPanelView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
            }
            panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams3);
            if (!panelFeatureState.shownPanelView.hasFocus()) {
                panelFeatureState.shownPanelView.requestFocus();
            }
            i10 = -2;
            panelFeatureState.isHandled = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i10, -2, panelFeatureState.f52x, panelFeatureState.f53y, 1002, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.gravity;
            layoutParams4.windowAnimations = panelFeatureState.windowAnimations;
            windowManager.addView(panelFeatureState.decorView, layoutParams4);
            panelFeatureState.isOpen = true;
        }
    }

    private boolean D0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.mDestroyed) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            R(panelFeatureState2, false);
        }
        Window.Callback callbackI0 = i0();
        if (callbackI0 != null) {
            panelFeatureState.createdPanelView = callbackI0.onCreatePanelView(panelFeatureState.featureId);
        }
        int i10 = panelFeatureState.featureId;
        boolean z6 = i10 == 0 || i10 == 108;
        if (z6 && (decorContentParent3 = this.mDecorContentParent) != null) {
            decorContentParent3.f();
        }
        if (panelFeatureState.createdPanelView == null && (!z6 || !(B0() instanceof ToolbarActionBar))) {
            MenuBuilder menuBuilder = panelFeatureState.menu;
            if (menuBuilder == null || panelFeatureState.refreshMenuContent) {
                if (menuBuilder == null && (!m0(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z6 && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.e(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.h0();
                if (!callbackI0.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.c(null);
                    if (z6 && (decorContentParent = this.mDecorContentParent) != null) {
                        decorContentParent.e(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.h0();
            Bundle bundle = panelFeatureState.frozenActionViewState;
            if (bundle != null) {
                panelFeatureState.menu.R(bundle);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!callbackI0.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z6 && (decorContentParent2 = this.mDecorContentParent) != null) {
                    decorContentParent2.e(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.g0();
                return false;
            }
            boolean z10 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = z10;
            panelFeatureState.menu.setQwertyMode(z10);
            panelFeatureState.menu.g0();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    private void E0(boolean z6) {
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent == null || !decorContentParent.a() || (ViewConfiguration.get(this.mContext).hasPermanentMenuKey() && !this.mDecorContentParent.g())) {
            PanelFeatureState panelFeatureStateG0 = g0(0, true);
            panelFeatureStateG0.refreshDecorView = true;
            R(panelFeatureStateG0, false);
            A0(panelFeatureStateG0, null);
            return;
        }
        Window.Callback callbackI0 = i0();
        if (this.mDecorContentParent.c() && z6) {
            this.mDecorContentParent.d();
            if (this.mDestroyed) {
                return;
            }
            callbackI0.onPanelClosed(108, g0(0, true).menu);
            return;
        }
        if (callbackI0 == null || this.mDestroyed) {
            return;
        }
        if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
        }
        PanelFeatureState panelFeatureStateG1 = g0(0, true);
        MenuBuilder menuBuilder = panelFeatureStateG1.menu;
        if (menuBuilder == null || panelFeatureStateG1.refreshMenuContent || !callbackI0.onPreparePanel(0, panelFeatureStateG1.createdPanelView, menuBuilder)) {
            return;
        }
        callbackI0.onMenuOpened(108, panelFeatureStateG1.menu);
        this.mDecorContentParent.b();
    }

    private int F0(int i10) {
        if (i10 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i10 != 9) {
            return i10;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean J(boolean z6) {
        if (this.mDestroyed) {
            return false;
        }
        int iM = M();
        boolean zL0 = L0(q0(this.mContext, iM), z6);
        if (iM == 0) {
            f0(this.mContext).e();
        } else {
            AutoNightModeManager autoNightModeManager = this.mAutoTimeNightModeManager;
            if (autoNightModeManager != null) {
                autoNightModeManager.a();
            }
        }
        if (iM == 3) {
            e0(this.mContext).e();
        } else {
            AutoNightModeManager autoNightModeManager2 = this.mAutoBatteryNightModeManager;
            if (autoNightModeManager2 != null) {
                autoNightModeManager2.a();
            }
        }
        return zL0;
    }

    private void J0() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private void K() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(R.id.content);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        int i10 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            typedArrayObtainStyledAttributes.getValue(i10, contentFrameLayout.getFixedWidthMajor());
        }
        int i11 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            typedArrayObtainStyledAttributes.getValue(i11, contentFrameLayout.getFixedWidthMinor());
        }
        int i12 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            typedArrayObtainStyledAttributes.getValue(i12, contentFrameLayout.getFixedHeightMajor());
        }
        int i13 = androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            typedArrayObtainStyledAttributes.getValue(i13, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    @Nullable
    private AppCompatActivity K0() {
        for (Context baseContext = this.mContext; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof AppCompatActivity) {
                return (AppCompatActivity) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void L(@NonNull Window window) {
        if (this.mWindow != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof AppCompatWindowCallback) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
        this.mAppCompatWindowCallback = appCompatWindowCallback;
        window.setCallback(appCompatWindowCallback);
        TintTypedArray tintTypedArrayU = TintTypedArray.u(this.mContext, null, sWindowBackgroundStyleable);
        Drawable drawableH = tintTypedArrayU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        tintTypedArrayU.w();
        this.mWindow = window;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    private boolean L0(int i10, boolean z6) {
        boolean z10;
        Configuration configurationS = S(this.mContext, i10, null);
        boolean zO0 = o0();
        Configuration configuration = this.mEffectiveConfiguration;
        if (configuration == null) {
            configuration = this.mContext.getResources().getConfiguration();
        }
        int i11 = configuration.uiMode & 48;
        int i12 = configurationS.uiMode & 48;
        boolean z11 = true;
        if (i11 != i12 && z6 && !zO0 && this.mBaseContextAttached && (sCanReturnDifferentContext || this.mCreated)) {
            Object obj = this.mHost;
            if (!(obj instanceof Activity) || ((Activity) obj).isChild()) {
                z10 = false;
            } else {
                ActivityCompat.f((Activity) this.mHost);
                z10 = true;
            }
        } else {
            z10 = false;
        }
        if (z10 || i11 == i12) {
            z11 = z10;
        } else {
            M0(i12, zO0, null);
        }
        if (z11) {
            Object obj2 = this.mHost;
            if (obj2 instanceof AppCompatActivity) {
                ((AppCompatActivity) obj2).onNightModeChanged(i10);
            }
        }
        return z11;
    }

    private int M() {
        int i10 = this.mLocalNightMode;
        return i10 != -100 ? i10 : AppCompatDelegate.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void M0(int i10, boolean z6, @Nullable Configuration configuration) {
        Resources resources = this.mContext.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            ResourcesFlusher.a(resources);
        }
        int i11 = this.mThemeResId;
        if (i11 != 0) {
            this.mContext.setTheme(i11);
            this.mContext.getTheme().applyStyle(this.mThemeResId, true);
        }
        if (z6) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity).getLifecycle().b().b(Lifecycle.State.CREATED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else {
                    if (!this.mCreated || this.mDestroyed) {
                        return;
                    }
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    private void P() {
        AutoNightModeManager autoNightModeManager = this.mAutoTimeNightModeManager;
        if (autoNightModeManager != null) {
            autoNightModeManager.a();
        }
        AutoNightModeManager autoNightModeManager2 = this.mAutoBatteryNightModeManager;
        if (autoNightModeManager2 != null) {
            autoNightModeManager2.a();
        }
    }

    private ViewGroup T() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        int i10 = androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i10)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            A(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i10, false)) {
            A(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            A(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            A(10);
        }
        this.mIsFloating = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        a0();
        this.mWindow.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (this.mWindowNoTitle) {
            viewGroup = this.mOverlayActionMode ? (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.mIsFloating) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.mOverlayActionBar = false;
            this.mHasActionBar = false;
        } else if (this.mHasActionBar) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(this.mContext, typedValue.resourceId) : this.mContext).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
            DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
            this.mDecorContentParent = decorContentParent;
            decorContentParent.setWindowCallback(i0());
            if (this.mOverlayActionBar) {
                this.mDecorContentParent.h(109);
            }
            if (this.mFeatureProgress) {
                this.mDecorContentParent.h(2);
            }
            if (this.mFeatureIndeterminateProgress) {
                this.mDecorContentParent.h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        ViewCompat.L0(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                int iM = windowInsetsCompat.m();
                int iN0 = AppCompatDelegateImpl.this.N0(windowInsetsCompat, null);
                if (iM != iN0) {
                    windowInsetsCompat = windowInsetsCompat.s(windowInsetsCompat.k(), iN0, windowInsetsCompat.l(), windowInsetsCompat.j());
                }
                return ViewCompat.f0(view, windowInsetsCompat);
            }
        });
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
        }
        ViewUtils.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.mWindow.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
            public void a() {
            }

            @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
            public void onDetachedFromWindow() {
                AppCompatDelegateImpl.this.V();
            }
        });
        return viewGroup;
    }

    private void Z() {
        if (this.mSubDecorInstalled) {
            return;
        }
        this.mSubDecor = T();
        CharSequence charSequenceH0 = h0();
        if (!TextUtils.isEmpty(charSequenceH0)) {
            DecorContentParent decorContentParent = this.mDecorContentParent;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(charSequenceH0);
            } else if (B0() != null) {
                B0().y(charSequenceH0);
            } else {
                TextView textView = this.mTitleView;
                if (textView != null) {
                    textView.setText(charSequenceH0);
                }
            }
        }
        K();
        z0(this.mSubDecor);
        this.mSubDecorInstalled = true;
        PanelFeatureState panelFeatureStateG0 = g0(0, false);
        if (this.mDestroyed) {
            return;
        }
        if (panelFeatureStateG0 == null || panelFeatureStateG0.menu == null) {
            n0(108);
        }
    }

    private void a0() {
        if (this.mWindow == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                L(((Activity) obj).getWindow());
            }
        }
        if (this.mWindow == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    @NonNull
    private static Configuration c0(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f = configuration.fontScale;
            float f6 = configuration2.fontScale;
            if (f != f6) {
                configuration3.fontScale = f6;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 24) {
                Api24Impl.a(configuration, configuration2, configuration3);
            } else if (!ObjectsCompat.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i15 = configuration.touchscreen;
            int i16 = configuration2.touchscreen;
            if (i15 != i16) {
                configuration3.touchscreen = i16;
            }
            int i17 = configuration.keyboard;
            int i18 = configuration2.keyboard;
            if (i17 != i18) {
                configuration3.keyboard = i18;
            }
            int i19 = configuration.keyboardHidden;
            int i20 = configuration2.keyboardHidden;
            if (i19 != i20) {
                configuration3.keyboardHidden = i20;
            }
            int i21 = configuration.navigation;
            int i22 = configuration2.navigation;
            if (i21 != i22) {
                configuration3.navigation = i22;
            }
            int i23 = configuration.navigationHidden;
            int i24 = configuration2.navigationHidden;
            if (i23 != i24) {
                configuration3.navigationHidden = i24;
            }
            int i25 = configuration.orientation;
            int i26 = configuration2.orientation;
            if (i25 != i26) {
                configuration3.orientation = i26;
            }
            int i27 = configuration.screenLayout & 15;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 15)) {
                configuration3.screenLayout |= i28 & 15;
            }
            int i29 = configuration.screenLayout & 192;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & 192)) {
                configuration3.screenLayout |= i30 & 192;
            }
            int i31 = configuration.screenLayout & 48;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 48)) {
                configuration3.screenLayout |= i32 & 48;
            }
            int i33 = configuration.screenLayout & 768;
            int i34 = configuration2.screenLayout;
            if (i33 != (i34 & 768)) {
                configuration3.screenLayout |= i34 & 768;
            }
            if (i14 >= 26) {
                Api26Impl.a(configuration, configuration2, configuration3);
            }
            int i35 = configuration.uiMode & 15;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 15)) {
                configuration3.uiMode |= i36 & 15;
            }
            int i37 = configuration.uiMode & 48;
            int i38 = configuration2.uiMode;
            if (i37 != (i38 & 48)) {
                configuration3.uiMode |= i38 & 48;
            }
            int i39 = configuration.screenWidthDp;
            int i40 = configuration2.screenWidthDp;
            if (i39 != i40) {
                configuration3.screenWidthDp = i40;
            }
            int i41 = configuration.screenHeightDp;
            int i42 = configuration2.screenHeightDp;
            if (i41 != i42) {
                configuration3.screenHeightDp = i42;
            }
            int i43 = configuration.smallestScreenWidthDp;
            int i44 = configuration2.smallestScreenWidthDp;
            if (i43 != i44) {
                configuration3.smallestScreenWidthDp = i44;
            }
            Api17Impl.b(configuration, configuration2, configuration3);
        }
        return configuration3;
    }

    private AutoNightModeManager e0(@NonNull Context context) {
        if (this.mAutoBatteryNightModeManager == null) {
            this.mAutoBatteryNightModeManager = new AutoBatteryNightModeManager(context);
        }
        return this.mAutoBatteryNightModeManager;
    }

    private AutoNightModeManager f0(@NonNull Context context) {
        if (this.mAutoTimeNightModeManager == null) {
            this.mAutoTimeNightModeManager = new AutoTimeNightModeManager(TwilightManager.a(context));
        }
        return this.mAutoTimeNightModeManager;
    }

    private boolean k0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.createdPanelView;
        if (view != null) {
            panelFeatureState.shownPanelView = view;
            return true;
        }
        if (panelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
        }
        View view2 = (View) panelFeatureState.a(this.mPanelMenuPresenterCallback);
        panelFeatureState.shownPanelView = view2;
        return view2 != null;
    }

    private boolean m0(PanelFeatureState panelFeatureState) {
        Resources.Theme themeNewTheme;
        Context context = this.mContext;
        int i10 = panelFeatureState.featureId;
        if ((i10 == 0 || i10 == 108) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
                themeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(themeNewTheme);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.V(this);
        panelFeatureState.c(menuBuilder);
        return true;
    }

    private void n0(int i10) {
        this.mInvalidatePanelMenuFeatures = (1 << i10) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        ViewCompat.l0(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    private boolean o0() {
        int i10;
        if (!this.mActivityHandlesUiModeChecked && (this.mHost instanceof Activity)) {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 29) {
                    i10 = 269221888;
                } else {
                    i10 = i11 >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.mContext, this.mHost.getClass()), i10);
                this.mActivityHandlesUiMode = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.mActivityHandlesUiMode = false;
            }
        }
        this.mActivityHandlesUiModeChecked = true;
        return this.mActivityHandlesUiMode;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    private boolean w0(int i10, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        if (this.mActionMode != null) {
            return false;
        }
        boolean zD = true;
        PanelFeatureState panelFeatureStateG0 = g0(i10, true);
        if (i10 != 0 || (decorContentParent = this.mDecorContentParent) == null || !decorContentParent.a() || ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) {
            boolean z6 = panelFeatureStateG0.isOpen;
            if (z6 || panelFeatureStateG0.isHandled) {
                R(panelFeatureStateG0, true);
                zD = z6;
            } else if (panelFeatureStateG0.isPrepared) {
                if (panelFeatureStateG0.refreshMenuContent) {
                    panelFeatureStateG0.isPrepared = false;
                    if (!D0(panelFeatureStateG0, keyEvent)) {
                        zD = false;
                    }
                }
                A0(panelFeatureStateG0, keyEvent);
            } else {
                zD = false;
            }
        } else if (this.mDecorContentParent.c()) {
            zD = this.mDecorContentParent.d();
        } else if (this.mDestroyed || !D0(panelFeatureStateG0, keyEvent)) {
            zD = false;
        } else {
            zD = this.mDecorContentParent.b();
        }
        if (zD) {
            AudioManager audioManager = (AudioManager) this.mContext.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zD;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void E(Toolbar toolbar) {
        if (this.mHost instanceof Activity) {
            ActionBar actionBarN = n();
            if (actionBarN instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.mMenuInflater = null;
            if (actionBarN != null) {
                actionBarN.o();
            }
            this.mActionBar = null;
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, h0(), this.mAppCompatWindowCallback);
                this.mActionBar = toolbarActionBar;
                this.mAppCompatWindowCallback.b(toolbarActionBar.mMenuCallback);
            } else {
                this.mAppCompatWindowCallback.b(null);
            }
            p();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void G(CharSequence charSequence) {
        this.mTitle = charSequence;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        if (B0() != null) {
            B0().y(charSequence);
            return;
        }
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    final boolean G0() {
        ViewGroup viewGroup;
        return this.mSubDecorInstalled && (viewGroup = this.mSubDecor) != null && ViewCompat.X(viewGroup);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionMode H(@NonNull ActionMode.Callback callback) {
        AppCompatCallback appCompatCallback;
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.c();
        }
        ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
        ActionBar actionBarN = n();
        if (actionBarN != null) {
            ActionMode actionModeZ = actionBarN.z(actionModeCallbackWrapperV9);
            this.mActionMode = actionModeZ;
            if (actionModeZ != null && (appCompatCallback = this.mAppCompatCallback) != null) {
                appCompatCallback.onSupportActionModeStarted(actionModeZ);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = I0(actionModeCallbackWrapperV9);
        }
        return this.mActionMode;
    }

    void N(int i10, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i10 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.mPanels;
                if (i10 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i10];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !this.mDestroyed) {
            this.mAppCompatWindowCallback.a().onPanelClosed(i10, menu);
        }
    }

    void O(@NonNull MenuBuilder menuBuilder) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.i();
        Window.Callback callbackI0 = i0();
        if (callbackI0 != null && !this.mDestroyed) {
            callbackI0.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    void R(PanelFeatureState panelFeatureState, boolean z6) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z6 && panelFeatureState.featureId == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.c()) {
            O(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && panelFeatureState.isOpen && (viewGroup = panelFeatureState.decorView) != null) {
            windowManager.removeView(viewGroup);
            if (z6) {
                N(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View U(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z6;
        boolean zH0 = false;
        if (this.mAppCompatViewInflater == null) {
            String string = this.mContext.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme).getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.mAppCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.mAppCompatViewInflater = (AppCompatViewInflater) this.mContext.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.mAppCompatViewInflater = new AppCompatViewInflater();
                }
            }
        }
        boolean z10 = IS_PRE_LOLLIPOP;
        if (z10) {
            if (this.mLayoutIncludeDetector == null) {
                this.mLayoutIncludeDetector = new LayoutIncludeDetector();
            }
            if (this.mLayoutIncludeDetector.a(attributeSet)) {
                z6 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zH0 = H0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zH0 = true;
                }
                z6 = zH0;
            }
        } else {
            z6 = zH0;
        }
        return this.mAppCompatViewInflater.r(view, str, context, attributeSet, z6, z10, true, VectorEnabledTintResources.c());
    }

    void V() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.i();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.mActionModePopup = null;
        }
        Y();
        PanelFeatureState panelFeatureStateG0 = g0(0, false);
        if (panelFeatureStateG0 == null || (menuBuilder = panelFeatureStateG0.menu) == null) {
            return;
        }
        menuBuilder.close();
    }

    boolean W(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.mHost;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof AppCompatDialog)) && (decorView = this.mWindow.getDecorView()) != null && KeyEventDispatcher.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.mAppCompatWindowCallback.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? s0(keyCode, keyEvent) : v0(keyCode, keyEvent);
    }

    void Y() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mFadeAnim;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.c();
        }
    }

    PanelFeatureState b0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    protected PanelFeatureState g0(int i10, boolean z6) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i10) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i10 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i10);
        panelFeatureStateArr[i10] = panelFeatureState2;
        return panelFeatureState2;
    }

    final CharSequence h0() {
        Object obj = this.mHost;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.mTitle;
    }

    final Window.Callback i0() {
        return this.mWindow.getCallback();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle.Delegate k() {
        return new ActionBarDrawableToggleImpl();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater m() {
        if (this.mMenuInflater == null) {
            j0();
            ActionBar actionBar = this.mActionBar;
            this.mMenuInflater = new SupportMenuInflater(actionBar != null ? actionBar.j() : this.mContext);
        }
        return this.mMenuInflater;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void o() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.a(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void q(Configuration configuration) {
        ActionBar actionBarN;
        if (this.mHasActionBar && this.mSubDecorInstalled && (actionBarN = n()) != null) {
            actionBarN.n(configuration);
        }
        AppCompatDrawableManager.b().g(this.mContext);
        this.mEffectiveConfiguration = new Configuration(this.mContext.getResources().getConfiguration());
        J(false);
    }

    int q0(@NonNull Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return f0(context).c();
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    return e0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i10;
    }

    boolean r0() {
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.c();
            return true;
        }
        ActionBar actionBarN = n();
        return actionBarN != null && actionBarN.g();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void s() {
        if (this.mHost instanceof Activity) {
            AppCompatDelegate.y(this);
        }
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        this.mDestroyed = true;
        if (this.mLocalNightMode != -100) {
            Object obj = this.mHost;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                sLocalNightModes.put(this.mHost.getClass().getName(), Integer.valueOf(this.mLocalNightMode));
            } else {
                sLocalNightModes.remove(this.mHost.getClass().getName());
            }
        } else {
            sLocalNightModes.remove(this.mHost.getClass().getName());
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.o();
        }
        P();
    }

    void x0(int i10) {
        ActionBar actionBarN;
        if (i10 != 108 || (actionBarN = n()) == null) {
            return;
        }
        actionBarN.h(true);
    }

    void y0(int i10) {
        if (i10 == 108) {
            ActionBar actionBarN = n();
            if (actionBarN != null) {
                actionBarN.h(false);
                return;
            }
            return;
        }
        if (i10 == 0) {
            PanelFeatureState panelFeatureStateG0 = g0(i10, true);
            if (panelFeatureStateG0.isOpen) {
                R(panelFeatureStateG0, false);
            }
        }
    }

    private AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        SimpleArrayMap<String, Integer> simpleArrayMap;
        Integer num;
        AppCompatActivity appCompatActivityK0;
        this.mFadeAnim = null;
        this.mHandleNativeActionModes = true;
        this.mLocalNightMode = -100;
        this.mInvalidatePanelMenuRunnable = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 1) != 0) {
                    appCompatDelegateImpl.X(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.mInvalidatePanelMenuFeatures & 4096) != 0) {
                    appCompatDelegateImpl2.X(108);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.mInvalidatePanelMenuPosted = false;
                appCompatDelegateImpl3.mInvalidatePanelMenuFeatures = 0;
            }
        };
        this.mContext = context;
        this.mAppCompatCallback = appCompatCallback;
        this.mHost = obj;
        if (this.mLocalNightMode == -100 && (obj instanceof Dialog) && (appCompatActivityK0 = K0()) != null) {
            this.mLocalNightMode = appCompatActivityK0.getDelegate().l();
        }
        if (this.mLocalNightMode == -100 && (num = (simpleArrayMap = sLocalNightModes).get(obj.getClass().getName())) != null) {
            this.mLocalNightMode = num.intValue();
            simpleArrayMap.remove(obj.getClass().getName());
        }
        if (window != null) {
            L(window);
        }
        AppCompatDrawableManager.h();
    }

    private boolean C0(PanelFeatureState panelFeatureState, int i10, KeyEvent keyEvent, int i11) {
        MenuBuilder menuBuilder;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.isPrepared || D0(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.menu) != null) {
            zPerformShortcut = menuBuilder.performShortcut(i10, keyEvent, i11);
        }
        if (zPerformShortcut && (i11 & 1) == 0 && this.mDecorContentParent == null) {
            R(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private void O0(View view) {
        int color;
        if ((ViewCompat.P(view) & 8192) != 0) {
            color = ContextCompat.getColor(this.mContext, androidx.appcompat.R.color.abc_decor_view_status_guard_light);
        } else {
            color = ContextCompat.getColor(this.mContext, androidx.appcompat.R.color.abc_decor_view_status_guard);
        }
        view.setBackgroundColor(color);
    }

    private void j0() {
        Z();
        if (this.mHasActionBar && this.mActionBar == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) this.mHost, this.mOverlayActionBar);
            } else if (obj instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) this.mHost);
            }
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.s(this.mEnableDefaultActionBarUp);
            }
        }
    }

    private boolean l0(PanelFeatureState panelFeatureState) {
        panelFeatureState.d(d0());
        panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
        panelFeatureState.gravity = 81;
        return true;
    }

    private boolean t0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelFeatureStateG0 = g0(i10, true);
            if (!panelFeatureStateG0.isOpen) {
                return D0(panelFeatureStateG0, keyEvent);
            }
            return false;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean A(int i10) {
        int iF0 = F0(i10);
        if (this.mWindowNoTitle && iF0 == 108) {
            return false;
        }
        if (this.mHasActionBar && iF0 == 1) {
            this.mHasActionBar = false;
        }
        if (iF0 != 1) {
            if (iF0 != 2) {
                if (iF0 != 5) {
                    if (iF0 != 10) {
                        if (iF0 != 108) {
                            if (iF0 != 109) {
                                return this.mWindow.requestFeature(iF0);
                            }
                            J0();
                            this.mOverlayActionBar = true;
                            return true;
                        }
                        J0();
                        this.mHasActionBar = true;
                        return true;
                    }
                    J0();
                    this.mOverlayActionMode = true;
                    return true;
                }
                J0();
                this.mFeatureIndeterminateProgress = true;
                return true;
            }
            J0();
            this.mFeatureProgress = true;
            return true;
        }
        J0();
        this.mWindowNoTitle = true;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void B(int i10) {
        Z();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i10, viewGroup);
        this.mAppCompatWindowCallback.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void C(View view) {
        Z();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mAppCompatWindowCallback.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void D(View view, ViewGroup.LayoutParams layoutParams) {
        Z();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mAppCompatWindowCallback.a().onContentChanged();
    }

    ActionMode I0(@NonNull ActionMode.Callback callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        Context contextThemeWrapper;
        AppCompatCallback appCompatCallback;
        Y();
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.c();
        }
        if (!(callback instanceof ActionModeCallbackWrapperV9)) {
            callback = new ActionModeCallbackWrapperV9(callback);
        }
        AppCompatCallback appCompatCallback2 = this.mAppCompatCallback;
        if (appCompatCallback2 != null && !this.mDestroyed) {
            try {
                actionModeOnWindowStartingSupportActionMode = appCompatCallback2.onWindowStartingSupportActionMode(callback);
            } catch (AbstractMethodError unused) {
                actionModeOnWindowStartingSupportActionMode = null;
            }
        } else {
            actionModeOnWindowStartingSupportActionMode = null;
        }
        if (actionModeOnWindowStartingSupportActionMode != null) {
            this.mActionMode = actionModeOnWindowStartingSupportActionMode;
        } else {
            boolean z6 = true;
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.mContext.getTheme();
                    theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.mContext.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
                        contextThemeWrapper.getTheme().setTo(themeNewTheme);
                    } else {
                        contextThemeWrapper = this.mContext;
                    }
                    this.mActionModeView = new ActionBarContextView(contextThemeWrapper);
                    PopupWindow popupWindow = new PopupWindow(contextThemeWrapper, (AttributeSet) null, androidx.appcompat.R.attr.actionModePopupWindowStyle);
                    this.mActionModePopup = popupWindow;
                    PopupWindowCompat.b(popupWindow, 2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    contextThemeWrapper.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarSize, typedValue, true);
                    this.mActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6
                        @Override // java.lang.Runnable
                        public void run() {
                            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                            appCompatDelegateImpl.mActionModePopup.showAtLocation(appCompatDelegateImpl.mActionModeView, 55, 0, 0);
                            AppCompatDelegateImpl.this.Y();
                            if (!AppCompatDelegateImpl.this.G0()) {
                                AppCompatDelegateImpl.this.mActionModeView.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.mActionModeView.setVisibility(0);
                            } else {
                                AppCompatDelegateImpl.this.mActionModeView.setAlpha(0.0f);
                                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                appCompatDelegateImpl2.mFadeAnim = ViewCompat.e(appCompatDelegateImpl2.mActionModeView).b(1.0f);
                                AppCompatDelegateImpl.this.mFadeAnim.h(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6.1
                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public void b(View view) {
                                        AppCompatDelegateImpl.this.mActionModeView.setAlpha(1.0f);
                                        AppCompatDelegateImpl.this.mFadeAnim.h(null);
                                        AppCompatDelegateImpl.this.mFadeAnim = null;
                                    }

                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public void c(View view) {
                                        AppCompatDelegateImpl.this.mActionModeView.setVisibility(0);
                                    }
                                });
                            }
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.mSubDecor.findViewById(androidx.appcompat.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(d0()));
                        this.mActionModeView = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.mActionModeView != null) {
                Y();
                this.mActionModeView.l();
                Context context = this.mActionModeView.getContext();
                ActionBarContextView actionBarContextView = this.mActionModeView;
                if (this.mActionModePopup != null) {
                    z6 = false;
                }
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode(context, actionBarContextView, callback, z6);
                if (callback.a(standaloneActionMode, standaloneActionMode.e())) {
                    standaloneActionMode.k();
                    this.mActionModeView.i(standaloneActionMode);
                    this.mActionMode = standaloneActionMode;
                    if (G0()) {
                        this.mActionModeView.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.e(this.mActionModeView).b(1.0f);
                        this.mFadeAnim = viewPropertyAnimatorCompatB;
                        viewPropertyAnimatorCompatB.h(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.7
                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                            public void b(View view) {
                                AppCompatDelegateImpl.this.mActionModeView.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.mFadeAnim.h(null);
                                AppCompatDelegateImpl.this.mFadeAnim = null;
                            }

                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                            public void c(View view) {
                                AppCompatDelegateImpl.this.mActionModeView.setVisibility(0);
                                if (AppCompatDelegateImpl.this.mActionModeView.getParent() instanceof View) {
                                    ViewCompat.q0((View) AppCompatDelegateImpl.this.mActionModeView.getParent());
                                }
                            }
                        });
                    } else {
                        this.mActionModeView.setAlpha(1.0f);
                        this.mActionModeView.setVisibility(0);
                        if (this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.q0((View) this.mActionModeView.getParent());
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
        }
        ActionMode actionMode2 = this.mActionMode;
        if (actionMode2 != null && (appCompatCallback = this.mAppCompatCallback) != null) {
            appCompatCallback.onSupportActionModeStarted(actionMode2);
        }
        return this.mActionMode;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PanelFeatureState panelFeatureStateB0;
        Window.Callback callbackI0 = i0();
        if (callbackI0 != null && !this.mDestroyed && (panelFeatureStateB0 = b0(menuBuilder.F())) != null) {
            return callbackI0.onMenuItemSelected(panelFeatureStateB0.featureId, menuItem);
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void d(View view, ViewGroup.LayoutParams layoutParams) {
        Z();
        ((ViewGroup) this.mSubDecor.findViewById(R.id.content)).addView(view, layoutParams);
        this.mAppCompatWindowCallback.a().onContentChanged();
    }

    final Context d0() {
        Context contextJ;
        ActionBar actionBarN = n();
        if (actionBarN != null) {
            contextJ = actionBarN.j();
        } else {
            contextJ = null;
        }
        if (contextJ == null) {
            return this.mContext;
        }
        return contextJ;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T i(@IdRes int i10) {
        Z();
        return (T) this.mWindow.findViewById(i10);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar n() {
        j0();
        return this.mActionBar;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void p() {
        if (B0() != null && !n().l()) {
            n0(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void t(Bundle bundle) {
        Z();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void u() {
        ActionBar actionBarN = n();
        if (actionBarN != null) {
            actionBarN.w(true);
        }
    }

    boolean u0(int i10, KeyEvent keyEvent) {
        ActionBar actionBarN = n();
        if (actionBarN != null && actionBarN.p(i10, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.mPreparedPanel;
        if (panelFeatureState != null && C0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
            if (panelFeatureState2 != null) {
                panelFeatureState2.isHandled = true;
            }
            return true;
        }
        if (this.mPreparedPanel == null) {
            PanelFeatureState panelFeatureStateG0 = g0(0, true);
            D0(panelFeatureStateG0, keyEvent);
            boolean zC0 = C0(panelFeatureStateG0, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateG0.isPrepared = false;
            if (zC0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void w() {
        I();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void x() {
        ActionBar actionBarN = n();
        if (actionBarN != null) {
            actionBarN.w(false);
        }
    }
}
