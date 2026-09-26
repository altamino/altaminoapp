package com.narvii.app;

import android.app.ActionBar;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
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
import android.os.Bundle;
import android.os.SystemClock;
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
import androidx.activity.ComponentActivity;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.AccountService;
import com.narvii.app.theme.NVThemeActivity;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityActiveHelper;
import com.narvii.community.IJoinCommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.mixpanel.PageViewTracker;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.stats.StatsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
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
    private static final int REQUEST_LOGIN = R.id.login & 65535;
    private static final float[] hsv = new float[3];
    private static final int[] state_pressed = {android.R.attr.state_pressed};
    private static final int[] state_normal = new int[0];
    private static TmpValue trackStartActivityTmp = new TmpValue();
    private static long[] BACK_RECORDS = new long[3];
    public static final View.OnClickListener BACK_CLICK_LISTENER = new View.OnClickListener() { // from class: com.narvii.app.NVActivity.13
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
    private final View.OnClickListener backListener = new View.OnClickListener() { // from class: com.narvii.app.NVActivity.9
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
                    this.lbm.f(broadcastReceiver);
                    Log.w("local receiver leak: " + broadcastReceiver.getClass().toString());
                }
            }
        }
    }

    public interface DispatchTouchEventListener {
        void onDispatchTouchEvent();
    }

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

    public static void safedk_ComponentActivity_startActivityForResult_e42adb0e2f1f6ab5a31f68e8cb5ca256(ComponentActivity p0, Intent p1, int p5, Bundle p8) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        super.startActivityForResult(p1, p5, p8);
    }

    public static void safedk_FragmentActivity_startActivityFromFragment_dee2891e09a0991938bcd2569510a76c(FragmentActivity p0, Fragment p1, Intent p5, int p8, Bundle p10) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p5 == null) {
            return;
        }
        super.startActivityFromFragment(p1, p5, p8, p10);
    }

    public static void safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(NVActivity p0, Intent p1, int p5, Bundle p8) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5, p8);
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public int bottomPadding(NVFragment nVFragment) {
        return 0;
    }

    public boolean canScrollUp() {
        return false;
    }

    @CallSuper
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
    }

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
    }

    protected Drawable getActionBarCustomDrawable() {
        return null;
    }

    protected int getActionbarLayoutId(boolean z6, int i10, int i11) {
        return z6 ? i10 : i11;
    }

    public String getAtoMessage() {
        return this.atoDialogMessage;
    }

    public boolean getBooleanParam(String str, boolean z6) {
        boolean booleanParam = ParamUtils.getBooleanParam(this, str, z6);
        if (this.crashlyticsStatus > 0) {
            this.crashlyticsParams.put(str, String.valueOf(booleanParam));
        }
        return booleanParam;
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.cid;
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

    public int getInitStatus() {
        return this.initStatus;
    }

    public int getIntParam(String str, int i10) {
        int intParam = ParamUtils.getIntParam(this, str, i10);
        if (this.crashlyticsStatus > 0) {
            this.crashlyticsParams.put(str, String.valueOf(intParam));
        }
        return intParam;
    }

    @Override // com.narvii.app.LifecycleHost
    public int getLifecycleState() {
        return this.lifecycleState;
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
    }

    public Fragment getRootFragment() {
        return null;
    }

    public boolean hasActionBar() {
        return this.abAvailable;
    }

    public boolean isActionBarCustomed() {
        return this.actionBarCustomed;
    }

    public boolean isActionBarOverlaying() {
        return (this.abFlags & 2) != 0;
    }

    public boolean isActivityResumed() {
        return this.lifecycleState >= 3;
    }

    public boolean isDarkTheme() {
        return (this.abFlags & 8) != 0;
    }

    public boolean isDestoryed() {
        return this.lifecycleState <= -1;
    }

    @Override // com.narvii.logging.Page
    public boolean isFinalPage() {
        return false;
    }

    public boolean isGlobal() {
        return false;
    }

    public boolean isInVisitorMode() {
        return this.inVisitorMode;
    }

    public boolean isPagebackgroundEnabled() {
        return false;
    }

    public boolean isStartingActivity() {
        return this.isStartingActivity;
    }

    public boolean isTranslucentStatusBar() {
        return (this.abFlags & 4) != 0;
    }

    @Override // com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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
        NVApplication.instance().activityOnDestroy(this);
        int i10 = this.resetTaskId;
        if (i10 != 0 && i10 == ApplicationSessionHelper.getTaskId() && isFinishing()) {
            ApplicationSessionHelper.setNewTask(0);
        }
        AffiliationsService.AffiliationChangeListener affiliationChangeListener = this.visitorModeListener;
        if (affiliationChangeListener == null || (affiliationsService = this.affiliationsService) == null) {
            return;
        }
        affiliationsService.removeAffiliationChangeListener(affiliationChangeListener);
    }

    protected void onJoinCommunitySuccessInVisitorMode() {
    }

    protected void onLoginResult(boolean z6, Intent intent) {
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
    }

    public boolean requireAccount() {
        return false;
    }

    public void setActionBarCustomed(boolean z6) {
        this.actionBarCustomed = z6;
    }

    public TextView setActionBarLeftTextView(CharSequence charSequence) {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_left_tv, (ViewGroup) null);
        textView.setText(charSequence);
        textView.setOnClickListener(BACK_CLICK_LISTENER);
        setActionBarLeftView(textView);
        return textView;
    }

    public void setActionBarRightButton(int i10, Drawable drawable, View.OnClickListener onClickListener) {
        setActionBarRightButton(getText(i10), drawable, onClickListener);
    }

    public void setActionBarRightView(View view) {
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

    protected boolean showThemeColorAsAlternativeBackground() {
        return false;
    }

    public void smoothScrollToTop() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(this, intent, i10, null);
    }

    public void toastImage(int i10, int i11) {
        toastImage(getResources().getDrawable(i10), i11);
    }

    public void toastText(int i10, int i11) {
        toastText(getText(i10), i11);
    }

    public View toastView(int i10, int i11) {
        return toastView(i10, i11, 0L);
    }

    protected void updateVisitorModeUI() {
    }

    public static void addPendingForAttach(Callback<NVActivity> callback) {
        pendingForAttach = callback;
        pendingForAttachExpires = System.currentTimeMillis() + 500;
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

    public static Drawable getRightButtonBackground(int i10) {
        float[] fArr = hsv;
        Color.colorToHSV(i10, fArr);
        fArr[2] = fArr[2] * 0.75f;
        int iHSVToColor = Color.HSVToColor(fArr);
        float dimension = NVApplication.instance().getResources().getDimension(R.dimen.actionbar_button_corner_radius);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(i10);
        Paint paint = shapeDrawable.getPaint();
        Paint.Style style = Paint.Style.FILL_AND_STROKE;
        paint.setStyle(style);
        shapeDrawable.getPaint().setPathEffect(new CornerPathEffect(dimension));
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RectShape());
        shapeDrawable2.getPaint().setColor(iHSVToColor);
        shapeDrawable2.getPaint().setStyle(style);
        shapeDrawable2.getPaint().setPathEffect(new CornerPathEffect(dimension));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(state_pressed, shapeDrawable2);
        stateListDrawable.addState(state_normal, shapeDrawable);
        return stateListDrawable;
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
            if (TextUtils.isEmpty(LogUtils.nextPageStrategyInfo)) {
                intent.putExtra("__strategyInfo", getStringParam("__strategyInfo"));
            } else {
                intent.putExtra("__strategyInfo", LogUtils.nextPageStrategyInfo);
            }
        }
        if (!intent.hasExtra("__storyDraftId") && !intent.hasExtra("__ignoreStoryDraftId")) {
            intent.putExtra("__storyDraftId", getStringParam("__storyDraftId"));
        }
        if (!intent.hasExtra("__model")) {
            if (((ConfigService) getService("config")).getCommunityId() == 0 || !intent.getBooleanExtra(INTERACTION_SCOPE, false)) {
                intent.putExtra("__model", isModel());
            } else {
                intent.putExtra("__model", true);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0() {
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

    private void logActive() {
        CommunityActiveHelper communityActiveHelper = (CommunityActiveHelper) getService("_communityActiveHelper");
        if (communityActiveHelper != null) {
            if (this.activeCid == -1) {
                this.activeCid = ((ConfigService) getService("config")).getCommunityId();
            }
            int i10 = this.activeCid;
            if (i10 != 0) {
                communityActiveHelper.logActive(i10);
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
                        trackStartActivityTmp.set(new Object[]{Integer.valueOf(iHashCode), str}, 5000L);
                        intent.putExtra("__trackStartActivityId", iHashCode);
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public void addDispatchTouchEventListener(DispatchTouchEventListener dispatchTouchEventListener) {
        if (this.dispatchTouchEventListeners == null) {
            this.dispatchTouchEventListeners = new ArrayList<>();
        }
        this.dispatchTouchEventListeners.add(dispatchTouchEventListener);
    }

    public void addThemeDownloadObserver(NVFragment nVFragment) {
        this.themeDownloadObservers.add(nVFragment);
    }

    @Override // com.narvii.app.LifecycleHost
    public void addWeakLifecycleListener(LifecycleListener lifecycleListener) {
        if (this.lifecycleListeners == null) {
            this.lifecycleListeners = new EventDispatcher<>();
        }
        this.lifecycleListeners.addListener(lifecycleListener);
    }

    @CallSuper
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        if (this._fromPush) {
            builder.extraParam("pageFromPush", Boolean.TRUE);
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
        if (NVApplication.DEBUG && motionEvent.getAction() == 1) {
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

    public void ensureLogin(Intent intent, String str) {
        if (((AccountService) getService("account")).hasAccount()) {
            onLoginResult(true, intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        intent2.putExtra("promptType", "Required");
        this.loginIntent = intent;
        try {
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent2, REQUEST_LOGIN);
        } catch (Exception unused) {
            Log.e("unable to start login activity");
        }
        NVToast.makeText(this, R.string.login_first, 0).show();
    }

    public int getConfigCid() {
        return ((ConfigService) getService("config")).getCommunityId();
    }

    public String getCrashlyticsFootprint() {
        StringBuilder sb = new StringBuilder();
        sb.append("activity ");
        int i10 = this.crashlyticsStatus;
        if (i10 != 0) {
            sb.append(i10 == 1 ? "create " : "restore ");
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
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
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
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    @Override // com.narvii.logging.Page
    public String getPageName() {
        if (getStringParam("__storyDraftId") == null || !isValidPage()) {
            return null;
        }
        return "story_edit_wildcard";
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return (PageRefererInfo) JacksonUtils.readAs(getStringParam("__pageRefererInfo"), PageRefererInfo.class);
    }

    public Drawable getRightButtonDefaultBackground() {
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        float[] fArr = hsv;
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[2] = fArr[2] * 0.75f;
        return getRightButtonBackground(Color.HSVToColor(fArr));
    }

    public <T> T getService(String str) {
        T t5 = (T) this.serviceManager.getService(str);
        return t5 == null ? (T) ((NVApplication) getApplication()).getService(this, str) : t5;
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        return getStringParam("__strategyInfo");
    }

    public boolean hasPageBackground() {
        return ((ConfigService) getService("config")).getTheme().pageBackground() != null;
    }

    protected void initActionBar() {
        ActionBar actionBar;
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
        try {
            actionBar = getActionBar();
        } catch (Exception unused) {
            actionBar = null;
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

    public boolean isCurrentCommunityJoined() {
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        if (communityId == 0) {
            return true;
        }
        return this.affiliationsService.contains(communityId);
    }

    @Override // com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return getBooleanParam(INTERACTION_SCOPE, ((ConfigService) getService("config")).getCommunityId() == 0);
    }

    public boolean isHandlingATO() {
        ACMAlertDialog aCMAlertDialog = this.atoDialog;
        return aCMAlertDialog != null && aCMAlertDialog.isShowing();
    }

    public boolean isHandlingJoinCommunity() {
        Dialog dialog = this.joinCommunityDialog;
        return dialog != null && dialog.isShowing();
    }

    protected void onActiveChanged(boolean z6) {
        this.pageViewDelegate.sendPageViewEvent(z6);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        Fragment fragment;
        if (i10 == REQUEST_LOGIN) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVActivity.10
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
        if (map == null || (fragment = map.get(Integer.valueOf(i10))) == null) {
            super.onActivityResult(i10, i11, intent);
        } else {
            fragment.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i10, boolean z6, ArrayList<String> arrayList) {
        if (!z6 || PermissionRationaleDialog.isShowing) {
            return;
        }
        PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        PermissionListener permissionListener;
        SparseArray<PermissionListener> sparseArray = this.permissionArray;
        if (sparseArray != null && (permissionListener = sparseArray.get(i10)) != null) {
            NVPermission.onRequestPermissionResult(this, permissionListener, i10, strArr, iArr);
        } else {
            super.onRequestPermissionsResult(i10, strArr, iArr);
            NVPermission.onRequestPermissionResult(this, this, i10, strArr, iArr);
        }
    }

    public void registerActivityRequestCallback(int i10, Fragment fragment) {
        HashMap<Integer, Fragment> map = this.activityRequestMapping;
        if (map == null) {
            this.activityRequestMapping = new HashMap<>();
        } else {
            Fragment fragment2 = map.get(Integer.valueOf(i10));
            if (fragment2 != null && fragment2 != fragment) {
                Log.e("code already registered: " + i10);
            }
        }
        this.activityRequestMapping.put(Integer.valueOf(i10), fragment);
    }

    @Override // com.narvii.app.IPermissionResultDispatcher
    public void registerPermissionResult(int i10, PermissionListener permissionListener) {
        if (permissionListener == null) {
            return;
        }
        if (this.permissionArray == null) {
            this.permissionArray = new SparseArray<>();
        }
        this.permissionArray.put(i10, permissionListener);
    }

    public void removeOnScrollListener(DispatchTouchEventListener dispatchTouchEventListener) {
        ArrayList<DispatchTouchEventListener> arrayList = this.dispatchTouchEventListeners;
        if (arrayList != null) {
            arrayList.remove(dispatchTouchEventListener);
        }
    }

    public void removeThemeDownloadObserver(NVFragment nVFragment) {
        this.themeDownloadObservers.remove(nVFragment);
    }

    @Override // com.narvii.app.LifecycleHost
    public void removeWeakLifecycleListener(LifecycleListener lifecycleListener) {
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(lifecycleListener);
        }
    }

    public void sendNotification(Notification notification) {
        ((NotificationCenter) getService("notification")).sendNotification(notification);
    }

    public void setActionBarRightButton(int i10, View.OnClickListener onClickListener) {
        setActionBarRightButton(getText(i10), getRightButtonDefaultBackground(), onClickListener);
    }

    public void setActionBarTitleColor(int i10) {
        TextView textView = this.abTitle;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i10, @Nullable Bundle bundle) {
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
        safedk_ComponentActivity_startActivityForResult_e42adb0e2f1f6ab5a31f68e8cb5ca256(this, intent, i10, bundle);
        Runnable runnable = this.resetStartingActivity;
        if (runnable == null) {
            this.resetStartingActivity = new ResetStartingActivity();
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.handler.postDelayed(this.resetStartingActivity, 400L);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void startActivityFromFragment(Fragment fragment, Intent intent, int i10, Bundle bundle) {
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
        safedk_FragmentActivity_startActivityFromFragment_dee2891e09a0991938bcd2569510a76c(this, fragment, intent, i10, bundle);
        Runnable runnable = this.resetStartingActivity;
        if (runnable == null) {
            this.resetStartingActivity = new ResetStartingActivity();
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.handler.postDelayed(this.resetStartingActivity, 400L);
    }

    public void toastImage(Drawable drawable, int i10) {
        ((ImageView) toastView(R.layout.toast_image, i10, 0L).findViewById(R.id.toast_image)).setImageDrawable(drawable);
    }

    public void toastImageWithText(Drawable drawable, String str, int i10, long j6) {
        View view = toastView(R.layout.toast_image_text, i10, j6);
        ((ImageView) view.findViewById(R.id.toast_image)).setImageDrawable(drawable);
        ((TextView) view.findViewById(R.id.toast_text)).setText(str);
    }

    public void toastText(CharSequence charSequence, int i10) {
        ((TextView) toastView(R.layout.toast_text, i10, 0L).findViewById(R.id.toast_text)).setText(charSequence);
    }

    public View toastView(int i10, int i11, final long j6) {
        clearToast();
        final ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
        if (isDestoryed() || viewGroup == null) {
            return getLayoutInflater().inflate(i10, (ViewGroup) null, false);
        }
        final View viewInflate = getLayoutInflater().inflate(i10, viewGroup, false);
        viewInflate.setId(R.id.toast_frame);
        viewInflate.setVisibility(4);
        viewGroup.addView(viewInflate);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, i11);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.app.NVActivity.11
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (j6 > 0) {
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.app.NVActivity.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                            NVActivity.this.startRemoveViewAnimation(viewGroup, viewInflate);
                        }
                    }, j6);
                } else {
                    NVActivity.this.startRemoveViewAnimation(viewGroup, viewInflate);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                viewInflate.setVisibility(0);
            }
        });
        viewInflate.startAnimation(animationLoadAnimation);
        return viewInflate;
    }

    @Override // com.narvii.app.IPermissionResultDispatcher
    public void unRegisterPermissionResult(int i10, PermissionListener permissionListener) {
        SparseArray<PermissionListener> sparseArray;
        if (permissionListener == null || (sparseArray = this.permissionArray) == null || sparseArray.get(i10) != permissionListener) {
            return;
        }
        this.permissionArray.remove(i10);
    }

    public void unregisterActivityRequestCallback(int i10, Fragment fragment) {
        Fragment fragment2;
        HashMap<Integer, Fragment> map = this.activityRequestMapping;
        if (map == null || (fragment2 = map.get(Integer.valueOf(i10))) == null || fragment2 != fragment) {
            return;
        }
        this.activityRequestMapping.remove(Integer.valueOf(i10));
    }

    public void unregisterLocalReceiver(BroadcastReceiver broadcastReceiver) {
        LocalBroadcastManager localBroadcastManager = this.localBroadcastManager;
        if (localBroadcastManager != null) {
            localBroadcastManager.f(broadcastReceiver);
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

    private void forceEllipsize() {
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

    protected static boolean isBackTooFast() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j6 = Long.MAX_VALUE;
        for (long j10 : BACK_RECORDS) {
            if (j10 < j6) {
                j6 = j10;
            }
        }
        long j11 = jElapsedRealtime - j6;
        if (j11 <= 0 || j11 >= 1200) {
            return false;
        }
        return true;
    }

    static boolean justStartActivity(Intent intent) {
        StackTraceElement[] stackTrace;
        if (intent.getComponent() == null && (stackTrace = new Exception().getStackTrace()) != null) {
            boolean z6 = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                if (className == null) {
                    className = "";
                }
                if (className.startsWith("com.facebook.ads.") || className.startsWith("com.amazon.device.ads.") || className.startsWith("com.mopub.") || className.startsWith("com.fyber.") || className.startsWith("com.verizon.ads.")) {
                    z6 = true;
                }
                if (z6) {
                    break;
                }
            }
            if (z6) {
                return openWebUrlDirectly(intent);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStop$1(LifecycleListener lifecycleListener) {
        lifecycleListener.lifecycleOnStop(this);
    }

    static boolean openWebUrlDirectly(Intent intent) {
        boolean z6;
        char c7;
        if ("android.intent.action.VIEW".equals(intent.getAction()) && intent.getData() != null && (ProxyConfig.MATCH_HTTP.equals(intent.getData().getScheme()) || ProxyConfig.MATCH_HTTPS.equals(intent.getData().getScheme()))) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((!z6 || !new PackageUtils(NVApplication.instance()).isPermalinkHost(intent.getData().getHost())) && z6) {
            PackageManager packageManager = NVApplication.instance().getPackageManager();
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.isDefault) {
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
                return true;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (listQueryIntentActivities.size() > 0) {
                intent.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
                char c10 = 0;
                for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                    String str = resolveInfo.activityInfo.packageName;
                    if ("com.android.chrome".equals(str)) {
                        c7 = 'c';
                    } else if ("com.chrome.beta".equals(str)) {
                        c7 = 'b';
                    } else if ("com.chrome.dev".equals(str)) {
                        c7 = 'a';
                    } else if ("com.chrome.canary".equals(str)) {
                        c7 = '`';
                    } else if ("com.sec.android.app.sbrowser".equals(str)) {
                        c7 = 'Y';
                    } else if ("org.mozilla.firefox".equals(str)) {
                        c7 = 'E';
                    } else {
                        c7 = 0;
                    }
                    if (c7 > c10) {
                        intent.setClassName(str, resolveInfo.activityInfo.name);
                        c10 = c7;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRemoveViewAnimation(final ViewGroup viewGroup, final View view) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.app.NVActivity.12
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

    public int _communityId() {
        if (isGlobal()) {
            return 0;
        }
        return getIntent().getIntExtra("__communityId", -1);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (this.serviceManager == null) {
            ServiceManager serviceManager = new ServiceManager(this);
            this.serviceManager = serviceManager;
            initServiceManager(serviceManager);
        }
    }

    public void clearToast() {
        View viewFindViewById;
        ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
        if (viewGroup != null && (viewFindViewById = viewGroup.findViewById(R.id.toast_frame)) != null) {
            viewFindViewById.clearAnimation();
            viewGroup.removeView(viewFindViewById);
        }
    }

    public void configPageBackground() {
        ColorDrawable colorDrawable;
        View decorView = getWindow().getDecorView();
        int i10 = R.id.page_background;
        Object tag = decorView.getTag(i10);
        if (tag != null && (tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content);
        PageBackgroundView pageBackgroundView = new PageBackgroundView(getContext());
        ConfigService configService = (ConfigService) getService("config");
        pageBackgroundView.setDrawable(configService.getTheme().pageBackground());
        if (showThemeColorAsAlternativeBackground()) {
            colorDrawable = new ColorDrawable(configService.getTheme().colorPrimary());
        } else {
            colorDrawable = null;
        }
        pageBackgroundView.setBackgroundDrawable(colorDrawable);
        Boolean bool = Boolean.TRUE;
        pageBackgroundView.setTag(i10, bool);
        viewGroup.addView(pageBackgroundView, 0);
        getWindow().getDecorView().setTag(i10, bool);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            keyEvent.getKeyCode();
        }
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
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

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (getIntent().hasExtra("customFinishAnimIn")) {
            overridePendingTransition(getIntent().getIntExtra("customFinishAnimIn", 0), getIntent().getIntExtra("customFinishAnimOut", 0));
        }
    }

    public int getActionBarOverlaySize() {
        if (isActionBarOverlaying()) {
            return Utils.getActionBarHeight(this);
        }
        return 0;
    }

    public boolean getBooleanParam(String str) {
        return getBooleanParam(str, false);
    }

    protected String getCrashlyticsClassName() {
        return getClass().getSimpleName();
    }

    public int getIntParam(String str) {
        return getIntParam(str, 0);
    }

    public Fragment getMainFragment() {
        return getRootFragment();
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        if (getApplication() instanceof NVContext) {
            return (NVContext) getApplication();
        }
        Log.w("Application is not a NVContext");
        return null;
    }

    public TextView getRightTextView() {
        initActionBar();
        if (!hasActionBar()) {
            return null;
        }
        return (TextView) getActionBar().getCustomView().findViewWithTag("right");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i10) {
        return getApplication().getSharedPreferences(str, i10);
    }

    public int getStatusBarOverlaySize() {
        if (isTranslucentStatusBar()) {
            return Utils.getStatusBarHeight(this);
        }
        return 0;
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

    public void handleATO(final String str, final String str2, String str3, String str4, String str5, String str6, boolean z6) {
        if (!isHandlingATO() && !isDestoryed()) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this);
            this.atoDialog = aCMAlertDialog;
            aCMAlertDialog.setTitle(str3);
            ACMAlertDialog aCMAlertDialog2 = this.atoDialog;
            this.atoDialogMessage = str4;
            aCMAlertDialog2.setMessage(str4);
            if (TextUtils.isEmpty(str5)) {
                str5 = getResources().getString(android.R.string.ok);
            }
            if (TextUtils.isEmpty(str6)) {
                str6 = getResources().getString(R.string.cancel);
            }
            int color = ContextCompat.getColor(getContext(), R.color.dialog_option_blue);
            if (!z6) {
                this.atoDialog.addButton(str6, color, new View.OnClickListener() { // from class: com.narvii.app.NVActivity.14
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (NVActivity.this.atoDialog != null) {
                            NVActivity.this.atoDialog.dismiss();
                        }
                    }
                });
            }
            this.atoDialog.addButton(str5, color, new View.OnClickListener() { // from class: com.narvii.app.NVActivity.15
                public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Uri fragmentDeepLinkUri;
                    if (TextUtils.isEmpty(str2) || !str2.startsWith("ndc://") || Uri.parse(str2) == null) {
                        FragmentRegister fragmentRegister = (FragmentRegister) NVActivity.this.getService("fragmentRegister");
                        if (fragmentRegister != null && (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("accountWebView")) != null) {
                            Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                            intent.putExtra(ImagesContract.URL, str);
                            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity.this, intent, 79);
                        }
                    } else {
                        Uri uri = Uri.parse(str2);
                        if (uri != null) {
                            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity.this, new Intent("android.intent.action.VIEW", uri), 79);
                        }
                    }
                    if (NVActivity.this.atoDialog != null) {
                        NVActivity.this.atoDialog.dismiss();
                    }
                }
            });
            this.atoDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.app.NVActivity.16
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    NVActivity.this.atoDialog = null;
                    NVActivity.this.atoDialogMessage = null;
                }
            });
            this.atoDialog.show();
        }
    }

    public void handleCommunityNotJoined(int i10) {
        IJoinCommunityService iJoinCommunityService;
        if (!isHandlingJoinCommunity() && !isDestoryed() && i10 > 0 && getConfigCid() == i10 && (iJoinCommunityService = (IJoinCommunityService) getService("joinCommunity")) != null) {
            this.joinCommunityDialog = iJoinCommunityService.showJoinCommunityDialog(this, i10);
        }
    }

    public void initPageBackground() {
        ViewGroup viewGroup;
        if (!isPagebackgroundEnabled() || (viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content)) == null) {
            return;
        }
        viewGroup.getViewTreeObserver().addOnWindowAttachListener(new ViewTreeObserver.OnWindowAttachListener() { // from class: com.narvii.app.NVActivity.8
            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowDetached() {
            }

            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowAttached() {
                NVActivity.this.configPageBackground();
            }
        });
    }

    protected void initServiceManager(ServiceManager serviceManager) {
        NVApplication.instance().initActivityServices(this, serviceManager);
    }

    public boolean isModel() {
        if (!getIntent().hasExtra("__model")) {
            return false;
        }
        return getIntent().getBooleanExtra("__model", false);
    }

    public boolean isVisitorNotJoined() {
        if (isInVisitorMode() && !isCurrentCommunityJoined()) {
            return true;
        }
        return false;
    }

    protected boolean logPageViewEvent() {
        return isValidPage();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        addBack();
    }

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z6;
        Log.d("@@@", getClass().getSimpleName());
        getWindow().requestFeature(12);
        getWindow().requestFeature(13);
        if (_communityId() > 0 && getBooleanParam("__visitorMode")) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.inVisitorMode = z6;
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (isVisitorNotJoined()) {
            AffiliationsService.AffiliationChangeListener affiliationChangeListener = new AffiliationsService.AffiliationChangeListener() { // from class: com.narvii.app.e
                @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
                public final void onAffiliationChanged() {
                    this.f1827a.lambda$onCreate$0();
                }
            };
            this.visitorModeListener = affiliationChangeListener;
            this.affiliationsService.addAffiliationChangeListener(affiliationChangeListener);
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
            ServiceManager serviceManager = new ServiceManager(this);
            this.serviceManager = serviceManager;
            initServiceManager(serviceManager);
        }
        if (bundle == null) {
            this.newCreate = true;
            if (!isTaskRoot() && ApplicationSessionHelper.getTaskId() != 0) {
                if (getTaskId() != ApplicationSessionHelper.getTaskId()) {
                    Log.w(this + " has a different taskId " + getTaskId());
                }
            } else {
                this.initTaskActivity = true;
                int taskId = getTaskId();
                this.resetTaskId = taskId;
                ApplicationSessionHelper.setNewTask(taskId);
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
        int i10 = 2;
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
        if (bundle == null) {
            i10 = 1;
        }
        this.crashlyticsStatus = i10;
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
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z10) {
                NVActivity.this.completePageViewEvent(builder, z10);
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return NVActivity.this.logPageViewEvent();
            }
        };
        resetPvId();
        Drawable actionBarCustomDrawable = getActionBarCustomDrawable();
        if (actionBarCustomDrawable != null) {
            StatusBarUtils.setTranslucentStatusBar(this, actionBarCustomDrawable);
            if (!StatusBarUtils.STATUS_BAR_ENABLE) {
                setActionBarBackground(actionBarCustomDrawable);
            }
        }
        getSupportFragmentManager().r1(new PageViewTracker(new MixpanelAnalytics(getContext())), true);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
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
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.narvii.app.NVActivity.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (((AccountService) NVActivity.this.getService("account")).hasAccount() || NVActivity.this.isDestoryed()) {
                        return;
                    }
                    NVActivity.this.finish();
                }
            };
            this.requireAccountReceiver = broadcastReceiver;
            registerLocalReceiver(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
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

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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

    @Override // com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.lifecycleState = 1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.app.d
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f1826a.lambda$onStop$1((LifecycleListener) obj);
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

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        TextView textView = this.abTitle;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (isDestoryed()) {
            Log.e("register local broadcast receiver after destory");
        }
        if (this.localBroadcastManager == null) {
            this.localBroadcastManager = LocalBroadcastManager.b(this);
        }
        this.localBroadcastManager.c(broadcastReceiver, intentFilter);
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

    public void removeRightView() {
        View viewFindViewById;
        initActionBar();
        if (hasActionBar() && (viewFindViewById = ((ViewGroup) getActionBar().getCustomView()).findViewById(R.id.tv_right)) != null) {
            ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
        }
    }

    protected void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    public boolean rightViewEnabled() {
        TextView textView;
        initActionBar();
        if (!hasActionBar() || (textView = (TextView) getActionBar().getCustomView().findViewWithTag("right")) == null) {
            return false;
        }
        return textView.isEnabled();
    }

    public void setActionBarBackground(Drawable drawable) {
        initActionBar();
        if (!hasActionBar()) {
            return;
        }
        getActionBar().setBackgroundDrawable(drawable);
        setActionBarCustomed(true);
    }

    public void setActionBarBackgroundDefault() {
        initActionBar();
        if (!hasActionBar()) {
            return;
        }
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

    public void setActionBarLeftView(View view) {
        View viewFindViewById;
        initActionBar();
        if (!hasActionBar()) {
            return;
        }
        ActionBar actionBar = getActionBar();
        if (actionBar.getCustomView() != null && (viewFindViewById = actionBar.getCustomView().findViewById(R.id.actionbar_left)) != null) {
            ViewGroup viewGroup = (ViewGroup) viewFindViewById;
            viewGroup.removeAllViews();
            if (view != null) {
                viewGroup.addView(view);
            }
        }
    }

    public void setActionBarRightButton(CharSequence charSequence, View.OnClickListener onClickListener) {
        setActionBarRightButton(charSequence, getRightButtonDefaultBackground(), onClickListener);
    }

    public void setActionBarTitleView(View view) {
        initActionBar();
        if (!hasActionBar()) {
            return;
        }
        View customView = getActionBar().getCustomView();
        int i10 = R.id.actionbar_title;
        View viewFindViewById = customView.findViewById(i10);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
        view.setLayoutParams(viewFindViewById.getLayoutParams());
        view.setId(i10);
        viewGroup.removeView(viewFindViewById);
        viewGroup.addView(view);
    }

    public void setBackButtonDrawable(Drawable drawable) {
        ImageView imageView;
        initActionBar();
        if (!hasActionBar() || (imageView = (ImageView) getActionBar().getCustomView().findViewById(R.id.actionbar_back)) == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void setBackButtonTint(int i10) {
        initActionBar();
        if (!hasActionBar()) {
            return;
        }
        ImageView imageView = (ImageView) getActionBar().getCustomView().findViewById(R.id.actionbar_back);
        if (imageView instanceof TintButton) {
            ((TintButton) imageView).setTintColor(i10);
        }
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        this.newIntent = intent;
    }

    public void setRightButtonEnabled(boolean z6) {
        View viewFindViewById;
        initActionBar();
        if (hasActionBar() && getActionBar() != null && getActionBar().getCustomView() != null && (viewFindViewById = getActionBar().getCustomView().findViewById(R.id.actionbar_right_btn_btn)) != null) {
            viewFindViewById.setEnabled(z6);
        }
    }

    public void setRightView(int i10, TextView textView, View.OnClickListener onClickListener) {
        textView.setText(getString(i10));
        textView.setOnClickListener(onClickListener);
        textView.setTag("right");
        setActionBarRightView(textView);
    }

    public void setRightViewEnabled(boolean z6) {
        TextView textView;
        initActionBar();
        if (hasActionBar() && (textView = (TextView) getActionBar().getCustomView().findViewWithTag("right")) != null) {
            textView.setEnabled(z6);
        }
    }

    public void setRightViewVisible(boolean z6) {
        View viewFindViewWithTag;
        int i10;
        initActionBar();
        if (hasActionBar() && (viewFindViewWithTag = getActionBar().getCustomView().findViewWithTag("right")) != null) {
            if (z6) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            viewFindViewWithTag.setVisibility(i10);
        }
    }

    public void setStatusBar() {
        ColorDrawable colorDrawable;
        if (shouldShowPageBackground() && hasPageBackground()) {
            colorDrawable = new ColorDrawable(0);
        } else {
            colorDrawable = null;
        }
        StatusBarUtils.setTranslucentStatusBar(this, colorDrawable);
        setActionBarCustomed(false);
    }

    public boolean shouldShowPageBackground() {
        return isPagebackgroundEnabled();
    }

    public void toastTextFromTop(int i10, int i11) {
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize() + Utils.dpToPxInt(getContext(), 20.0f);
        View view = toastView(R.layout.toast_text_top, R.anim.toast_slide_in_top, i11);
        View viewFindViewById = findViewById(R.id.toast_frame);
        if (viewFindViewById != null) {
            viewFindViewById.setPadding(0, actionBarOverlaySize, 0, 0);
        }
        ((TextView) view.findViewById(R.id.toast_text)).setText(getText(i10));
    }

    public void updateThemeUI() {
        ColorDrawable colorDrawable;
        ViewGroup viewGroup = (ViewGroup) getWindow().findViewById(android.R.id.content);
        if (viewGroup != null) {
            View childAt = viewGroup.getChildAt(0);
            if (childAt instanceof PageBackgroundView) {
                PageBackgroundView pageBackgroundView = (PageBackgroundView) childAt;
                ConfigService configService = (ConfigService) getService("config");
                pageBackgroundView.setDrawable(configService.getTheme().pageBackground());
                if (showThemeColorAsAlternativeBackground()) {
                    colorDrawable = new ColorDrawable(configService.getTheme().colorPrimary());
                } else {
                    colorDrawable = null;
                }
                pageBackgroundView.setBackgroundDrawable(colorDrawable);
            }
        }
    }

    public void setActionBarRightButton(CharSequence charSequence, Drawable drawable, View.OnClickListener onClickListener) {
        initActionBar();
        if (hasActionBar()) {
            ViewGroup viewGroup = (ViewGroup) getActionBar().getCustomView();
            int i10 = R.id.actionbar_right_btn;
            View viewFindViewById = viewGroup.findViewById(i10);
            if (viewFindViewById == null) {
                getLayoutInflater().inflate(R.layout.actionbar_btn, viewGroup);
                viewFindViewById = viewGroup.findViewById(i10);
            }
            int i11 = R.id.actionbar_right_btn_btn;
            viewFindViewById.findViewById(i11).setBackgroundDrawable(drawable);
            View viewFindViewById2 = viewFindViewById.findViewById(i11);
            viewFindViewById2.setOnClickListener(onClickListener);
            ((TextView) viewFindViewById2).setText(charSequence);
        }
    }

    public void toastImage(int i10) {
        toastImage(i10, R.anim.toast_drop);
    }

    public void toastText(int i10) {
        toastText(i10, R.anim.toast_pop);
    }

    private static void addBack() {
        long j6 = Long.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            long[] jArr = BACK_RECORDS;
            if (i10 < jArr.length) {
                long j10 = jArr[i10];
                if (j10 < j6) {
                    i11 = i10;
                    j6 = j10;
                }
                i10++;
            } else {
                jArr[i11] = SystemClock.elapsedRealtime();
                return;
            }
        }
    }

    public TextView setActionBarLeftTextView(int i10) {
        return setActionBarLeftTextView(getText(i10));
    }

    public void toastImage(Drawable drawable) {
        toastImage(drawable, R.anim.toast_drop);
    }

    public void toastText(CharSequence charSequence) {
        toastText(charSequence, R.anim.toast_pop);
    }

    public void setActionBarRightView(int i10, int i11, boolean z6, View.OnClickListener onClickListener) {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_right_tv, (ViewGroup) null);
        textView.setTextColor(i11);
        textView.setShadowLayer(z6 ? 1.0f : 0.0f, z6 ? 2.0f : 0.0f, z6 ? 2.0f : 0.0f, z6 ? -11184811 : 0);
        setRightView(i10, textView, onClickListener);
    }

    public void setActionBarRightView(int i10, ColorStateList colorStateList, boolean z6, View.OnClickListener onClickListener) {
        TextView textView = (TextView) LayoutInflater.from(this).inflate(R.layout.actionbar_right_tv, (ViewGroup) null);
        textView.setTextColor(colorStateList);
        textView.setShadowLayer(z6 ? 1.0f : 0.0f, z6 ? 2.0f : 0.0f, z6 ? 2.0f : 0.0f, z6 ? -11184811 : 0);
        setRightView(i10, textView, onClickListener);
    }

    public void setActionBarRightView(int i10, View.OnClickListener onClickListener) {
        setActionBarRightView(i10, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, onClickListener);
    }
}
