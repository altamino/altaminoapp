package com.narvii.app;

import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.Page;
import com.narvii.logging.PageRefererInfo;
import com.narvii.logging.PageViewDelegate;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionRationaleDialog;
import com.narvii.services.ServiceManager;
import com.narvii.theme.IFakeActionBar;
import com.narvii.util.BundleUtils;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.ParamUtils;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;
import io.agora.rtc.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public class NVFragment extends NVThemeFragment implements NVContext, LifecycleHost, IPermissionResultDispatcher, PermissionListener, Page, NVInteractionScope {
    protected boolean _fromPush;
    protected String _pushTrackId;
    private long cid;
    private boolean isActive;
    private boolean isDarkTheme;
    private boolean isFinishing;
    protected boolean isLogLevelActive;
    private Boolean isRootFragment;
    private EventDispatcher<LifecycleListener> lifecycleListeners;
    private int lifecycleState;
    private LocalBroadcastManager localBroadcastManager;
    private ArrayList<WeakReference<BroadcastReceiver>> localReceivers;
    private Intent loginIntent;
    private MenuController menuController;
    PageViewDelegate pageViewDelegate;
    SparseArray<PermissionListener> permissionArray;
    protected String pvId;
    private ServiceManager serviceManager;
    private static final int REQUEST_LOGIN = R.id.login & SupportMenu.USER_MASK;
    private static final Drawable ACTIONBAR_RIGHT_BUTTON_DEFAULT = new ColorDrawable(0);
    private final HashMap<String, Object> services = new HashMap<>();
    private WeakReference<NVActivity> cachedAttachedActivity = null;
    private int cachedCid = 0;
    private boolean isVisibleHint = true;
    protected int _backgroundColor = 0;
    private final Runnable refreshActive = new Runnable() { // from class: com.narvii.app.NVFragment.9
        @Override // java.lang.Runnable
        public void run() {
            boolean z = NVFragment.this.lifecycleState >= 3 && NVFragment.this.isVisibleHint;
            if (NVFragment.this.isActive != z) {
                NVFragment.this.isActive = z;
                NVFragment nVFragment = NVFragment.this;
                nVFragment.onActiveChanged(nVFragment.isActive);
            }
        }
    };

    /* loaded from: classes2.dex */
    public interface MenuController {
        void invalidateMenu(NVFragment nVFragment);

        void onScrollDistance(int i);

        void onScrollFinish();

        void registerMenu(NVFragment nVFragment);

        void setScrollEnabled(boolean z);

        void setTopMargin(int i, boolean z);

        void unregisterMenu(NVFragment nVFragment);
    }

    /* loaded from: classes2.dex */
    public interface MenuHost {
        MenuController getMenuController(NVFragment nVFragment);
    }

    public boolean canScrollUp() {
        return false;
    }

    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
    }

    protected Drawable getActionBarCustomDrawable() {
        return null;
    }

    protected int getActionBarLayoutId() {
        return -1;
    }

    public int getCustomTheme() {
        return 0;
    }

    public int getPostEntryLift() {
        return 0;
    }

    public Boolean hasCBB(NVActivity nVActivity, Intent intent) {
        return null;
    }

    public Boolean hasPostEntry() {
        return null;
    }

    protected boolean hasVisitorBar() {
        return false;
    }

    public boolean hideCBBInHomeFragment() {
        return false;
    }

    @Override // com.narvii.logging.Page
    public boolean isFinalPage() {
        return false;
    }

    public boolean isGlobal() {
        return false;
    }

    public boolean isModel() {
        return false;
    }

    public boolean isPageBackgroundEnabled() {
        return false;
    }

    @Override // com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    protected boolean observeThemeDownloadFinish() {
        return false;
    }

    protected void onLoginResult(boolean z, Intent intent) {
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
    }

    public boolean requireAccount() {
        return false;
    }

    protected boolean sendPageViewEventToThirdParty() {
        return false;
    }

    public void setPageRefererInfo(PageRefererInfo pageRefererInfo) {
    }

    protected boolean showThemeColorAsAlternativeBackground() {
        return false;
    }

    public void smoothScrollToTop() {
    }

    public void updateThemeUI() {
    }

    public final boolean isEmbedFragment() {
        return getBooleanParam("__embed");
    }

    public boolean isRootFragment() {
        if (this.isRootFragment == null) {
            FragmentActivity activity = getActivity();
            this.isRootFragment = Boolean.valueOf((activity instanceof NVActivity) && ((NVActivity) activity).getRootFragment() == this);
        }
        return this.isRootFragment.booleanValue();
    }

    public Boolean hasOnlineBar() {
        if (isGlobalInteractionScope()) {
            return false;
        }
        return hasPostEntry();
    }

    public int getOnlineBarLift() {
        return getPostEntryLift();
    }

    public int getCBBLift() {
        return getOnlineBarLift();
    }

    public boolean shouldShowPageBackground() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).shouldShowPageBackground();
        }
        return false;
    }

    public int getStatusBarAlpha() {
        if (getCustomTheme() == R.style.AminoThemeDark_Overlay) {
            return Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT;
        }
        return 0;
    }

    public boolean isInVisitorMode() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isInVisitorMode();
        }
        return false;
    }

    public boolean isCurrentCommunityJoined() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isCurrentCommunityJoined();
        }
        return false;
    }

    public boolean isVisitorNotJoined() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isVisitorNotJoined();
        }
        return false;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) context;
            this.cachedAttachedActivity = new WeakReference<>(nVActivity);
            this.cachedCid = nVActivity._communityId();
        }
    }

    public void setCrossBackIcon() {
        if ((getActivity() instanceof NVActivity) && ((NVActivity) getActivity()).hasActionBar()) {
            try {
                ImageView imageView = (ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back);
                if (imageView != null) {
                    imageView.setImageResource(R.drawable.ic_back_cross);
                }
            } catch (Exception e) {
                Log.e("fail to set cross back icon", e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            this._pushTrackId = getStringParam("_pushTrackId");
            this._fromPush = getBooleanParam("_pushIntent");
        }
        if (isFinalPage()) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
                setArguments(arguments);
            }
            if (LogUtils.nextPageRefererInfo != null && !arguments.containsKey("__pageRefererInfo")) {
                arguments.putString("__pageRefererInfo", JacksonUtils.writeAsString(LogUtils.nextPageRefererInfo));
            }
            if (LogUtils.nextPageStrategyInfo != null && !arguments.containsKey("__strategyInfo")) {
                arguments.putString("__strategyInfo", LogUtils.nextPageStrategyInfo);
            }
        }
        this.pageViewDelegate = new PageViewDelegate(this, this, getStringParam("__storyDraftId")) { // from class: com.narvii.app.NVFragment.1
            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return NVFragment.this.logPageViewEvent();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return NVFragment.this.sendPageViewEventToThirdParty();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
                NVFragment.this.completePageViewEvent(builder, z);
            }
        };
        resetPvId();
        if (bundle == null) {
            if (isEmbedFragment()) {
                try {
                    int customTheme = getCustomTheme();
                    if (customTheme != 0) {
                        Resources.Theme themeNewTheme = getResources().newTheme();
                        themeNewTheme.applyStyle(customTheme, true);
                        TypedArray typedArrayObtainStyledAttributes = themeNewTheme.obtainStyledAttributes(R.styleable.AminoTheme);
                        this.isDarkTheme = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AminoTheme_themeDark, false);
                        typedArrayObtainStyledAttributes.recycle();
                    }
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName() + " fail to determine dark theme", e);
                }
            } else if (getActivity() instanceof NVActivity) {
                this.isDarkTheme = ((NVActivity) getActivity()).isDarkTheme();
            }
        } else {
            this.cid = bundle.getLong("__cid");
            this.loginIntent = (Intent) bundle.getParcelable("__loginIntent");
            this.isDarkTheme = bundle.getBoolean("__isDarkTheme");
            if (bundle.containsKey("__isRootFragment")) {
                this.isRootFragment = Boolean.valueOf(bundle.getBoolean("__isRootFragment"));
            }
        }
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.create();
        }
        this.lifecycleState = 1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.2
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnCreate(NVFragment.this);
                }
            });
        }
        if (this instanceof NotificationListener) {
            ((NotificationCenter) getService("notification")).registerListener(this, (NotificationListener) this);
        }
    }

    public int getConfigCid() {
        return ((ConfigService) getService("config")).getCommunityId();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setActionBarCustomDrawable(getActionBarCustomDrawable());
        if (!observeThemeDownloadFinish() || getActivity() == null) {
            return;
        }
        ((NVActivity) getActivity()).addThemeDownloadObserver(this);
    }

    @Override // com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (observeThemeDownloadFinish() && getActivity() != null) {
            ((NVActivity) getActivity()).removeThemeDownloadObserver(this);
        }
        super.onDestroyView();
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return (PageRefererInfo) JacksonUtils.readAs(ParamUtils.getStringParam(this, "__pageRefererInfo", false), PageRefererInfo.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.lifecycleState = -1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.3
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnDestroy(NVFragment.this);
                }
            });
        }
        if (this.cid != 0) {
            ((NotificationCenter) getService("notification")).unregisterListener(this, true);
        }
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.destroy();
        }
        cleanLeakLocalReceivers();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        long j = this.cid;
        if (j != 0) {
            bundle.putLong("__cid", j);
        }
        Intent intent = this.loginIntent;
        if (intent != null) {
            bundle.putParcelable("__loginIntent", intent);
        }
        bundle.putBoolean("__isDarkTheme", this.isDarkTheme);
        Boolean bool = this.isRootFragment;
        if (bool != null) {
            bundle.putBoolean("__isRootFragment", bool.booleanValue());
        }
        Utils.post(new Runnable() { // from class: com.narvii.app.NVFragment.4
            @Override // java.lang.Runnable
            public void run() {
                int iSizeAsParcel = BundleUtils.sizeAsParcel(bundle);
                if (iSizeAsParcel < 100000) {
                    return;
                }
                Log.i("onSaveInstanceState", "===" + NVFragment.this.getClass().getName() + "(" + iSizeAsParcel + ")===");
            }
        });
    }

    public boolean isDestoryed() {
        return this.lifecycleState <= -1;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.start();
        }
        this.lifecycleState = 2;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.5
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnStart(NVFragment.this);
                }
            });
        }
        super.onStart();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.lifecycleState = 1;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.6
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnStop(NVFragment.this);
                }
            });
        }
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.stop();
        }
    }

    public boolean isActive() {
        return this.isActive;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.resume();
        }
        super.onResume();
        boolean z = this.isVisibleHint;
        if (!z) {
            setVisibleHint(z);
        } else {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
        this.lifecycleState = 3;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.7
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnResume(NVFragment.this);
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.lifecycleState = 2;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<LifecycleListener>() { // from class: com.narvii.app.NVFragment.8
                @Override // com.narvii.util.Callback
                public void call(LifecycleListener lifecycleListener) {
                    lifecycleListener.lifecycleOnPause(NVFragment.this);
                }
            });
        }
        Utils.handler.removeCallbacks(this.refreshActive);
        Utils.post(this.refreshActive);
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.pause();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        setVisibleHint(z);
    }

    @Override // android.support.v4.app.Fragment
    public boolean getUserVisibleHint() {
        return this.isVisibleHint && super.getUserVisibleHint();
    }

    public void setVisibleHint(boolean z) {
        this.isVisibleHint = z;
        if (this.lifecycleState >= 3) {
            updateChildrenVisibleHint(z);
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    protected void updateChildrenVisibleHint(boolean z) {
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment instanceof NVFragment) {
                    ((NVFragment) fragment).setVisibleHint(z);
                }
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        boolean z2 = this.isActive && !z;
        if (canSendActiveLog(z2)) {
            this.isLogLevelActive = z2;
            sendPageViewEvent(z2);
        }
    }

    public void manuallyRefresh(Callback<Integer> callback) {
        if (callback != null) {
            callback.call(1);
        }
    }

    public void onActiveChanged(boolean z) {
        onLogLevelActiveChanged(z);
    }

    public void onLogLevelActiveChanged(boolean z) {
        if (canSendActiveLog(z)) {
            this.isLogLevelActive = z;
            sendPageViewEvent(z);
        }
    }

    protected boolean canSendActiveLog(boolean z) {
        return (this.isLogLevelActive == z || this.pageViewDelegate == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendPageViewEvent(boolean z) {
        this.pageViewDelegate.sendPageViewEvent(z);
    }

    protected boolean logPageViewEvent() {
        return isValidPage();
    }

    public void setEmbedServiceManager(ServiceManager serviceManager) {
        this.serviceManager = serviceManager;
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        WeakReference<NVActivity> weakReference;
        NVActivity nVActivity;
        T t;
        ServiceManager serviceManager = this.serviceManager;
        NVContext parentContext = null;
        Object service = serviceManager != null ? serviceManager.getService(str) : null;
        if (service == null) {
            service = this.services.get(str);
        }
        if (service == null && (parentContext = getParentContext()) != null && (service = (T) parentContext.getService(str)) != null) {
            this.services.put(str, service);
        }
        if (service == null) {
            if (parentContext == null && (weakReference = this.cachedAttachedActivity) != null && (nVActivity = weakReference.get()) != null && (t = (T) nVActivity.getService(str)) != null) {
                this.services.put(str, t);
                return t;
            }
            if (getActivity() == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("get ");
                sb.append(str);
                sb.append(" service when NVFragment is ");
                sb.append(this.lifecycleState <= -1 ? "destoryed" : "not attached");
                Log.e(sb.toString());
            }
            if (this.cachedCid > 0) {
                service = (T) NVApplication.instance().getService(this.cachedCid, str);
            } else {
                service = NVApplication.instance().getService(str);
            }
            if (service != null) {
                this.services.put(str, service);
            }
        }
        return (T) service;
    }

    @Override // android.support.v4.app.Fragment, com.narvii.app.NVContext
    public Context getContext() {
        NVActivity nVActivity;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        WeakReference<NVActivity> weakReference = this.cachedAttachedActivity;
        if (weakReference != null && (nVActivity = weakReference.get()) != null) {
            return nVActivity;
        }
        Log.e("NVFragment is not attached. returning application context instead.");
        return NVApplication.instance();
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        ComponentCallbacks parentFragment = getParentFragment();
        if (parentFragment instanceof NVContext) {
            return (NVContext) parentFragment;
        }
        return Utils.getNVContext(getActivity());
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        if (this.cid == 0) {
            this.cid = Utils.generateUniqueLongId();
        }
        return this.cid;
    }

    public void setResult(int i) {
        setResult(i, null);
    }

    public void setResult(int i, Intent intent) {
        FragmentActivity activity;
        if (isEmbedFragment() || (activity = getActivity()) == null || this.lifecycleState <= -1) {
            return;
        }
        activity.setResult(i, intent);
    }

    public void finish() {
        this.isFinishing = true;
        if (isEmbedFragment()) {
            Log.w("finish() ignored in embed fragment");
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || this.lifecycleState <= -1) {
            return;
        }
        activity.finish();
    }

    public boolean isFinishing() {
        FragmentActivity activity;
        if (this.isFinishing) {
            return true;
        }
        if (isEmbedFragment() || (activity = getActivity()) == null) {
            return false;
        }
        return activity.isFinishing();
    }

    public void setTitle(int i) {
        FragmentActivity activity = getActivity();
        if (activity == null || !isRootFragment()) {
            return;
        }
        activity.setTitle(i);
    }

    public void setTitle(CharSequence charSequence) {
        FragmentActivity activity = getActivity();
        if (activity == null || !isRootFragment()) {
            return;
        }
        activity.setTitle(charSequence);
    }

    public String getStringParam(String str) {
        return ParamUtils.getStringParam(this, str);
    }

    public int getIntParam(String str, int i) {
        return ParamUtils.getIntParam(this, str, i);
    }

    public int getIntParam(String str) {
        return getIntParam(str, 0);
    }

    public boolean getBooleanParam(String str, boolean z) {
        return ParamUtils.getBooleanParam(this, str, z);
    }

    public boolean getBooleanParam(String str) {
        return getBooleanParam(str, false);
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

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
        if (!z || PermissionRationaleDialog.isShowing) {
            return;
        }
        PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
    }

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

    @Override // com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        boolean z = false;
        if (isAdded() && ((ConfigService) getService("config")).getCommunityId() == 0) {
            z = true;
        }
        return getBooleanParam(NVActivity.INTERACTION_SCOPE, z);
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

    public void showImageToast(int i) throws Resources.NotFoundException {
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).toastImageWithText(ContextCompat.getDrawable(getContext(), R.drawable.check), getContext().getString(i), R.anim.toast_scale_in, 500L);
        } else {
            NVToast.makeText(getContext(), i, 0).show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void setHasOptionsMenu(boolean z) {
        if (isEmbedFragment()) {
            MenuController menuController = getMenuController();
            if (menuController != null) {
                if (z) {
                    menuController.registerMenu(this);
                    return;
                } else {
                    menuController.unregisterMenu(this);
                    return;
                }
            }
            return;
        }
        super.setHasOptionsMenu(z);
    }

    public void invalidateOptionsMenu() {
        if (isEmbedFragment()) {
            MenuController menuController = this.menuController;
            if (menuController != null) {
                menuController.invalidateMenu(this);
                return;
            }
            return;
        }
        if (getActivity() != null) {
            getActivity().invalidateOptionsMenu();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MenuController getMenuController() {
        if (this.menuController == null && isEmbedFragment()) {
            Fragment parentFragment = getParentFragment();
            while (true) {
                if (parentFragment == 0) {
                    break;
                }
                if (parentFragment instanceof MenuHost) {
                    this.menuController = ((MenuHost) parentFragment).getMenuController(this);
                    break;
                }
                parentFragment = parentFragment.getParentFragment();
            }
        }
        return this.menuController;
    }

    public void sendNotification(Notification notification) {
        ((NotificationCenter) getService("notification")).sendNotification(notification);
    }

    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.lifecycleState <= -1) {
            Log.e("register local broadcast receiver after destory");
        }
        if (this.localBroadcastManager == null) {
            this.localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
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

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
    }

    public void ensureLogin(Intent intent, String str) {
        if (((AccountService) getService("account")).hasAccount()) {
            onLoginResult(true, intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
        if (intent != null && intent.getExtras() != null) {
            intent2.putExtras(intent.getExtras());
        }
        intent2.putExtra("Source", str);
        intent2.putExtra("promptType", "Required");
        this.loginIntent = intent;
        startActivityForResult(intent2, REQUEST_LOGIN);
        ensureLoginToast();
    }

    public boolean shouldShowLoginPage() {
        if (((AccountService) getService("account")).hasAccount()) {
            return false;
        }
        ensureLogin(new Intent());
        return true;
    }

    protected void ensureLoginToast() {
        NVToast.makeText(getActivity(), R.string.login_first, 0).show();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == REQUEST_LOGIN) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVFragment.10
                @Override // java.lang.Runnable
                public void run() {
                    if (NVFragment.this.lifecycleState <= -1) {
                        return;
                    }
                    Intent intent2 = NVFragment.this.loginIntent;
                    if (intent2 == null) {
                        intent2 = new Intent();
                    }
                    NVFragment.this.loginIntent = null;
                    NVFragment.this.onLoginResult(((AccountService) NVFragment.this.getService("account")).hasAccount(), intent2);
                }
            });
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    public boolean isActionBarOverlaying() {
        if (isEmbedFragment()) {
            return false;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).isActionBarOverlaying();
        }
        return false;
    }

    public boolean isTranslucentStatusBar() {
        if (isEmbedFragment()) {
            return false;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).isTranslucentStatusBar();
        }
        return false;
    }

    public int getStatusBarOverlaySize() {
        if (isEmbedFragment()) {
            return 0;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).getStatusBarOverlaySize();
        }
        return 0;
    }

    public int getActionBarOverlaySize() {
        if (isEmbedFragment()) {
            return 0;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).getActionBarOverlaySize();
        }
        return 0;
    }

    public void setActionBarBackground(Drawable drawable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarBackground(drawable);
        }
    }

    public void setActionBarBackgroundDefault() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarBackgroundDefault();
        }
    }

    public void setActionBarTitleView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarTitleView(view);
        }
    }

    public void setActionBarLeftView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarLeftView(view);
        }
    }

    public void setBackButtonTint(int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setBackButtonTint(i);
        }
    }

    public void setBackButtonDrawable(Drawable drawable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setBackButtonDrawable(drawable);
        }
    }

    public void setActionBarTitleColor(int i) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarTitleColor(i);
        }
    }

    public void setActionBarRightButton(int i, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(getText(i), ACTIONBAR_RIGHT_BUTTON_DEFAULT, onClickListener);
    }

    public void setActionBarRightButton(int i, Drawable drawable, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(getText(i), drawable, onClickListener);
    }

    public void setActionBarRightButton(CharSequence charSequence, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        setActionBarRightButton(charSequence, ACTIONBAR_RIGHT_BUTTON_DEFAULT, onClickListener);
    }

    public void setActionBarRightButton(CharSequence charSequence, Drawable drawable, View.OnClickListener onClickListener) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            if (drawable == ACTIONBAR_RIGHT_BUTTON_DEFAULT) {
                drawable = ((NVActivity) activity).getRightButtonDefaultBackground();
            }
            ((NVActivity) activity).setActionBarRightButton(charSequence, drawable, onClickListener);
        }
    }

    public void setActionBarRightView(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarRightView(view);
        }
    }

    public boolean isDarkTheme() {
        return this.isDarkTheme;
    }

    public void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
    }

    public void showShortToast(int i) {
        showShortToast(getString(i));
    }

    public void showShortToast(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NVToast.makeText(getContext(), str, 0).show();
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        PermissionListener permissionListener;
        SparseArray<PermissionListener> sparseArray = this.permissionArray;
        if (sparseArray != null && (permissionListener = sparseArray.get(i)) != null) {
            NVPermission.onRequestPermissionResult(this, permissionListener, i, strArr, iArr);
        } else {
            NVPermission.onRequestPermissionResult(this, this, i, strArr, iArr);
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        LogUtils.tagFragment(view, this);
    }

    public boolean isFloatingSwipeable() {
        return getActivity() instanceof ISwipeableActivity;
    }

    public int getTotalOverlaySize() {
        if (isFloatingSwipeable()) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.swipeable_activity_top_height);
        }
        return getActionBarOverlaySize() + getStatusBarOverlaySize();
    }

    public void completeLogEvent(LogEvent.Builder builder) {
        if (this._fromPush) {
            builder.extraParam("pageFromPush", true);
        }
    }

    public String getPushTrackId() {
        return this._pushTrackId;
    }

    @Override // com.narvii.logging.Page
    public String getStrategyInfo() {
        return ParamUtils.getStringParam(this, "__strategyInfo");
    }

    public void setActionBarCustomDrawable(Drawable drawable) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (drawable == null || isEmbedFragment()) {
            return;
        }
        StatusBarUtils.setTranslucentStatusBar(this, drawable);
        if (StatusBarUtils.STATUS_BAR_ENABLE) {
            return;
        }
        setActionBarBackground(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onThemeDownloadFinish() {
        if (this.lifecycleState >= 3) {
            updateThemeUI();
            if (this instanceof IFakeActionBar) {
                ((IFakeActionBar) this).updateFakeActionBarThemeUI();
            }
        }
    }
}
