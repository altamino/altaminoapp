package com.narvii.app;

import android.app.ActionBar;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.app.theme.NVThemeActivity;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityActiveHelper;
import com.narvii.community.IJoinCommunityService;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.logging.LogContextInfo;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.Page;
import com.narvii.logging.PageRefererInfo;
import com.narvii.logging.PageViewDelegate;
import com.narvii.navigator.Navigator;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionRationaleDialog;
import com.narvii.services.ServiceManager;
import com.narvii.theme.PageBackgroundView;
import com.narvii.theme.ThemeBackgroundGifDrawable;
import com.narvii.theme.TitlebarGifDrawable;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.TouchTrackUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.stats.StatsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TintButton;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class NVActivity extends NVThemeActivity implements NVContext, LifecycleHost, IPermissionResultDispatcher, PermissionListener, Page, NVInteractionScope {
    public static final String COMMUNITY_ID = "__communityId";
    public static final String INTERACTION_SCOPE = "__interactionScope";
    public static final int REQUEST_ATO = 79;
    public static final int REQUEST_MAPPING_MASK = 59392;
    public static final int THEME_ACTIONBAR_OVERLAY = 2;
    public static final int THEME_AMINO = 1;
    public static final int THEME_DARK = 8;
    public static final int THEME_TRANSPARENT_STATUS = 4;
    private static Callback<NVActivity> pendingForAttach;
    private static long pendingForAttachExpires;
    public static boolean userTouching;
    boolean _fromPush;
    String _pushTrackId;
    private boolean abAvailable;
    private int abFlags;
    private boolean abInited;
    private TextView abTitle;
    private HashMap<Integer, Fragment> activityRequestMapping;
    AffiliationsService affiliationsService;
    private ACMAlertDialog atoDialog;
    private String atoDialogMessage;
    private long cid;
    protected int crashlyticsStatus;
    private ArrayList<DispatchTouchEventListener> dispatchTouchEventListeners;
    boolean inVisitorMode;
    private int initStatus;
    public boolean initTaskActivity;
    private boolean isStartingActivity;
    private Dialog joinCommunityDialog;
    private EventDispatcher<LifecycleListener> lifecycleListeners;
    private int lifecycleState;
    private LocalBroadcastManager localBroadcastManager;
    private ArrayList<WeakReference<BroadcastReceiver>> localReceivers;
    private Intent loginIntent;
    boolean newCreate;
    private Intent newIntent;
    PageViewDelegate pageViewDelegate;
    SparseArray<PermissionListener> permissionArray;
    String pvId;
    private BroadcastReceiver requireAccountReceiver;
    private Runnable resetStartingActivity;
    private int resetTaskId;
    public boolean restoreProcess;
    private ServiceManager serviceManager;
    boolean updateVisitorModePending;
    private static final int REQUEST_LOGIN = R.id.login & SupportMenu.USER_MASK;
    private static final float[] hsv = new float[3];
    private static final int[] state_pressed = {android.R.attr.state_pressed};
    private static final int[] state_normal = new int[0];
    private static TmpValue trackStartActivityTmp = new TmpValue();
    private static long[] BACK_RECORDS = new long[3];
    public static final View.OnClickListener BACK_CLICK_LISTENER = new View.OnClickListener() { // from class: com.narvii.app.NVActivity.15
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getContext() instanceof NVActivity) {
                ((NVActivity) view.getContext()).onBackPressed();
            }
        }
    };
    private boolean actionBarCustomed = false;
    protected List<NVFragment> themeDownloadObservers = new ArrayList();
    AffiliationsService.AffiliationChangeListener visitorModeListener = null;
    private int statsCid = -1;
    private int activeCid = -1;
    private final View.OnClickListener backListener = new View.OnClickListener() { // from class: com.narvii.app.NVActivity.11
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                NVActivity.this.onBackPressed();
            } catch (Exception e) {
                NVActivity.this.finish();
                Log.e("fail to simulate onBackPressed(), finish directly", e);
            }
        }
    };
    protected final HashMap<String, String> crashlyticsParams = new HashMap<>(4);

    /* loaded from: classes2.dex */
    public interface DispatchTouchEventListener {
        void onDispatchTouchEvent();
    }

    public int bottomPadding(NVFragment nVFragment) {
        return 0;
    }

    public boolean canScrollUp() {
        return false;
    }

    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
    }

    protected Drawable getActionBarCustomDrawable() {
        return null;
    }

    protected int getActionbarLayoutId(boolean z, int i, int i2) {
        return z ? i : i2;
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    public int getCustomTheme() {
        return 0;
    }

    public int getDefaultToastImageDuration() {
        return 1400;
    }

    public int getDefaultToastTextDuration() {
        return 2400;
    }

    public Fragment getRootFragment() {
        return null;
    }

    @Override // com.narvii.logging.Page
    public boolean isFinalPage() {
        return false;
    }

    public boolean isGlobal() {
        return false;
    }

    public boolean isPagebackgroundEnabled() {
        return false;
    }

    @Override // com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    protected void onJoinCommunitySuccessInVisitorMode() {
    }

    protected void onLoginResult(boolean z, Intent intent) {
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
    }

    public boolean requireAccount() {
        return false;
    }

    protected boolean showThemeColorAsAlternativeBackground() {
        return false;
    }

    public void smoothScrollToTop() {
    }

    protected void updateVisitorModeUI() {
    }

    @Override // com.narvii.app.IPermissionResultDispatcher
    public void registerPermissionResult(int i, PermissionListener permissionListener) {
        if (permissionListener == null) {
            return;
        }
        if (this.permissionArray == null) {
            this.permissionArray = new SparseArray<>();
        }
        this.permissionArray.put(i, permissionListener);
    }

    @Override // com.narvii.app.IPermissionResultDispatcher
    public void unRegisterPermissionResult(int i, PermissionListener permissionListener) {
        SparseArray<PermissionListener> sparseArray;
        if (permissionListener == null || (sparseArray = this.permissionArray) == null || sparseArray.get(i) != permissionListener) {
            return;
        }
        this.permissionArray.remove(i);
    }

    @Override // com.narvii.logging.Page
    public String getPageName() {
        if (getStringParam("__storyDraftId") == null || !isValidPage()) {
            return null;
        }
        return "StoryEditWildcard";
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    @Override // com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        if (this._fromPush) {
            builder.extraParam("pageFromPush", true);
        }
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        return getStringParam("__strategyInfo");
    }

    protected boolean logPageViewEvent() {
        return isValidPage();
    }

    protected void onActiveChanged(boolean z) {
        this.pageViewDelegate.sendPageViewEvent(z);
    }

    @Override // com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return getBooleanParam(INTERACTION_SCOPE, ((ConfigService) getService("config")).getCommunityId() == 0);
    }

    public void addDispatchTouchEventListener(DispatchTouchEventListener dispatchTouchEventListener) {
        if (this.dispatchTouchEventListeners == null) {
            this.dispatchTouchEventListeners = new ArrayList<>();
        }
        this.dispatchTouchEventListeners.add(dispatchTouchEventListener);
    }

    public void removeOnScrollListener(DispatchTouchEventListener dispatchTouchEventListener) {
        ArrayList<DispatchTouchEventListener> arrayList = this.dispatchTouchEventListeners;
        if (arrayList != null) {
            arrayList.remove(dispatchTouchEventListener);
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (this.serviceManager == null) {
            this.serviceManager = new ServiceManager(this);
            initServiceManager(this.serviceManager);
        }
    }

    protected void initServiceManager(ServiceManager serviceManager) {
        NVApplication.instance().initActivityServices(this, serviceManager);
    }

    public boolean isModel() {
        if (getIntent().hasExtra("__model")) {
            return getIntent().getBooleanExtra("__model", false);
        }
        return false;
    }

    protected void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().requestFeature(12);
            getWindow().requestFeature(13);
        }
        this.inVisitorMode = _communityId() > 0 && getBooleanParam("__visitorMode");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (isVisitorNotJoined()) {
            this.visitorModeListener = new AffiliationsService.AffiliationChangeListener() { // from class: com.narvii.app.-$$Lambda$NVActivity$66PcSpu-gMrn6dXLuW3opbkJ4Cc
                @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
                public final void onAffiliationChanged() {
                    this.f$0.lambda$onCreate$0$NVActivity();
                }
            };
            this.affiliationsService.addAffiliationChangeListener(this.visitorModeListener);
        }
        if (bundle == null) {
            this.cid = Utils.generateUniqueLongId();
        } else {
            this.cid = bundle.getLong("__cid");
        }
        if (isValidPage()) {
            this._pushTrackId = getStringParam("_pushTrackId");
            this._fromPush = getBooleanParam("_pushIntent");
        }
        if (this.serviceManager == null) {
            this.serviceManager = new ServiceManager(this);
            initServiceManager(this.serviceManager);
        }
        if (bundle == null) {
            this.newCreate = true;
            if (isTaskRoot() || ApplicationSessionHelper.getTaskId() == 0) {
                this.initTaskActivity = true;
                int taskId = getTaskId();
                this.resetTaskId = taskId;
                ApplicationSessionHelper.setNewTask(taskId);
            } else if (getTaskId() != ApplicationSessionHelper.getTaskId()) {
                Log.w(this + " has a different taskId " + getTaskId());
            }
            if (getIntent() != null && getIntent().hasExtra("__forwardInitTaskActivity")) {
                this.initTaskActivity = getIntent().getBooleanExtra("__forwardInitTaskActivity", false);
            }
        } else {
            this.resetTaskId = bundle.getInt("__resetTaskId");
            if (ApplicationSessionHelper.restore(this, bundle)) {
                bundle = new Bundle();
            }
            this.restoreProcess = bundle.getBoolean("__restoreProcess");
            this.initTaskActivity = bundle.getBoolean("__initTaskActivity");
        }
        if (NVApplication.instance().activityOnCreate(this)) {
            this.initStatus |= 2;
        }
        if (bundle != null) {
            this.loginIntent = (Intent) bundle.getParcelable("__loginIntent");
            Intent intent = (Intent) bundle.getParcelable("_newIntent");
            if (intent != null) {
                setIntent(intent);
            }
            this.initStatus = bundle.getInt("__initStatus") | this.initStatus;
        }
        int customTheme = getCustomTheme();
        if (customTheme != 0) {
            setTheme(customTheme);
        }
        super.onCreate(bundle);
        this.serviceManager.create();
        this.crashlyticsStatus = bundle == null ? 1 : 2;
        CrashlyticsUtils.setInitializingActivity(this);
        initActionBar();
        setStatusBar();
        initPageBackground();
        this.pageViewDelegate = new PageViewDelegate(this, this, getStringParam("__storyDraftId")) { // from class: com.narvii.app.NVActivity.1
            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return false;
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return NVActivity.this.logPageViewEvent();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
                NVActivity.this.completePageViewEvent(builder, z);
            }
        };
        resetPvId();
        Drawable actionBarCustomDrawable = getActionBarCustomDrawable();
        if (actionBarCustomDrawable != null) {
            StatusBarUtils.setTranslucentStatusBar(this, actionBarCustomDrawable);
            if (StatusBarUtils.STATUS_BAR_ENABLE) {
                return;
            }
            setActionBarBackground(actionBarCustomDrawable);
        }
    }

    public /* synthetic */ void lambda$onCreate$0$NVActivity() {
        if (this.inVisitorMode && isCurrentCommunityJoined()) {
            onJoinCommunitySuccessInVisitorMode();
            if (!isActivityResumed()) {
                this.updateVisitorModePending = true;
                return;
            }
            updateVisitorModeUI();
            AffiliationsService.AffiliationChangeListener affiliationChangeListener = this.visitorModeListener;
            if (affiliationChangeListener != null) {
                this.affiliationsService.removeAffiliationChangeListener(affiliationChangeListener);
                this.visitorModeListener = null;
            }
        }
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return (PageRefererInfo) JacksonUtils.readAs(getStringParam("__pageRefererInfo"), PageRefererInfo.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this instanceof NotificationListener) {
            ((NotificationCenter) getService("notification")).registerListener(this, (NotificationListener) this);
        }
        CrashlyticsUtils.setInitializingActivity(null);
        Log.i(getCrashlyticsFootprint());
        this.crashlyticsStatus = 0;
        if (requireAccount()) {
            this.requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.app.NVActivity.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (((AccountService) NVActivity.this.getService("account")).hasAccount() || NVActivity.this.isDestoryed()) {
                        return;
                    }
                    NVActivity.this.finish();
                }
            };
            registerLocalReceiver(this.requireAccountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            this.requireAccountReceiver.onReceive(this, null);
        }
        this.lifecycleState = 1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.3
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnCreate(NVActivity.this);
                }
            });
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("__cid", this.cid);
        Intent intent = this.loginIntent;
        if (intent != null) {
            bundle.putParcelable("__loginIntent", intent);
        }
        Intent intent2 = this.newIntent;
        if (intent2 != null) {
            bundle.putParcelable("_newIntent", intent2);
        }
        bundle.putInt("__resetTaskId", this.resetTaskId);
        bundle.putInt("__initStatus", this.initStatus);
        bundle.putBoolean("__restoreProcess", this.restoreProcess);
        bundle.putBoolean("__initTaskActivity", this.initTaskActivity);
        ApplicationSessionHelper.save(this, bundle);
    }

    @Override // com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        AffiliationsService affiliationsService;
        this.lifecycleState = -1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.4
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnDestroy(NVActivity.this);
                }
            });
        }
        clearToast();
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver != null) {
            unregisterLocalReceiver(broadcastReceiver);
            this.requireAccountReceiver = null;
        }
        super.onDestroy();
        ((NotificationCenter) getService("notification")).unregisterListener(this, isFinishing());
        this.serviceManager.destroy();
        cleanLeakLocalReceivers();
        NVApplication.instance().activityOnDestory(this);
        int i = this.resetTaskId;
        if (i != 0 && i == ApplicationSessionHelper.getTaskId() && isFinishing()) {
            ApplicationSessionHelper.setNewTask(0);
        }
        AffiliationsService.AffiliationChangeListener affiliationChangeListener = this.visitorModeListener;
        if (affiliationChangeListener == null || (affiliationsService = this.affiliationsService) == null) {
            return;
        }
        affiliationsService.removeAffiliationChangeListener(affiliationChangeListener);
    }

    @Override // com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        NVApplication.instance().activityOnStart(this);
        this.serviceManager.start();
        this.lifecycleState = 2;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.5
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnStart(NVActivity.this);
                }
            });
        }
        super.onStart();
    }

    public boolean isCurrentCommunityJoined() {
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        if (communityId == 0) {
            return true;
        }
        return this.affiliationsService.contains(communityId);
    }

    public boolean isVisitorNotJoined() {
        return isInVisitorMode() && !isCurrentCommunityJoined();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        if (NVApplication.instance().activityOnResume(this)) {
            this.initStatus |= 1;
        }
        this.serviceManager.resume();
        super.onResume();
        this.lifecycleState = 3;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.6
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnResume(NVActivity.this);
                }
            });
        }
        CrashlyticsUtils.setActiveActivity(this);
        if (pendingForAttach != null && SystemClock.uptimeMillis() < pendingForAttachExpires) {
            pendingForAttach.call(this);
        }
        pendingForAttach = null;
        onActiveChanged(true);
    }

    public boolean isInVisitorMode() {
        return this.inVisitorMode;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.lifecycleState = 2;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.7
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnPause(NVActivity.this);
                }
            });
        }
        this.serviceManager.pause();
        NVApplication.instance().activityOnPause(this);
        onActiveChanged(false);
        LogUtils.resumingContextList.clear();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.lifecycleState = 1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVActivity.8
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnStop(NVActivity.this);
                }
            });
        }
        this.serviceManager.stop();
        Runnable runnable = this.resetStartingActivity;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            Utils.post(this.resetStartingActivity);
        }
        NVApplication.instance().activityOnStop(this);
        CrashlyticsUtils.removeActiveActivity(this);
        Log.i("stop " + getCrashlyticsKey());
    }

    public boolean isDestoryed() {
        return this.lifecycleState <= -1;
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        this.newIntent = intent;
    }

    public boolean isActivityResumed() {
        return this.lifecycleState >= 3;
    }

    public Fragment getMainFragment() {
        return getRootFragment();
    }

    public String getStringParam(String str) {
        String str2;
        String stringParam = ParamUtils.getStringParam(this, str);
        if (this.crashlyticsStatus > 0) {
            if (stringParam == null) {
                str2 = "<null>";
            } else if (stringParam.length() < 64) {
                str2 = "\"" + stringParam + "\"";
            } else if (stringParam.charAt(0) == '{') {
                str2 = "{" + stringParam.length() + " bytes}";
            } else {
                str2 = "<" + stringParam.length() + " bytes>";
            }
            this.crashlyticsParams.put(str, str2);
        }
        return stringParam;
    }

    public int getIntParam(String str, int i) {
        int intParam = ParamUtils.getIntParam(this, str, i);
        if (this.crashlyticsStatus > 0) {
            this.crashlyticsParams.put(str, String.valueOf(intParam));
        }
        return intParam;
    }

    public int getIntParam(String str) {
        return getIntParam(str, 0);
    }

    public boolean getBooleanParam(String str, boolean z) {
        boolean booleanParam = ParamUtils.getBooleanParam(this, str, z);
        if (this.crashlyticsStatus > 0) {
            this.crashlyticsParams.put(str, String.valueOf(booleanParam));
        }
        return booleanParam;
    }

    public boolean getBooleanParam(String str) {
        return getBooleanParam(str, false);
    }

    public <T> T getService(String str) {
        T t = (T) this.serviceManager.getService(str);
        return t == null ? (T) ((NVApplication) getApplication()).getService(this, str) : t;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        if (getApplication() instanceof NVContext) {
            return (NVContext) getApplication();
        }
        Log.w("Application is not a NVContext");
        return null;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.cid;
    }

    public int getInitStatus() {
        return this.initStatus;
    }

    public int _communityId() {
        if (isGlobal()) {
            return 0;
        }
        return getIntent().getIntExtra("__communityId", -1);
    }

    public void sendNotification(Notification notification) {
        ((NotificationCenter) getService("notification")).sendNotification(notification);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (getIntent().hasExtra("customFinishAnimIn")) {
            overridePendingTransition(getIntent().getIntExtra("customFinishAnimIn", 0), getIntent().getIntExtra("customFinishAnimOut", 0));
        }
    }

    @Override // com.narvii.app.LifecycleHost
    public int getLifecycleState() {
        return this.lifecycleState;
    }

    @Override // com.narvii.app.LifecycleHost
    public void addWeakLifecycleListener(LifecycleListener lifecycleListener) {
        if (this.lifecycleListeners == null) {
            this.lifecycleListeners = new EventDispatcher<>();
        }
        this.lifecycleListeners.addListener(lifecycleListener);
    }

    @Override // com.narvii.app.LifecycleHost
    public void removeWeakLifecycleListener(LifecycleListener lifecycleListener) {
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(lifecycleListener);
        }
    }

    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (isDestoryed()) {
            Log.e("register local broadcast receiver after destory");
        }
        if (this.localBroadcastManager == null) {
            this.localBroadcastManager = LocalBroadcastManager.getInstance(this);
        }
        this.localBroadcastManager.registerReceiver(broadcastReceiver, intentFilter);
        if (this.localReceivers == null) {
            this.localReceivers = new ArrayList<>();
        }
        Iterator<WeakReference<BroadcastReceiver>> it = this.localReceivers.iterator();
        while (it.hasNext()) {
            if (it.next().get() == broadcastReceiver) {
                return;
            }
        }
        this.localReceivers.add(new WeakReference<>(broadcastReceiver));
    }

    public void unregisterLocalReceiver(BroadcastReceiver broadcastReceiver) {
        LocalBroadcastManager localBroadcastManager = this.localBroadcastManager;
        if (localBroadcastManager != null) {
            localBroadcastManager.unregisterReceiver(broadcastReceiver);
        }
        ArrayList<WeakReference<BroadcastReceiver>> arrayList = this.localReceivers;
        if (arrayList != null) {
            Iterator<WeakReference<BroadcastReceiver>> it = arrayList.iterator();
            while (it.hasNext()) {
                if (it.next().get() == broadcastReceiver) {
                    it.remove();
                }
            }
        }
    }

    private void cleanLeakLocalReceivers() {
        ArrayList<WeakReference<BroadcastReceiver>> arrayList;
        if (this.localBroadcastManager == null || (arrayList = this.localReceivers) == null || arrayList.isEmpty()) {
            return;
        }
        CleanLeakReceivers cleanLeakReceivers = new CleanLeakReceivers();
        cleanLeakReceivers.lbm = this.localBroadcastManager;
        cleanLeakReceivers.list = this.localReceivers;
        Utils.post(cleanLeakReceivers);
        this.localBroadcastManager = null;
        this.localReceivers = null;
    }

    /* loaded from: classes2.dex */
    private static class CleanLeakReceivers implements Runnable {
        LocalBroadcastManager lbm;
        ArrayList<WeakReference<BroadcastReceiver>> list;

        private CleanLeakReceivers() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator<WeakReference<BroadcastReceiver>> it = this.list.iterator();
            while (it.hasNext()) {
                BroadcastReceiver broadcastReceiver = it.next().get();
                if (broadcastReceiver != null) {
                    this.lbm.unregisterReceiver(broadcastReceiver);
                    Log.w("local receiver leak: " + broadcastReceiver.getClass().toString());
                }
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return getApplication().getSharedPreferences(str, i);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            keyEvent.getKeyCode();
        }
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent) | false;
        if (keyEvent.isPrintingKey()) {
            StatsService statsService = (StatsService) getService("stats");
            if (statsService != null) {
                if (this.statsCid == -1) {
                    this.statsCid = ((ConfigService) getService("config")).getCommunityId();
                }
                statsService.touchOrResume(this.statsCid);
            }
            logActive();
        }
        return zDispatchKeyEvent;
    }

    private void logActive() {
        CommunityActiveHelper communityActiveHelper = (CommunityActiveHelper) getService("_communityActiveHelper");
        if (communityActiveHelper != null) {
            if (this.activeCid == -1) {
                this.activeCid = ((ConfigService) getService("config")).getCommunityId();
            }
            int i = this.activeCid;
            if (i != 0) {
                communityActiveHelper.logActive(i);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ArrayList<DispatchTouchEventListener> arrayList = this.dispatchTouchEventListeners;
        if (arrayList != null) {
            Iterator<DispatchTouchEventListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onDispatchTouchEvent();
            }
        }
        if (motionEvent.getAction() == 0) {
            userTouching = true;
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            userTouching = false;
        }
        if (NVApplication.DEBUG && motionEvent != null && motionEvent.getAction() == 1) {
            Log.i("TouchTrack", TouchTrackUtils.getViewInfo(TouchTrackUtils.findTouchTargetView(getWindow())));
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            StatsService statsService = (StatsService) getService("stats");
            if (statsService != null) {
                if (this.statsCid == -1) {
                    this.statsCid = ((ConfigService) getService("config")).getCommunityId();
                }
                statsService.touchOrResume(this.statsCid);
            }
            logActive();
        }
        return zDispatchTouchEvent;
    }

    public boolean hasPageBackground() {
        return ((ConfigService) getService("config")).getTheme().pageBackground() != null;
    }

    public boolean shouldShowPageBackground() {
        return isPagebackgroundEnabled();
    }

    public void initPageBackground() {
        ViewGroup viewGroup;
        if (isPagebackgroundEnabled() && (viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content)) != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                viewGroup.getViewTreeObserver().addOnWindowAttachListener(new ViewTreeObserver.OnWindowAttachListener() { // from class: com.narvii.app.NVActivity.9
                    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                    public void onWindowDetached() {
                    }

                    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                    public void onWindowAttached() {
                        NVActivity.this.configPageBackground();
                    }
                });
            } else {
                viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.app.NVActivity.10
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        NVActivity.this.configPageBackground();
                    }
                });
            }
        }
    }

    public void configPageBackground() {
        Object tag = getWindow().getDecorView().getTag(R.id.page_background);
        if (tag != null && (tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content);
        PageBackgroundView pageBackgroundView = new PageBackgroundView(getContext());
        ConfigService configService = (ConfigService) getService("config");
        pageBackgroundView.setDrawable(configService.getTheme().pageBackground());
        pageBackgroundView.setBackgroundDrawable(showThemeColorAsAlternativeBackground() ? new ColorDrawable(configService.getTheme().colorPrimary()) : null);
        pageBackgroundView.setTag(R.id.page_background, true);
        viewGroup.addView(pageBackgroundView, 0);
        getWindow().getDecorView().setTag(R.id.page_background, true);
    }

    public void setStatusBar() {
        StatusBarUtils.setTranslucentStatusBar(this, (shouldShowPageBackground() && hasPageBackground()) ? new ColorDrawable(0) : null);
        setActionBarCustomed(false);
    }

    protected void initActionBar() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (this.abInited) {
            return;
        }
        this.abInited = true;
        TypedArray typedArrayObtainStyledAttributes = getTheme().obtainStyledAttributes(R.styleable.AminoTheme);
        this.abFlags = 0;
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AminoTheme_themeAmino, false)) {
            this.abFlags |= 1;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AminoTheme_themeDark, false)) {
            this.abFlags |= 8;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AminoTheme_themeActionbarOverlay, false)) {
            this.abFlags |= 2;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AminoTheme_themeTranslucentStatus, false)) {
            this.abFlags |= 4;
        }
        typedArrayObtainStyledAttributes.recycle();
        if ((this.abFlags & 1) == 0) {
            return;
        }
        ActionBar actionBar = null;
        try {
            actionBar = getActionBar();
        } catch (Exception unused) {
        }
        if (actionBar != null) {
            this.abAvailable = true;
            forceEllipsize();
            if (actionBar.getCustomView() == null || actionBar.getCustomView().findViewById(R.id.actionbar_title) == null) {
                actionBar.setCustomView(getActionbarLayoutId(isDarkTheme(), R.layout.actionbar_dark_layout, R.layout.actionbar_layout));
                View customView = actionBar.getCustomView();
                this.abTitle = (TextView) customView.findViewById(R.id.actionbar_title);
                customView.findViewById(R.id.actionbar_back).setOnClickListener(this.backListener);
                setActionBarBackgroundDefault();
            }
        }
    }

    public boolean hasActionBar() {
        return this.abAvailable;
    }

    public boolean isActionBarOverlaying() {
        return (this.abFlags & 2) != 0;
    }

    public boolean isDarkTheme() {
        return (this.abFlags & 8) != 0;
    }

    public boolean isTranslucentStatusBar() {
        return (this.abFlags & 4) != 0;
    }

    public int getStatusBarOverlaySize() {
        if (isTranslucentStatusBar()) {
            return Utils.getStatusBarHeight(this);
        }
        return 0;
    }

    public int getActionBarOverlaySize() {
        if (isActionBarOverlaying()) {
            return Utils.getActionBarHeight(this);
        }
        return 0;
    }

    private void forceEllipsize() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(this);
            Field declaredField = ViewConfiguration.class.getDeclaredField("sHasPermanentMenuKey");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                declaredField.setBoolean(viewConfiguration, false);
            }
        } catch (Exception unused) {
        }
    }

    public void setActionBarBackground(Drawable drawable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            getActionBar().setBackgroundDrawable(drawable);
            setActionBarCustomed(true);
        }
    }

    public void setActionBarBackgroundDefault() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            ActionBar actionBar = getActionBar();
            if (isActionBarOverlaying()) {
                if (isDarkTheme()) {
                    actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.dark_theme_overlay)));
                    return;
                } else {
                    actionBar.setBackgroundDrawable(null);
                    return;
                }
            }
            Drawable drawableActionbarBackground = ((ConfigService) getService("config")).getTheme().actionbarBackground();
            actionBar.setBackgroundDrawable(drawableActionbarBackground);
            if ((drawableActionbarBackground instanceof WrapGifDrawable) && drawableActionbarBackground.getCallback() == null) {
                try {
                    Field declaredField = actionBar.getClass().getDeclaredField("mContainerView");
                    declaredField.setAccessible(true);
                    drawableActionbarBackground.setCallback((View) declaredField.get(actionBar));
                    if (drawableActionbarBackground instanceof TitlebarGifDrawable) {
                        ((TitlebarGifDrawable) drawableActionbarBackground).invalidateDirectly = true;
                    } else if (drawableActionbarBackground instanceof ThemeBackgroundGifDrawable) {
                        ((ThemeBackgroundGifDrawable) drawableActionbarBackground).invalidateDirectly = true;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public void setActionBarTitleColor(int i) {
        TextView textView = this.abTitle;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public void setActionBarTitleView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            View viewFindViewById = getActionBar().getCustomView().findViewById(R.id.actionbar_title);
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            if (viewFindViewById != null) {
                view.setLayoutParams(viewFindViewById.getLayoutParams());
                view.setId(R.id.actionbar_title);
                viewGroup.removeView(viewFindViewById);
                viewGroup.addView(view);
            }
        }
    }

    public void setActionBarLeftView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewFindViewById;
        initActionBar();
        if (hasActionBar()) {
            ActionBar actionBar = getActionBar();
            if (actionBar.getCustomView() == null || (viewFindViewById = actionBar.getCustomView().findViewById(R.id.actionbar_left)) == null) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            viewGroup.removeAllViews();
            if (view != null) {
                viewGroup.addView(view);
            }
        }
    }

    public void setActionBarRightButton(int i, Drawable drawable, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(getText(i), drawable, onClickListener);
    }

    public void setActionBarRightButton(int i, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(getText(i), getRightButtonDefaultBackground(), onClickListener);
    }

    public void setActionBarRightButton(CharSequence charSequence, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(charSequence, getRightButtonDefaultBackground(), onClickListener);
    }

    public void setActionBarRightButton(CharSequence charSequence, Drawable drawable, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            ViewGroup viewGroup = (ViewGroup) getActionBar().getCustomView();
            View viewFindViewById = viewGroup.findViewById(R.id.actionbar_right_btn);
            if (viewFindViewById == null) {
                getLayoutInflater().inflate(R.layout.actionbar_btn, viewGroup);
                viewFindViewById = viewGroup.findViewById(R.id.actionbar_right_btn);
            }
            viewFindViewById.findViewById(R.id.actionbar_right_btn_btn).setBackgroundDrawable(drawable);
            View viewFindViewById2 = viewFindViewById.findViewById(R.id.actionbar_right_btn_btn);
            viewFindViewById2.setOnClickListener(onClickListener);
            ((TextView) viewFindViewById2).setText(charSequence);
        }
    }

    public Drawable getRightButtonDefaultBackground() {
        Color.colorToHSV(((ConfigService) getService("config")).getTheme().colorPrimary(), hsv);
        float[] fArr = hsv;
        fArr[2] = fArr[2] * 0.75f;
        return getRightButtonBackground(Color.HSVToColor(fArr));
    }

    public static Drawable getRightButtonBackground(int i) throws Resources.NotFoundException {
        Color.colorToHSV(i, hsv);
        float[] fArr = hsv;
        fArr[2] = fArr[2] * 0.75f;
        int iHSVToColor = Color.HSVToColor(fArr);
        float dimension = NVApplication.instance().getResources().getDimension(R.dimen.actionbar_button_corner_radius);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(i);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
        shapeDrawable.getPaint().setPathEffect(new CornerPathEffect(dimension));
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RectShape());
        shapeDrawable2.getPaint().setColor(iHSVToColor);
        shapeDrawable2.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
        shapeDrawable2.getPaint().setPathEffect(new CornerPathEffect(dimension));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(state_pressed, shapeDrawable2);
        stateListDrawable.addState(state_normal, shapeDrawable);
        return stateListDrawable;
    }

    public void setBackButtonDrawable(Drawable drawable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        ImageView imageView;
        initActionBar();
        if (hasActionBar() && (imageView = (ImageView) getActionBar().getCustomView().findViewById(R.id.actionbar_back)) != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public void setBackButtonTint(int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            ImageView imageView = (ImageView) getActionBar().getCustomView().findViewById(R.id.actionbar_back);
            if (imageView instanceof TintButton) {
                ((TintButton) imageView).setTintColor(i);
            }
        }
    }

    public void setActionBarRightView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            ViewGroup viewGroup = (ViewGroup) getActionBar().getCustomView();
            View viewFindViewById = viewGroup.findViewById(R.id.actionbar_right_btn);
            if (viewFindViewById != null) {
                ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
            }
            if (view != null) {
                view.setLayoutParams(getLayoutInflater().inflate(R.layout.actionbar_btn, viewGroup, false).getLayoutParams());
                viewGroup.addView(view);
            }
        }
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        TextView textView = this.abTitle;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public String getCrashlyticsFootprint() {
        StringBuilder sb = new StringBuilder();
        sb.append("activity ");
        int i = this.crashlyticsStatus;
        if (i != 0) {
            sb.append(i == 1 ? "create " : "restore ");
        }
        sb.append(getCrashlyticsClassName());
        sb.append(" [");
        String startActivityTrack = getStartActivityTrack(getIntent());
        if (startActivityTrack != null) {
            sb.append(startActivityTrack);
            sb.append(", ");
        }
        int i_communityId = _communityId();
        if (i_communityId < 0) {
            sb.append('?');
        } else if (i_communityId == 0) {
            sb.append('g');
        } else {
            sb.append('x');
            sb.append(i_communityId);
        }
        if (getIntent().getData() != null) {
            sb.append(", url=");
            sb.append(getIntent().getData());
        }
        for (Map.Entry<String, String> entry : this.crashlyticsParams.entrySet()) {
            if (!entry.getKey().startsWith("_")) {
                sb.append(", ");
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public String getCrashlyticsKey() {
        StringBuilder sb = new StringBuilder();
        sb.append(getCrashlyticsClassName());
        sb.append("[");
        int i_communityId = _communityId();
        if (i_communityId < 0) {
            sb.append('?');
        } else if (i_communityId == 0) {
            sb.append('g');
        } else {
            sb.append('x');
            sb.append(i_communityId);
        }
        for (Map.Entry<String, String> entry : this.crashlyticsParams.entrySet()) {
            if (!entry.getKey().startsWith("_") && entry.getValue().length() == 38) {
                String strSubstring = entry.getValue().substring(1, 37);
                if (StringUtils.isUuid(strSubstring)) {
                    sb.append(",");
                    sb.append(entry.getKey());
                    sb.append('=');
                    sb.append(strSubstring);
                }
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public int getConfigCid() {
        return ((ConfigService) getService("config")).getCommunityId();
    }

    protected String getCrashlyticsClassName() {
        return getClass().getSimpleName();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityApi16, android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        Navigator navigator;
        if (intent == null) {
            return;
        }
        if (!justStartActivity(intent) && (navigator = (Navigator) getService("navigator")) != null) {
            intent = navigator.intentMapping(intent);
        }
        if (Utils.isEqualsNotNull(intent.getComponent() == null ? null : intent.getComponent().getPackageName(), getPackageName()) && !intent.getBooleanExtra("__noInheritance", false)) {
            inheritIntent(intent, null);
        }
        trackStartActivity(intent);
        ParamUtils.processIntentNow(intent);
        this.isStartingActivity = true;
        super.startActivityForResult(intent, i, bundle);
        Runnable runnable = this.resetStartingActivity;
        if (runnable == null) {
            this.resetStartingActivity = new ResetStartingActivity();
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.handler.postDelayed(this.resetStartingActivity, 400L);
    }

    @Override // android.support.v4.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        Navigator navigator;
        if (intent == null) {
            return;
        }
        if (!justStartActivity(intent) && (navigator = (Navigator) getService("navigator")) != null) {
            intent = navigator.intentMapping(intent);
        }
        if (Utils.isEqualsNotNull(intent.getComponent() == null ? null : intent.getComponent().getPackageName(), getPackageName()) && !intent.getBooleanExtra("__noInheritance", false)) {
            inheritIntent(intent, fragment);
        }
        trackStartActivity(intent);
        ParamUtils.processIntentNow(intent);
        this.isStartingActivity = true;
        super.startActivityFromFragment(fragment, intent, i, bundle);
        Runnable runnable = this.resetStartingActivity;
        if (runnable == null) {
            this.resetStartingActivity = new ResetStartingActivity();
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.handler.postDelayed(this.resetStartingActivity, 400L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void inheritIntent(Intent intent, Fragment fragment) {
        int configCid;
        String str;
        if (!intent.hasExtra(INTERACTION_SCOPE)) {
            if (intent.hasExtra("__communityId") && intent.getIntExtra("__communityId", 0) != 0) {
                intent.putExtra(INTERACTION_SCOPE, false);
            } else if (getBooleanParam(INTERACTION_SCOPE)) {
                intent.putExtra(INTERACTION_SCOPE, true);
            } else {
                intent.putExtra(INTERACTION_SCOPE, ((ConfigService) getService("config")).getCommunityId() == 0);
            }
        }
        if (!intent.hasExtra("__communityId")) {
            intent.putExtra("__communityId", ((ConfigService) getService("config")).getCommunityId());
        }
        if (!intent.hasExtra("__pageRefererInfo")) {
            PageRefererInfo pageRefererInfo = LogUtils.nextPageRefererInfo;
            if (pageRefererInfo != null) {
                intent.putExtra("__pageRefererInfo", JacksonUtils.writeAsString(pageRefererInfo));
            } else {
                LogContextInfo logContextInfo = LogUtils.getLogContextInfo(fragment instanceof NVContext ? (NVContext) fragment : this);
                if (logContextInfo != null && (str = logContextInfo.pageName) != null) {
                    intent.putExtra("__pageRefererInfo", JacksonUtils.writeAsString(new PageRefererInfo(str)));
                }
            }
        }
        if (!intent.hasExtra("__strategyInfo")) {
            if (!TextUtils.isEmpty(LogUtils.nextPageStrategyInfo)) {
                intent.putExtra("__strategyInfo", LogUtils.nextPageStrategyInfo);
            } else {
                intent.putExtra("__strategyInfo", getStringParam("__strategyInfo"));
            }
        }
        if (!intent.hasExtra("__storyDraftId") && !intent.hasExtra("__ignoreStoryDraftId")) {
            intent.putExtra("__storyDraftId", getStringParam("__storyDraftId"));
        }
        if (!intent.hasExtra("__model")) {
            if (((ConfigService) getService("config")).getCommunityId() != 0 && intent.getBooleanExtra(INTERACTION_SCOPE, false)) {
                intent.putExtra("__model", true);
            } else {
                intent.putExtra("__model", isModel());
            }
        }
        if (!intent.hasExtra(RtcService.KEY_COMMUNITY)) {
            intent.putExtra(RtcService.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
        }
        if (!intent.hasExtra(RtcService.KEY_FROM_GLOBAL_CHAT)) {
            intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT, false));
        }
        if (!intent.hasExtra(RtcService.KEY_HIDE_DRAWER)) {
            intent.putExtra(RtcService.KEY_HIDE_DRAWER, getBooleanParam(RtcService.KEY_HIDE_DRAWER, false));
        }
        if (intent.hasExtra("__visitorMode") || (configCid = getConfigCid()) != intent.getIntExtra("__communityId", -1) || configCid <= 0) {
            return;
        }
        intent.putExtra("__visitorMode", getBooleanParam("__visitorMode", false));
    }

    public boolean isStartingActivity() {
        return this.isStartingActivity;
    }

    /* loaded from: classes2.dex */
    private class ResetStartingActivity implements Runnable {
        private ResetStartingActivity() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NVActivity.this.isStartingActivity = false;
            if (NVActivity.this.resetStartingActivity == this) {
                NVActivity.this.resetStartingActivity = null;
            }
        }
    }

    static void trackStartActivity(Intent intent) {
        if (NVApplication.DEBUG) {
            try {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                for (int length = stackTrace.length - 2; length > 0; length--) {
                    if (stackTrace[length].getMethodName().startsWith("startActivity")) {
                        StackTraceElement stackTraceElement = stackTrace[length + 1];
                        String className = stackTraceElement.getClassName();
                        int iLastIndexOf = className.lastIndexOf(46);
                        if (iLastIndexOf > 0) {
                            className = className.substring(iLastIndexOf + 1);
                        }
                        String str = className + "." + stackTraceElement.getMethodName() + "():" + stackTraceElement.getLineNumber();
                        int iHashCode = new Object().hashCode();
                        trackStartActivityTmp.set(new Object[]{Integer.valueOf(iHashCode), str}, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                        intent.putExtra("__trackStartActivityId", iHashCode);
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private static String getStartActivityTrack(Intent intent) {
        if (!NVApplication.DEBUG) {
            return null;
        }
        int intExtra = intent.getIntExtra("__trackStartActivityId", 0);
        Object[] objArr = (Object[]) trackStartActivityTmp.getAndRemove();
        if (objArr == null || intExtra != ((Integer) objArr[0]).intValue()) {
            return null;
        }
        return (String) objArr[1];
    }

    static boolean justStartActivity(Intent intent) {
        StackTraceElement[] stackTrace;
        if (intent.getComponent() == null && (stackTrace = new Exception().getStackTrace()) != null) {
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                if (className == null) {
                    className = "";
                }
                if (className.startsWith("com.facebook.ads.") || className.startsWith("com.amazon.device.ads.") || className.startsWith("com.mopub.") || className.startsWith("com.fyber.") || className.startsWith("com.inmobi.") || className.startsWith("com.applovin.") || className.startsWith("com.verizon.ads.") || className.startsWith("com.tapjoy.") || className.startsWith("com.tapdaq.") || className.startsWith("com.taboola.") || className.startsWith("com.outbrain.")) {
                    z = true;
                }
                if (z) {
                    break;
                }
            }
            if (z) {
                return openWebUrlDirectly(intent);
            }
        }
        return false;
    }

    static boolean openWebUrlDirectly(Intent intent) {
        char c;
        boolean z = "android.intent.action.VIEW".equals(intent.getAction()) && intent.getData() != null && ("http".equals(intent.getData().getScheme()) || "https".equals(intent.getData().getScheme()));
        if (z && new PackageUtils(NVApplication.instance()).isPermalinkHost(intent.getData().getHost())) {
            z = false;
        }
        if (z) {
            PackageManager packageManager = NVApplication.instance().getPackageManager();
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.isDefault) {
                intent.setClassName(resolveInfoResolveActivity.activityInfo.packageName, resolveInfoResolveActivity.activityInfo.name);
                return true;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (listQueryIntentActivities.size() > 0) {
                intent.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
                char c2 = 0;
                for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                    String str = resolveInfo.activityInfo.packageName;
                    if ("com.android.chrome".equals(str)) {
                        c = 'c';
                    } else if ("com.chrome.beta".equals(str)) {
                        c = 'b';
                    } else if ("com.chrome.dev".equals(str)) {
                        c = 'a';
                    } else if ("com.chrome.canary".equals(str)) {
                        c = '`';
                    } else if ("com.sec.android.app.sbrowser".equals(str)) {
                        c = 'Y';
                    } else {
                        c = "org.mozilla.firefox".equals(str) ? 'E' : (char) 0;
                    }
                    if (c > c2) {
                        intent.setClassName(str, resolveInfo.activityInfo.name);
                        c2 = c;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
    }

    public void ensureLogin(Intent intent, String str) {
        if (((AccountService) getService("account")).hasAccount()) {
            onLoginResult(true, intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
        intent2.putExtra("Source", str);
        intent2.putExtra("promptType", "Required");
        this.loginIntent = intent;
        try {
            startActivityForResult(intent2, REQUEST_LOGIN);
        } catch (Exception unused) {
            Log.e("unable to start login activity");
        }
        NVToast.makeText(this, R.string.login_first, 0).show();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        Fragment fragment;
        if (i == REQUEST_LOGIN) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVActivity.12
                @Override // java.lang.Runnable
                public void run() {
                    Intent intent2 = NVActivity.this.loginIntent;
                    if (intent2 == null) {
                        intent2 = new Intent();
                    }
                    NVActivity.this.loginIntent = null;
                    NVActivity.this.onLoginResult(((AccountService) NVActivity.this.getService("account")).hasAccount(), intent2);
                }
            });
            return;
        }
        HashMap<Integer, Fragment> map = this.activityRequestMapping;
        if (map != null && (fragment = map.get(Integer.valueOf(i))) != null) {
            fragment.onActivityResult(i, i2, intent);
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        addBack();
    }

    private static void addBack() {
        int i = 0;
        long j = Long.MAX_VALUE;
        int i2 = 0;
        while (true) {
            long[] jArr = BACK_RECORDS;
            if (i < jArr.length) {
                long j2 = jArr[i];
                if (j2 < j) {
                    i2 = i;
                    j = j2;
                }
                i++;
            } else {
                jArr[i2] = SystemClock.elapsedRealtime();
                return;
            }
        }
    }

    protected static boolean isBackTooFast() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = Long.MAX_VALUE;
        for (long j2 : BACK_RECORDS) {
            if (j2 < j) {
                j = j2;
            }
        }
        long j3 = jElapsedRealtime - j;
        return j3 > 0 && j3 < 1200;
    }

    public View toastView(int i, int i2) {
        return toastView(i, i2, 0L);
    }

    public View toastView(int i, int i2, final long j) throws Resources.NotFoundException {
        clearToast();
        final ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
        if (isDestoryed() || viewGroup == null) {
            return getLayoutInflater().inflate(i, (ViewGroup) null, false);
        }
        final View viewInflate = getLayoutInflater().inflate(i, viewGroup, false);
        viewInflate.setId(R.id.toast_frame);
        viewInflate.setVisibility(4);
        viewGroup.addView(viewInflate);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, i2);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.app.NVActivity.13
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                viewInflate.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) throws Resources.NotFoundException {
                if (j <= 0) {
                    NVActivity.this.startRemoveViewAnimation(viewGroup, viewInflate);
                } else {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.app.NVActivity.13.1
                        @Override // java.lang.Runnable
                        public void run() throws Resources.NotFoundException {
                            AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                            NVActivity.this.startRemoveViewAnimation(viewGroup, viewInflate);
                        }
                    }, j);
                }
            }
        });
        viewInflate.startAnimation(animationLoadAnimation);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRemoveViewAnimation(final ViewGroup viewGroup, final View view) throws Resources.NotFoundException {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.app.NVActivity.14
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                viewGroup.removeView(view);
            }
        });
        view.startAnimation(animationLoadAnimation);
    }

    public void toastImage(int i, int i2) {
        toastImage(getResources().getDrawable(i), i2);
    }

    public void toastImage(Drawable drawable, int i) {
        ((ImageView) toastView(R.layout.toast_image, i, 0L).findViewById(R.id.toast_image)).setImageDrawable(drawable);
    }

    public void toastImageWithText(Drawable drawable, String str, int i, long j) throws Resources.NotFoundException {
        View view = toastView(R.layout.toast_image_text, i, j);
        ((ImageView) view.findViewById(R.id.toast_image)).setImageDrawable(drawable);
        ((TextView) view.findViewById(R.id.toast_text)).setText(str);
    }

    public void toastImage(int i) {
        toastImage(i, R.anim.toast_drop);
    }

    public void toastImage(Drawable drawable) {
        toastImage(drawable, R.anim.toast_drop);
    }

    public void toastText(int i, int i2) {
        toastText(getText(i), i2);
    }

    public void toastText(CharSequence charSequence, int i) {
        ((TextView) toastView(R.layout.toast_text, i, 0L).findViewById(R.id.toast_text)).setText(charSequence);
    }

    public void toastTextFromTop(int i, int i2) throws Resources.NotFoundException {
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize() + Utils.dpToPxInt(getContext(), 20.0f);
        View view = toastView(R.layout.toast_text_top, R.anim.toast_slide_in_top, i2);
        View viewFindViewById = findViewById(R.id.toast_frame);
        if (viewFindViewById != null) {
            viewFindViewById.setPadding(0, actionBarOverlaySize, 0, 0);
        }
        ((TextView) view.findViewById(R.id.toast_text)).setText(getText(i));
    }

    public void toastText(int i) {
        toastText(i, R.anim.toast_pop);
    }

    public void toastText(CharSequence charSequence) {
        toastText(charSequence, R.anim.toast_pop);
    }

    public void clearToast() {
        View viewFindViewById;
        ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
        if (viewGroup == null || (viewFindViewById = viewGroup.findViewById(R.id.toast_frame)) == null) {
            return;
        }
        viewFindViewById.clearAnimation();
        viewGroup.removeView(viewFindViewById);
    }

    public static void addPendingForAttach(Callback<NVActivity> callback) {
        pendingForAttach = callback;
        pendingForAttachExpires = System.currentTimeMillis() + 500;
    }

    public TextView setActionBarLeftTextView(CharSequence charSequence) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_left_tv, (ViewGroup) null);
        textView.setText(charSequence);
        textView.setOnClickListener(BACK_CLICK_LISTENER);
        setActionBarLeftView(textView);
        return textView;
    }

    public TextView setActionBarLeftTextView(int i) {
        return setActionBarLeftTextView(getText(i));
    }

    public void setActionBarRightView(int i, int i2, boolean z, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_right_tv, (ViewGroup) null);
        textView.setTextColor(i2);
        textView.setShadowLayer(z ? 1.0f : 0.0f, z ? 2.0f : 0.0f, z ? 2.0f : 0.0f, z ? -11184811 : 0);
        setRightView(i, textView, onClickListener);
    }

    public void setActionBarRightView(int i, ColorStateList colorStateList, boolean z, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_right_tv, (ViewGroup) null);
        textView.setTextColor(colorStateList);
        textView.setShadowLayer(z ? 1.0f : 0.0f, z ? 2.0f : 0.0f, z ? 2.0f : 0.0f, z ? -11184811 : 0);
        setRightView(i, textView, onClickListener);
    }

    public void setActionBarRightView(int i, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightView(i, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, onClickListener);
    }

    public void setRightView(int i, TextView textView, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        textView.setText(getString(i));
        textView.setOnClickListener(onClickListener);
        textView.setTag(TtmlNode.RIGHT);
        setActionBarRightView(textView);
    }

    public void setRightViewVisible(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewFindViewWithTag;
        initActionBar();
        if (hasActionBar() && (viewFindViewWithTag = getActionBar().getCustomView().findViewWithTag(TtmlNode.RIGHT)) != null) {
            viewFindViewWithTag.setVisibility(z ? 0 : 8);
        }
    }

    public void setRightViewEnabled(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TextView textView;
        initActionBar();
        if (hasActionBar() && (textView = (TextView) getActionBar().getCustomView().findViewWithTag(TtmlNode.RIGHT)) != null) {
            textView.setEnabled(z);
        }
    }

    public void setRightButtonEnabled(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewFindViewById;
        initActionBar();
        if (!hasActionBar() || getActionBar() == null || getActionBar().getCustomView() == null || (viewFindViewById = getActionBar().getCustomView().findViewById(R.id.actionbar_right_btn_btn)) == null) {
            return;
        }
        viewFindViewById.setEnabled(z);
    }

    public TextView getRightTextView() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        initActionBar();
        if (hasActionBar()) {
            return (TextView) getActionBar().getCustomView().findViewWithTag(TtmlNode.RIGHT);
        }
        return null;
    }

    public void removeRightView() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewFindViewById;
        initActionBar();
        if (hasActionBar() && (viewFindViewById = ((ViewGroup) getActionBar().getCustomView()).findViewById(R.id.tv_right)) != null) {
            ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
        }
    }

    public boolean rightViewEnabled() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        TextView textView;
        initActionBar();
        if (hasActionBar() && (textView = (TextView) getActionBar().getCustomView().findViewWithTag(TtmlNode.RIGHT)) != null) {
            return textView.isEnabled();
        }
        return false;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        PermissionListener permissionListener;
        SparseArray<PermissionListener> sparseArray = this.permissionArray;
        if (sparseArray != null && (permissionListener = sparseArray.get(i)) != null) {
            NVPermission.onRequestPermissionResult(this, permissionListener, i, strArr, iArr);
        } else {
            super.onRequestPermissionsResult(i, strArr, iArr);
            NVPermission.onRequestPermissionResult(this, this, i, strArr, iArr);
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
        if (!z || PermissionRationaleDialog.isShowing) {
            return;
        }
        PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
    }

    public boolean isHandlingJoinCommunity() {
        Dialog dialog = this.joinCommunityDialog;
        return dialog != null && dialog.isShowing();
    }

    public void handleCommunityNotJoined(int i) {
        IJoinCommunityService iJoinCommunityService;
        if (isHandlingJoinCommunity() || isDestoryed() || i <= 0 || getConfigCid() != i || (iJoinCommunityService = (IJoinCommunityService) getService("joinCommunity")) == null) {
            return;
        }
        this.joinCommunityDialog = iJoinCommunityService.showJoinCommunityDialog(this, i);
    }

    public void handleATO(final String str, final String str2, String str3, String str4, String str5, String str6, boolean z) throws Resources.NotFoundException {
        if (isHandlingATO() || isDestoryed()) {
            return;
        }
        this.atoDialog = new ACMAlertDialog(this);
        this.atoDialog.setTitle(str3);
        ACMAlertDialog aCMAlertDialog = this.atoDialog;
        this.atoDialogMessage = str4;
        aCMAlertDialog.setMessage(str4);
        if (TextUtils.isEmpty(str5)) {
            str5 = getResources().getString(android.R.string.ok);
        }
        if (TextUtils.isEmpty(str6)) {
            str6 = getResources().getString(R.string.cancel);
        }
        int color = ContextCompat.getColor(getContext(), R.color.dialog_option_blue);
        if (!z) {
            this.atoDialog.addButton(str6, color, new View.OnClickListener() { // from class: com.narvii.app.NVActivity.16
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (NVActivity.this.atoDialog != null) {
                        NVActivity.this.atoDialog.dismiss();
                    }
                }
            });
        }
        this.atoDialog.addButton(str5, color, new View.OnClickListener() { // from class: com.narvii.app.NVActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Uri fragmentDeepLinkUri;
                if (!TextUtils.isEmpty(str2) && str2.startsWith("ndc://") && Uri.parse(str2) != null) {
                    Uri uri = Uri.parse(str2);
                    if (uri != null) {
                        NVActivity.this.startActivityForResult(new Intent("android.intent.action.VIEW", uri), 79);
                    }
                } else {
                    FragmentRegister fragmentRegister = (FragmentRegister) NVActivity.this.getService("fragmentRegister");
                    if (fragmentRegister != null && (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("accountWebView")) != null) {
                        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                        intent.putExtra("url", str);
                        NVActivity.this.startActivityForResult(intent, 79);
                    }
                }
                if (NVActivity.this.atoDialog != null) {
                    NVActivity.this.atoDialog.dismiss();
                }
            }
        });
        this.atoDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.app.NVActivity.18
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                NVActivity.this.atoDialog = null;
                NVActivity.this.atoDialogMessage = null;
            }
        });
        this.atoDialog.show();
    }

    public void registerActivityRequestCallback(int i, Fragment fragment) {
        HashMap<Integer, Fragment> map = this.activityRequestMapping;
        if (map == null) {
            this.activityRequestMapping = new HashMap<>();
        } else {
            Fragment fragment2 = map.get(Integer.valueOf(i));
            if (fragment2 != null && fragment2 != fragment) {
                Log.e("code already registered: " + i);
            }
        }
        this.activityRequestMapping.put(Integer.valueOf(i), fragment);
    }

    public void unregisterActivityRequestCallback(int i, Fragment fragment) {
        Fragment fragment2;
        HashMap<Integer, Fragment> map = this.activityRequestMapping;
        if (map == null || (fragment2 = map.get(Integer.valueOf(i))) == null || fragment2 != fragment) {
            return;
        }
        this.activityRequestMapping.remove(Integer.valueOf(i));
    }

    public boolean isHandlingATO() {
        ACMAlertDialog aCMAlertDialog = this.atoDialog;
        return aCMAlertDialog != null && aCMAlertDialog.isShowing();
    }

    public String getAtoMessage() {
        return this.atoDialogMessage;
    }

    public void updateThemeUI() {
        ViewGroup viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content);
        if (viewGroup != null) {
            View childAt = viewGroup.getChildAt(0);
            if (childAt instanceof PageBackgroundView) {
                PageBackgroundView pageBackgroundView = (PageBackgroundView) childAt;
                ConfigService configService = (ConfigService) getService("config");
                pageBackgroundView.setDrawable(configService.getTheme().pageBackground());
                pageBackgroundView.setBackgroundDrawable(showThemeColorAsAlternativeBackground() ? new ColorDrawable(configService.getTheme().colorPrimary()) : null);
            }
        }
    }

    public boolean isActionBarCustomed() {
        return this.actionBarCustomed;
    }

    public void setActionBarCustomed(boolean z) {
        this.actionBarCustomed = z;
    }

    public void addThemeDownloadObserver(NVFragment nVFragment) {
        this.themeDownloadObservers.add(nVFragment);
    }

    public void removeThemeDownloadObserver(NVFragment nVFragment) {
        this.themeDownloadObservers.remove(nVFragment);
    }
}
