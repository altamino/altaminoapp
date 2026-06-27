package com.narvii.list;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.app.NVInteractionScope;
import com.narvii.app.theme.NVTheme;
import com.narvii.app.theme.NVThemeOwner;
import com.narvii.lib.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Area;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.ApiSessionMonitor;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.SpinningView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
public abstract class NVAdapter extends BaseAdapter implements NVContext, OnItemClickListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, Area, NVInteractionScope {
    public static final int REFRESH_FLAG_RETRY = 2;
    public static final int REFRESH_FLAG_SILENT = 256;
    public static final int REFRESH_FLAG_SWIPE = 1;
    public static final int REQUEST_RESULT_CANCEL = 2;
    public static final int REQUEST_RESULT_FAIL = 1;
    public static final int REQUEST_RESULT_FINISH = 0;
    private static final TmpValue<Callback<Integer>> refreshCallbackTmp = new TmpValue<>();
    protected final NVContext context;
    protected boolean darkTheme;
    private LogEventService logEventService;
    protected ImpressionCollector mainIpc;
    private RefreshMonitor refreshMonitor;
    protected int backgroundColor = 0;
    public final View.OnClickListener subviewClickListener = new View.OnClickListener() { // from class: com.narvii.list.NVAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NVAdapter.this.onSubviewClick(view, false);
        }
    };
    public final View.OnLongClickListener subviewLongClickListener = new View.OnLongClickListener() { // from class: com.narvii.list.NVAdapter.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return NVAdapter.this.onSubviewClick(view, true);
        }
    };
    protected final LayoutInflater inflater = LayoutInflater.from(getContext());
    protected final LinkedList<OnItemClickListener> listeners = new LinkedList<>();

    public String errorMessage() {
        return null;
    }

    public String getAreaName() {
        return null;
    }

    protected boolean noImpression() {
        return false;
    }

    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        return false;
    }

    protected void onLoginResult(boolean z, Intent intent) {
    }

    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        return false;
    }

    public void onRestoreInstanceState(Bundle bundle) {
    }

    protected boolean saveInstanceState() {
        return false;
    }

    protected boolean supportNVTheme() {
        return false;
    }

    public void setDarkTheme(boolean z) {
        setDarkTheme(z, z ? ViewCompat.MEASURED_STATE_MASK : -1);
    }

    public void setDarkTheme(boolean z, int i) {
        this.darkTheme = z;
        this.backgroundColor = i;
    }

    public NVAdapter(NVContext nVContext) {
        this.context = nVContext;
    }

    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttach() {
        if (this instanceof NotificationListener) {
            ((NotificationCenter) getService("notification")).registerListener(this, (NotificationListener) this);
        }
    }

    public void onDetach() {
        boolean zIsFinishing;
        if (this instanceof NotificationListener) {
            NotificationCenter notificationCenter = (NotificationCenter) getService("notification");
            NVContext parentContext = this.context;
            while (true) {
                if (parentContext == null) {
                    zIsFinishing = false;
                    break;
                } else {
                    if (parentContext instanceof NVFragment) {
                        zIsFinishing = ((NVFragment) parentContext).isFinishing();
                        break;
                    }
                    parentContext = parentContext.getParentContext();
                }
            }
            if (!zIsFinishing) {
                Context context = this.context.getContext();
                zIsFinishing = context instanceof Activity ? ((Activity) context).isFinishing() : false;
            }
            notificationCenter.unregisterListener(this, zIsFinishing);
        }
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) this.context.getService(str);
    }

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this.context.getContext();
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.context;
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.context.getContextId();
    }

    public boolean isListShown() {
        return !isEmpty();
    }

    public void refresh(int i, Callback<Integer> callback) {
        refreshCallbackLater(callback, 0, 1000L);
    }

    public void onErrorRetry() {
        refresh(2, null);
    }

    public View createLoadingItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(R.layout.normal_loading_list_item, viewGroup, view, "loading");
        int i = -1;
        ((TextView) viewCreateView.findViewById(R.id.text)).setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -10066330);
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.spinner);
        if (!this.darkTheme && !isDarkNVTheme()) {
            i = -7829368;
        }
        spinningView.setSpinColor(i);
        return viewCreateView;
    }

    public View createErrorItem(ViewGroup viewGroup, View view, String str) {
        View viewCreateView = createView(R.layout.normal_error_list_item, viewGroup, view, IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public <T extends View> T createView(int i, ViewGroup viewGroup, View view) {
        return (T) createView(i, viewGroup, view, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T createView(int i, ViewGroup viewGroup, View view, Object obj) {
        if (view != 0 && (obj == null || obj.equals(view.getTag()))) {
            return view;
        }
        T t = (T) this.inflater.inflate(i, viewGroup, false);
        if (obj != null) {
            t.setTag(obj);
        }
        if (supportNVTheme()) {
            NVContext nVContext = this.context;
            if (nVContext instanceof NVThemeOwner) {
                NVTheme.Companion.bindNVThemeView(((NVThemeOwner) nVContext).getNVTheme(), t);
            }
        }
        return t;
    }

    public void sendNotification(Notification notification) {
        ((NotificationCenter) getService("notification")).sendNotification(notification);
    }

    public void invalidateOptionsMenu() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).invalidateOptionsMenu();
        } else if (nVContext.getContext() instanceof Activity) {
            ((Activity) this.context.getContext()).invalidateOptionsMenu();
        }
    }

    public boolean dispatchOnItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof StrategyObject) {
            LogUtils.nextPageStrategyInfo = ((StrategyObject) obj).getStrategyInfo();
        }
        Iterator<OnItemClickListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            if (it.next().onItemClick(listAdapter, i, obj, view, view2)) {
                return true;
            }
        }
        return onItemClick(listAdapter, i, obj, view, view2);
    }

    public boolean dispatchOnLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        return onLongClick(listAdapter, i, obj, view, view2);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView.getAdapter() != this) {
            dispatchOnItemClick((ListAdapter) adapterView.getAdapter(), i, adapterView.getAdapter().getItem(i), view, null);
        } else {
            dispatchOnItemClick(this, i, getItem(i), view, null);
        }
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView.getAdapter() != this) {
            return dispatchOnLongClick((ListAdapter) adapterView.getAdapter(), i, adapterView.getAdapter().getItem(i), view, null);
        }
        return dispatchOnLongClick(this, i, getItem(i), view, null);
    }

    protected boolean onSubviewClick(View view, boolean z) {
        View view2 = view;
        ViewParent parent = view.getParent();
        int i = 0;
        while (true) {
            if (!(i < 8) || !(parent != null)) {
                return false;
            }
            if (parent instanceof ListView) {
                ListView listView = (ListView) parent;
                if (listView.getAdapter() != this && (listView.getAdapter() instanceof NVAdapter)) {
                    return ((NVAdapter) listView.getAdapter()).onSubviewClick(view, z);
                }
                int positionForView = listView.getPositionForView(view);
                if (positionForView == -1) {
                    Log.w(view + " is not in ListView");
                    return false;
                }
                Object item = listView.getAdapter().getItem(positionForView);
                if (z) {
                    return onLongClick(listView.getAdapter(), positionForView, item, view2, view);
                }
                return dispatchOnItemClick(listView.getAdapter(), positionForView, item, view2, view);
            }
            view2 = parent;
            parent = view2.getParent();
            i++;
        }
    }

    public void addOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listeners.remove(onItemClickListener);
        this.listeners.addFirst(onItemClickListener);
    }

    public void removeOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listeners.remove(onItemClickListener);
    }

    @Override // com.narvii.app.NVContext, android.content.Context
    public void startActivity(Intent intent) {
        this.context.startActivity(intent);
    }

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
    }

    public void ensureLogin(Intent intent, String str) {
        if (this.context instanceof NVListFragment) {
            intent.putExtra("__adapter", true);
            intent.putExtra("__adapterClass", getClass().getName());
            ((NVListFragment) this.context).ensureLogin(intent, str);
            return;
        }
        Log.e("adapter", "context is not NVListFragment");
    }

    boolean dispatchLoginResult(boolean z, Intent intent) {
        if (intent == null || !intent.getBooleanExtra("__adapter", false) || !Utils.isEquals(intent.getStringExtra("__adapterClass"), getClass().getName())) {
            return false;
        }
        onLoginResult(z, intent);
        return true;
    }

    private void refreshCallbackLater(final Callback<Integer> callback, final int i, long j) {
        if (callback == null) {
            refreshCallbackTmp.set(null);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.list.NVAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    if (NVAdapter.refreshCallbackTmp.compareAndRemove(callback)) {
                        callback.call(Integer.valueOf(i));
                    }
                }
            }, j);
            refreshCallbackTmp.set(callback, j);
        }
    }

    protected void refreshMonitorStart(int i, Callback<Integer> callback) {
        Callback<Integer> callback2;
        refreshCallbackTmp.set(null);
        if (callback == null) {
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor == null) {
            this.refreshMonitor = new RefreshMonitor(i, callback);
        } else if (refreshMonitor.status == 2 || (callback2 = refreshMonitor.callback) != callback) {
            this.refreshMonitor.cancel();
            this.refreshMonitor = new RefreshMonitor(i, callback);
        } else if (callback2 != callback) {
            Log.e("refreshMonitor callback not match");
        }
        this.refreshMonitor.start(apiService);
    }

    protected void refreshMonitorEnd() {
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor != null) {
            refreshMonitor.end();
        }
    }

    protected void refreshMonitorAbort() {
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor != null) {
            refreshMonitor.cancel();
        }
    }

    private class RefreshMonitor implements ApiSessionMonitor {
        ApiService api;
        Callback<Integer> callback;
        int startCount;
        int status;
        HashSet<ApiRequest> requests = new HashSet<>();
        int finishCount = 0;
        int failCount = 0;
        int abortCount = 0;

        public RefreshMonitor(int i, Callback<Integer> callback) {
            this.callback = callback;
        }

        public void start(ApiService apiService) {
            this.status = 0;
            this.api = apiService;
            apiService.addSessionMonitor(this);
            this.startCount++;
        }

        public void end() {
            int i = this.startCount - 1;
            this.startCount = i;
            if (i == 0 && this.status == 0) {
                this.status = 1;
                update();
            }
        }

        public void cancel() {
            if (this.status != 2) {
                this.status = 2;
                Callback<Integer> callback = this.callback;
                if (callback != null) {
                    callback.call(2);
                }
            }
            update();
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onNewRequest(ApiRequest apiRequest) {
            if (this.status == 0) {
                this.requests.add(apiRequest);
            }
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onRequestFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
            if (this.status == 1 && this.requests.remove(apiRequest)) {
                this.finishCount++;
                update();
            }
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onRequestFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (this.status == 1 && this.requests.remove(apiRequest)) {
                this.failCount++;
                update();
            }
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onAbortRequest(ApiRequest apiRequest) {
            if (this.status == 1 && this.requests.remove(apiRequest)) {
                this.abortCount++;
                update();
            }
        }

        private void update() {
            if (this.status == 1 && this.requests.isEmpty()) {
                this.status = 2;
                if (this.callback != null) {
                    int i = 0;
                    if (this.abortCount > 0) {
                        i = 2;
                    } else if (this.failCount > 0) {
                        i = 1;
                    }
                    this.callback.call(Integer.valueOf(i));
                }
            }
            if (this.status == 2) {
                if (NVAdapter.this.refreshMonitor == this) {
                    NVAdapter.this.refreshMonitor = null;
                }
                this.api.removeSessionMonitor(this);
            }
        }
    }

    protected void markDisabled(View view, NVObject nVObject) {
        markDisabled(view, nVObject, 0);
    }

    protected void markDisabled(View view, NVObject nVObject, int i) {
        User userProfile;
        if (nVObject != null && nVObject.status() == 9 && (userProfile = ((AccountService) getService("account")).getUserProfile()) != null && userProfile.isCurator()) {
            i = R.drawable.disabled_cell_bg;
        }
        view.setBackgroundResource(i);
    }

    protected void tagCellForLog(View view, Object obj) {
        if (view == null) {
            return;
        }
        LogUtils.setAttachedObject(view, obj);
        LogUtils.setShownInAdapter(view, this);
    }

    protected void tagExtraMap(View view, HashMap<String, Object> map) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._extra_map, map);
    }

    public void addImpressionCollector(ImpressionCollector impressionCollector) {
        addImpressionCollector(impressionCollector, true);
    }

    public void addImpressionCollector(ImpressionCollector impressionCollector, boolean z) {
        if (impressionCollector == null) {
            return;
        }
        if (z) {
            if (this.mainIpc == null) {
                this.mainIpc = impressionCollector;
            } else {
                Log.e("already have a main impression collector");
            }
        }
        impressionCollector.setAdapter(this);
        NVContext nVContext = this.context;
        if (nVContext instanceof NVListFragment) {
            if (noImpression()) {
                return;
            }
            ((NVListFragment) this.context).addImpressionCollectorInListView(impressionCollector);
        } else {
            if (nVContext instanceof NVRecyclerViewFragment) {
                if (noImpression()) {
                    return;
                }
                ((NVRecyclerViewFragment) this.context).addImpressionCollectorInListView(impressionCollector);
                return;
            }
            Log.e("parent context is not NVListFragment");
        }
    }

    protected ObjectInfo getImpressionObjectInfo(Object obj) {
        return getImpressionObjectInfo(this.mainIpc, obj);
    }

    protected ObjectInfo getImpressionObjectInfo(ImpressionCollector impressionCollector, Object obj) {
        if (obj == null || impressionCollector == null) {
            return null;
        }
        return impressionCollector.getImpressionObjectInfo(obj);
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj, ActSemantic actSemantic) {
        return getClickEventBuilder(this.mainIpc, obj, actSemantic);
    }

    protected LogEvent.Builder getClickEventBuilder(ImpressionCollector impressionCollector, Object obj, ActSemantic actSemantic) {
        ObjectInfo impressionObjectInfo = getImpressionObjectInfo(impressionCollector, obj);
        LogEvent.Builder builderActSemantic = LogEvent.builder(this).objectInfo(impressionObjectInfo).actClick().actSemantic(actSemantic);
        if (impressionObjectInfo == null && (obj instanceof NVObject)) {
            builderActSemantic.object((NVObject) obj);
        }
        if (impressionCollector != null && impressionObjectInfo != null) {
            impressionCollector.completeImpressionLogBuilder(builderActSemantic, impressionObjectInfo);
        }
        return builderActSemantic;
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj) {
        return getClickEventBuilder(obj, null);
    }

    public void logClickEvent(Object obj, ActSemantic actSemantic) {
        logClickEvent(obj, actSemantic, false);
    }

    public void logClickEvent(Object obj, ActSemantic actSemantic, boolean z) {
        LogEvent.Builder clickEventBuilder = getClickEventBuilder(obj, actSemantic);
        if (z) {
            clickEventBuilder.toThirdParty();
        }
        clickEventBuilder.send();
    }

    public void logClickEventAttachObject(NVObject nVObject, ActSemantic actSemantic) {
        if (nVObject == null) {
            return;
        }
        LogEvent.clickBuilder(this, actSemantic).object(nVObject).send();
    }

    public void logClickEvent(ActSemantic actSemantic) {
        logClickEvent(actSemantic, false);
    }

    public void logClickEvent(ActSemantic actSemantic, boolean z) {
        LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, actSemantic);
        if (z) {
            builderClickBuilder.toThirdParty();
        }
        builderClickBuilder.send();
    }

    public boolean isGlobalInteractionScope() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVInteractionScope) {
            return ((NVInteractionScope) nVContext).isGlobalInteractionScope();
        }
        return false;
    }

    public boolean isDarkNVTheme() {
        if (supportNVTheme()) {
            NVContext nVContext = this.context;
            if ((nVContext instanceof NVThemeOwner) && ((NVThemeOwner) nVContext).isDarkNVTheme()) {
                return true;
            }
        }
        return false;
    }
}
