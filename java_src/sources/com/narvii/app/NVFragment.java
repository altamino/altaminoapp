package com.narvii.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import io.agora.rtc.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
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
    private static final int REQUEST_LOGIN = R.id.login & 65535;
    private static final Drawable ACTIONBAR_RIGHT_BUTTON_DEFAULT = new ColorDrawable(0);
    private final HashMap<String, Object> services = new HashMap<>();
    private WeakReference<NVActivity> cachedAttachedActivity = null;
    private int cachedCid = 0;
    private boolean isVisibleHint = true;
    protected int _backgroundColor = 0;
    private final Runnable refreshActive = new Runnable() { // from class: com.narvii.app.NVFragment.7
        @Override // java.lang.Runnable
        public void run() {
            boolean z6 = NVFragment.this.lifecycleState >= 3 && NVFragment.this.isVisibleHint;
            if (NVFragment.this.isActive != z6) {
                NVFragment.this.isActive = z6;
                NVFragment nVFragment = NVFragment.this;
                nVFragment.onActiveChanged(nVFragment.isActive);
            }
        }
    };

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

    public interface MenuController {
        void invalidateMenu(NVFragment nVFragment);

        void onScrollDistance(int i10);

        void onScrollFinish();

        void registerMenu(NVFragment nVFragment);

        void setScrollEnabled(boolean z6);

        void setTopMargin(int i10, boolean z6);

        void unregisterMenu(NVFragment nVFragment);
    }

    public interface MenuHost {
        MenuController getMenuController(NVFragment nVFragment);
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public boolean canScrollUp() {
        return false;
    }

    protected boolean canSendActiveLog(boolean z6) {
        return (this.isLogLevelActive == z6 || this.pageViewDelegate == null) ? false : true;
    }

    @CallSuper
    protected void completePageViewEvent(@NotNull LogEvent.Builder builder, boolean z6) {
    }

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
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

    protected Drawable getActionBarCustomDrawable() {
        return null;
    }

    protected int getActionBarLayoutId() {
        return -1;
    }

    public boolean getBooleanParam(String str, boolean z6) {
        return ParamUtils.getBooleanParam(this, str, z6);
    }

    public int getCustomTheme() {
        return 0;
    }

    public int getIntParam(String str, int i10) {
        return ParamUtils.getIntParam(this, str, i10);
    }

    @Override // com.narvii.app.LifecycleHost
    public int getLifecycleState() {
        return this.lifecycleState;
    }

    public int getPostEntryLift() {
        return 0;
    }

    public String getPushTrackId() {
        return this._pushTrackId;
    }

    @Override // com.narvii.logging.Page
    public String getPvId() {
        return this.pvId;
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

    public boolean isActive() {
        return this.isActive;
    }

    public boolean isDarkTheme() {
        return this.isDarkTheme;
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

    @Override // androidx.fragment.app.Fragment
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

    protected void onLoginResult(boolean z6, Intent intent) {
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
    }

    public boolean requireAccount() {
        return false;
    }

    protected boolean sendPageViewEventToThirdParty() {
        return false;
    }

    public void setActionBarRightButton(int i10, View.OnClickListener onClickListener) {
        setActionBarRightButton(getText(i10), ACTIONBAR_RIGHT_BUTTON_DEFAULT, onClickListener);
    }

    public void setDarkTheme(boolean z6) {
        this.isDarkTheme = z6;
    }

    public void setEmbedServiceManager(ServiceManager serviceManager) {
        this.serviceManager = serviceManager;
    }

    public void setPageRefererInfo(PageRefererInfo pageRefererInfo) {
    }

    public void setResult(int i10) {
        setResult(i10, null);
    }

    public void setTitle(int i10) {
        FragmentActivity activity = getActivity();
        if (activity == null || !isRootFragment()) {
            return;
        }
        activity.setTitle(i10);
    }

    public void showShortToast(@StringRes int i10) {
        showShortToast(getString(i10));
    }

    protected boolean showThemeColorAsAlternativeBackground() {
        return false;
    }

    public void smoothScrollToTop() {
    }

    public void updateThemeUI() {
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

    public void ensureLogin(Intent intent, String str) {
        if (((AccountService) getService("account")).hasAccount()) {
            onLoginResult(true, intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
        if (intent != null && intent.getExtras() != null) {
            intent2.putExtras(intent.getExtras());
        }
        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        intent2.putExtra("promptType", "Required");
        this.loginIntent = intent;
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent2, REQUEST_LOGIN);
        ensureLoginToast();
    }

    public boolean getBooleanParam(String str) {
        return getBooleanParam(str, false);
    }

    public int getConfigCid() {
        return ((ConfigService) getService("config")).getCommunityId();
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        if (this.cid == 0) {
            this.cid = Utils.generateUniqueLongId();
        }
        return this.cid;
    }

    public int getIntParam(String str) {
        return getIntParam(str, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MenuController getMenuController() {
        Fragment parentFragment;
        if (this.menuController == null && isEmbedFragment()) {
            Fragment parentFragment2 = getParentFragment();
            while (parentFragment != 0) {
                if (parentFragment instanceof MenuHost) {
                    parentFragment = parentFragment2;
                    this.menuController = ((MenuHost) parentFragment).getMenuController(this);
                } else {
                    parentFragment = parentFragment2;
                    parentFragment = parentFragment.getParentFragment();
                }
            }
            parentFragment = parentFragment2;
        }
        return this.menuController;
    }

    @Nullable
    public String getPageName() {
        if (getStringParam("__storyDraftId") == null || !isValidPage()) {
            return null;
        }
        return "story_edit_wildcard";
    }

    @Override // com.narvii.logging.Page
    public PageRefererInfo getPageRefererInfo() {
        return (PageRefererInfo) JacksonUtils.readAs(ParamUtils.getStringParam(this, "__pageRefererInfo", false), PageRefererInfo.class);
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        WeakReference<NVActivity> weakReference;
        NVActivity nVActivity;
        T t5;
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
            if (parentContext == null && (weakReference = this.cachedAttachedActivity) != null && (nVActivity = weakReference.get()) != null && (t5 = (T) nVActivity.getService(str)) != null) {
                this.services.put(str, t5);
                return t5;
            }
            if (getActivity() == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("get ");
                sb.append(str);
                sb.append(" service when NVFragment is ");
                sb.append(this.lifecycleState <= -1 ? "destoryed" : "not attached");
                Log.e(sb.toString());
            }
            service = this.cachedCid > 0 ? (T) NVApplication.instance().getService(this.cachedCid, str) : NVApplication.instance().getService(str);
            if (service != null) {
                this.services.put(str, service);
            }
        }
        return (T) service;
    }

    @Override // com.narvii.logging.Page
    @CallSuper
    public String getStrategyInfo() {
        return ParamUtils.getStringParam(this, "__strategyInfo");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean getUserVisibleHint() {
        return this.isVisibleHint && super.getUserVisibleHint();
    }

    public final boolean isEmbedFragment() {
        return getBooleanParam("__embed");
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

    public boolean isRootFragment() {
        if (this.isRootFragment == null) {
            FragmentActivity activity = getActivity();
            this.isRootFragment = Boolean.valueOf((activity instanceof NVActivity) && ((NVActivity) activity).getRootFragment() == this);
        }
        return this.isRootFragment.booleanValue();
    }

    public void manuallyRefresh(Callback<Integer> callback) {
        if (callback != null) {
            callback.call(1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == REQUEST_LOGIN) {
            Utils.post(new Runnable() { // from class: com.narvii.app.NVFragment.8
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
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i10, boolean z6, ArrayList<String> arrayList) {
        if (!z6 || PermissionRationaleDialog.isShowing) {
            return;
        }
        PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        PermissionListener permissionListener;
        SparseArray<PermissionListener> sparseArray = this.permissionArray;
        if (sparseArray == null || (permissionListener = sparseArray.get(i10)) == null) {
            NVPermission.onRequestPermissionResult(this, this, i10, strArr, iArr);
        } else {
            NVPermission.onRequestPermissionResult(this, permissionListener, i10, strArr, iArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        ServiceManager serviceManager = this.serviceManager;
        if (serviceManager != null) {
            serviceManager.resume();
        }
        super.onResume();
        boolean z6 = this.isVisibleHint;
        if (z6) {
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        } else {
            setVisibleHint(z6);
        }
        this.lifecycleState = 3;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.app.i
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f1828a.lambda$onResume$0((LifecycleListener) obj);
                }
            });
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
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

    /* JADX WARN: Multi-variable type inference failed */
    public void onThemeDownloadFinish() {
        if (this.lifecycleState >= 3) {
            updateThemeUI();
            if (this instanceof IFakeActionBar) {
                ((IFakeActionBar) this).updateFakeActionBarThemeUI();
            }
        }
    }

    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.lifecycleState <= -1) {
            Log.e("register local broadcast receiver after destory");
        }
        if (this.localBroadcastManager == null) {
            this.localBroadcastManager = LocalBroadcastManager.b(getContext());
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendPageViewEvent(boolean z6) {
        this.pageViewDelegate.sendPageViewEvent(z6);
    }

    public void setActionBarCustomDrawable(Drawable drawable) {
        if (drawable == null || isEmbedFragment()) {
            return;
        }
        StatusBarUtils.setTranslucentStatusBar(this, drawable);
        if (StatusBarUtils.STATUS_BAR_ENABLE) {
            return;
        }
        setActionBarBackground(drawable);
    }

    public void setActionBarRightButton(int i10, Drawable drawable, View.OnClickListener onClickListener) {
        setActionBarRightButton(getText(i10), drawable, onClickListener);
    }

    public void setResult(int i10, Intent intent) {
        FragmentActivity activity;
        if (isEmbedFragment() || (activity = getActivity()) == null || this.lifecycleState <= -1) {
            return;
        }
        activity.setResult(i10, intent);
    }

    public void setVisibleHint(boolean z6) {
        this.isVisibleHint = z6;
        if (this.lifecycleState >= 3) {
            updateChildrenVisibleHint(z6);
            Utils.handler.removeCallbacks(this.refreshActive);
            Utils.post(this.refreshActive);
        }
    }

    public boolean shouldShowLoginPage() {
        if (((AccountService) getService("account")).hasAccount()) {
            return false;
        }
        ensureLogin(new Intent());
        return true;
    }

    public void showShortToast(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NVToast.makeText(getContext(), str, 0).show();
    }

    @Override // com.narvii.app.IPermissionResultDispatcher
    public void unRegisterPermissionResult(int i10, PermissionListener permissionListener) {
        SparseArray<PermissionListener> sparseArray;
        if (permissionListener == null || (sparseArray = this.permissionArray) == null || sparseArray.get(i10) != permissionListener) {
            return;
        }
        this.permissionArray.remove(i10);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPause$1(LifecycleListener lifecycleListener) {
        lifecycleListener.lifecycleOnPause(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$0(LifecycleListener lifecycleListener) {
        lifecycleListener.lifecycleOnResume(this);
    }

    protected void ensureLoginToast() {
        NVToast.makeText(getActivity(), R.string.login_first, 0).show();
    }

    public int getActionBarOverlaySize() {
        if (isEmbedFragment()) {
            return 0;
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof NVActivity)) {
            return 0;
        }
        return ((NVActivity) activity).getActionBarOverlaySize();
    }

    public int getCBBLift() {
        return getOnlineBarLift();
    }

    @IdRes
    public Integer getContainerId() {
        if (isAdded() && (getView().getParent() instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) getView().getParent();
            if (viewGroup.getId() != -1) {
                return Integer.valueOf(viewGroup.getId());
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment, com.narvii.app.NVContext
    @NonNull
    public Context getContext() {
        NVActivity nVActivity;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            WeakReference<NVActivity> weakReference = this.cachedAttachedActivity;
            if (weakReference != null && (nVActivity = weakReference.get()) != null) {
                return nVActivity;
            }
            Log.e("NVFragment is not attached. returning application context instead.");
            return NVApplication.instance();
        }
        return activity;
    }

    public int getOnlineBarLift() {
        return getPostEntryLift();
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        ActivityResultCaller parentFragment = getParentFragment();
        if (parentFragment instanceof NVContext) {
            return (NVContext) parentFragment;
        }
        return Utils.getNVContext(getActivity());
    }

    public int getStatusBarAlpha() {
        if (getCustomTheme() == R.style.AminoThemeDark_Overlay) {
            return Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT;
        }
        return 0;
    }

    public int getStatusBarOverlaySize() {
        if (isEmbedFragment()) {
            return 0;
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof NVActivity)) {
            return 0;
        }
        return ((NVActivity) activity).getStatusBarOverlaySize();
    }

    public String getStringParam(String str) {
        return ParamUtils.getStringParam(this, str);
    }

    public int getTotalOverlaySize() {
        if (isFloatingSwipeable()) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.swipeable_activity_top_height);
        }
        return getActionBarOverlaySize() + getStatusBarOverlaySize();
    }

    public Boolean hasOnlineBar() {
        if (isGlobalInteractionScope()) {
            return Boolean.FALSE;
        }
        return hasPostEntry();
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

    public boolean isActionBarOverlaying() {
        if (isEmbedFragment()) {
            return false;
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof NVActivity)) {
            return false;
        }
        return ((NVActivity) activity).isActionBarOverlaying();
    }

    public boolean isCurrentCommunityJoined() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isCurrentCommunityJoined();
        }
        return false;
    }

    public boolean isFloatingSwipeable() {
        return getActivity() instanceof ISwipeableActivity;
    }

    @Override // com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        boolean z6 = false;
        if (isAdded() && ((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        }
        return getBooleanParam(NVActivity.INTERACTION_SCOPE, z6);
    }

    public boolean isInVisitorMode() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isInVisitorMode();
        }
        return false;
    }

    public boolean isTranslucentStatusBar() {
        if (isEmbedFragment()) {
            return false;
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof NVActivity)) {
            return false;
        }
        return ((NVActivity) activity).isTranslucentStatusBar();
    }

    public boolean isVisitorNotJoined() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).isVisitorNotJoined();
        }
        return false;
    }

    protected boolean logPageViewEvent() {
        return isValidPage();
    }

    public void onActiveChanged(boolean z6) {
        onLogLevelActiveChanged(z6);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setActionBarCustomDrawable(getActionBarCustomDrawable());
        if (observeThemeDownloadFinish() && getActivity() != null) {
            ((NVActivity) getActivity()).addThemeDownloadObserver(this);
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) context;
            this.cachedAttachedActivity = new WeakReference<>(nVActivity);
            this.cachedCid = nVActivity._communityId();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("@@@", getClass().getSimpleName());
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
            protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
                NVFragment.this.completePageViewEvent(builder, z6);
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean logPageViewEvent() {
                return NVFragment.this.logPageViewEvent();
            }

            @Override // com.narvii.logging.PageViewDelegate
            protected boolean sendPageViewEventToThirdParty() {
                return NVFragment.this.sendPageViewEventToThirdParty();
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

    @Override // com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (observeThemeDownloadFinish() && getActivity() != null) {
            ((NVActivity) getActivity()).removeThemeDownloadObserver(this);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z6) {
        boolean z10;
        super.onHiddenChanged(z6);
        if (this.isActive && !z6) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (canSendActiveLog(z10)) {
            this.isLogLevelActive = z10;
            sendPageViewEvent(z10);
        }
    }

    public void onLogLevelActiveChanged(boolean z6) {
        if (canSendActiveLog(z6)) {
            this.isLogLevelActive = z6;
            sendPageViewEvent(z6);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.lifecycleState = 2;
        EventDispatcher<LifecycleListener> eventDispatcher = this.lifecycleListeners;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.app.j
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f1831a.lambda$onPause$1((LifecycleListener) obj);
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

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        long j6 = this.cid;
        if (j6 != 0) {
            bundle.putLong("__cid", j6);
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

    @Override // androidx.fragment.app.Fragment
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

    @Override // com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        LogUtils.tagFragment(view, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetPvId() {
        if (getPageName() != null) {
            this.pvId = UUID.randomUUID().toString();
        }
    }

    public void setActionBarBackground(Drawable drawable) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarBackground(drawable);
        }
    }

    public void setActionBarBackgroundDefault() {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarBackgroundDefault();
        }
    }

    public void setActionBarLeftView(View view) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarLeftView(view);
        }
    }

    public void setActionBarRightButton(CharSequence charSequence, View.OnClickListener onClickListener) {
        setActionBarRightButton(charSequence, ACTIONBAR_RIGHT_BUTTON_DEFAULT, onClickListener);
    }

    public void setActionBarRightView(View view) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarRightView(view);
        }
    }

    public void setActionBarTitleColor(int i10) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarTitleColor(i10);
        }
    }

    public void setActionBarTitleView(View view) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setActionBarTitleView(view);
        }
    }

    public void setBackButtonDrawable(Drawable drawable) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setBackButtonDrawable(drawable);
        }
    }

    public void setBackButtonTint(int i10) {
        if (isEmbedFragment()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            ((NVActivity) activity).setBackButtonTint(i10);
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

    @Override // androidx.fragment.app.Fragment
    public void setHasOptionsMenu(boolean z6) {
        if (isEmbedFragment()) {
            MenuController menuController = getMenuController();
            if (menuController != null) {
                if (z6) {
                    menuController.registerMenu(this);
                    return;
                } else {
                    menuController.unregisterMenu(this);
                    return;
                }
            }
            return;
        }
        super.setHasOptionsMenu(z6);
    }

    public void setScreenName(String str) {
        NVActivity nVActivity = (NVActivity) getActivity();
        if (nVActivity != null) {
            nVActivity.setScreenName(str);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        setVisibleHint(z6);
    }

    public boolean shouldShowPageBackground() {
        if (getActivity() instanceof NVActivity) {
            return ((NVActivity) getActivity()).shouldShowPageBackground();
        }
        return false;
    }

    public void showImageToast(int i10) {
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).toastImageWithText(ContextCompat.getDrawable(getContext(), R.drawable.check), getContext().getString(i10), R.anim.toast_scale_in, 500L);
        } else {
            NVToast.makeText(getContext(), i10, 0).show();
        }
    }

    protected void updateChildrenVisibleHint(boolean z6) {
        List<Fragment> listB0 = getChildFragmentManager().B0();
        if (listB0 != null) {
            for (Fragment fragment : listB0) {
                if (fragment instanceof NVFragment) {
                    ((NVFragment) fragment).setVisibleHint(z6);
                }
            }
        }
    }

    public void setActionBarRightButton(CharSequence charSequence, Drawable drawable, View.OnClickListener onClickListener) {
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

    public void setTitle(CharSequence charSequence) {
        FragmentActivity activity = getActivity();
        if (activity == null || !isRootFragment()) {
            return;
        }
        activity.setTitle(charSequence);
    }
}
