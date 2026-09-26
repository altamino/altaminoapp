package com.narvii.list;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
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
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
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
    public final View.OnClickListener subviewClickListener = new View.OnClickListener() { // from class: com.narvii.list.a
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f2287a.lambda$new$0(view);
        }
    };
    public final View.OnLongClickListener subviewLongClickListener = new View.OnLongClickListener() { // from class: com.narvii.list.b
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return this.f2288a.lambda$new$1(view);
        }
    };
    protected final LayoutInflater inflater = LayoutInflater.from(getContext());
    protected final LinkedList<OnItemClickListener> listeners = new LinkedList<>();

    private class RefreshMonitor implements ApiSessionMonitor {
        ApiService api;
        Callback<Integer> callback;
        int startCount;
        int status;
        HashSet<ApiRequest> requests = new HashSet<>();
        int finishCount = 0;
        int failCount = 0;
        int abortCount = 0;

        public void start(ApiService apiService) {
            this.status = 0;
            this.api = apiService;
            apiService.addSessionMonitor(this);
            this.startCount++;
        }

        public RefreshMonitor(int i10, Callback<Integer> callback) {
            this.callback = callback;
        }

        private void update() {
            int i10 = 1;
            if (this.status == 1 && this.requests.isEmpty()) {
                this.status = 2;
                Callback<Integer> callback = this.callback;
                if (callback != null) {
                    if (this.abortCount > 0) {
                        i10 = 2;
                    } else if (this.failCount <= 0) {
                        i10 = 0;
                    }
                    callback.call(Integer.valueOf(i10));
                }
            }
            if (this.status == 2) {
                if (NVAdapter.this.refreshMonitor == this) {
                    NVAdapter.this.refreshMonitor = null;
                }
                this.api.removeSessionMonitor(this);
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

        public void end() {
            int i10 = this.startCount - 1;
            this.startCount = i10;
            if (i10 == 0 && this.status == 0) {
                this.status = 1;
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

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onNewRequest(ApiRequest apiRequest) {
            if (this.status == 0) {
                this.requests.add(apiRequest);
            }
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onRequestFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (this.status == 1 && this.requests.remove(apiRequest)) {
                this.failCount++;
                update();
            }
        }

        @Override // com.narvii.util.http.ApiSessionMonitor
        public void onRequestFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
            if (this.status == 1 && this.requests.remove(apiRequest)) {
                this.finishCount++;
                update();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onSubviewClick(view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view) {
        return onSubviewClick(view, true);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void addImpressionCollector(ImpressionCollector impressionCollector) {
        addImpressionCollector(impressionCollector, true);
    }

    public <T extends View> T createView(int i10, ViewGroup viewGroup, View view) {
        return (T) createView(i10, viewGroup, view, null);
    }

    boolean dispatchLoginResult(boolean z6, Intent intent) {
        if (intent == null || !intent.getBooleanExtra("__adapter", false) || !Utils.isEquals(intent.getStringExtra("__adapterClass"), getClass().getName())) {
            return false;
        }
        onLoginResult(z6, intent);
        return true;
    }

    public void ensureLogin(Intent intent) {
        ensureLogin(intent, null);
    }

    public String errorMessage() {
        return null;
    }

    public String getAreaName() {
        return null;
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj, ActSemantic actSemantic) {
        return getClickEventBuilder(this.mainIpc, obj, actSemantic);
    }

    protected ObjectInfo getImpressionObjectInfo(Object obj) {
        return getImpressionObjectInfo(this.mainIpc, obj);
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.context;
    }

    public void logClickEvent(Object obj, ActSemantic actSemantic) {
        logClickEvent(obj, actSemantic, false);
    }

    protected void markDisabled(View view, NVObject nVObject) {
        markDisabled(view, nVObject, 0);
    }

    protected boolean noImpression() {
        return false;
    }

    public void onErrorRetry() {
        refresh(2, null);
    }

    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
        return false;
    }

    protected void onLoginResult(boolean z6, Intent intent) {
    }

    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        return false;
    }

    public void onRestoreInstanceState(Bundle bundle) {
    }

    public void refresh(int i10, Callback<Integer> callback) {
        refreshCallbackLater(callback, 0, 1000L);
    }

    protected boolean saveInstanceState() {
        return false;
    }

    public void setDarkTheme(boolean z6, int i10) {
        this.darkTheme = z6;
        this.backgroundColor = i10;
    }

    protected boolean supportNVTheme() {
        return false;
    }

    private void refreshCallbackLater(final Callback<Integer> callback, final int i10, long j6) {
        if (callback == null) {
            refreshCallbackTmp.set(null);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.list.NVAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (NVAdapter.refreshCallbackTmp.compareAndRemove(callback)) {
                        callback.call(Integer.valueOf(i10));
                    }
                }
            }, j6);
            refreshCallbackTmp.set(callback, j6);
        }
    }

    public void addImpressionCollector(ImpressionCollector impressionCollector, boolean z6) {
        if (impressionCollector == null) {
            return;
        }
        if (z6) {
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
        } else if (!(nVContext instanceof NVRecyclerViewFragment)) {
            Log.e("parent context is not NVListFragment");
        } else {
            if (noImpression()) {
                return;
            }
            ((NVRecyclerViewFragment) this.context).addImpressionCollectorInListView(impressionCollector);
        }
    }

    public void addOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listeners.remove(onItemClickListener);
        this.listeners.addFirst(onItemClickListener);
    }

    public View createErrorItem(ViewGroup viewGroup, View view, String str) {
        View viewCreateView = createView(R.layout.normal_error_list_item, viewGroup, view, com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createLoadingItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(R.layout.normal_loading_list_item, viewGroup, view, "loading");
        int i10 = -1;
        ((TextView) viewCreateView.findViewById(R.id.text)).setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -10066330);
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.spinner);
        if (!this.darkTheme && !isDarkNVTheme()) {
            i10 = -7829368;
        }
        spinningView.setSpinColor(i10);
        return viewCreateView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T extends View> T createView(int i10, ViewGroup viewGroup, View view, Object obj) {
        if (view != 0 && (obj == null || obj.equals(view.getTag()))) {
            return view;
        }
        T t5 = (T) this.inflater.inflate(i10, viewGroup, false);
        if (obj != null) {
            t5.setTag(obj);
        }
        if (supportNVTheme()) {
            NVContext nVContext = this.context;
            if (nVContext instanceof NVThemeOwner) {
                NVTheme.Companion.bindNVThemeView(((NVThemeOwner) nVContext).getNVTheme(), t5);
            }
        }
        return t5;
    }

    public boolean dispatchOnItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof StrategyObject) {
            LogUtils.nextPageStrategyInfo = ((StrategyObject) obj).getStrategyInfo();
        }
        Iterator<OnItemClickListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            if (it.next().onItemClick(listAdapter, i10, obj, view, view2)) {
                return true;
            }
        }
        return onItemClick(listAdapter, i10, obj, view, view2);
    }

    public void ensureLogin(Intent intent, String str) {
        if (!(this.context instanceof NVListFragment)) {
            Log.e("adapter", "context is not NVListFragment");
            return;
        }
        intent.putExtra("__adapter", true);
        intent.putExtra("__adapterClass", getClass().getName());
        ((NVListFragment) this.context).ensureLogin(intent, str);
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

    @Override // com.narvii.app.NVContext
    public Context getContext() {
        return this.context.getContext();
    }

    @Override // com.narvii.app.NVContext
    public long getContextId() {
        return this.context.getContextId();
    }

    protected ObjectInfo getImpressionObjectInfo(ImpressionCollector impressionCollector, Object obj) {
        if (obj == null || impressionCollector == null) {
            return null;
        }
        return impressionCollector.getImpressionObjectInfo(obj);
    }

    @Override // com.narvii.app.NVContext
    public <T> T getService(String str) {
        return (T) this.context.getService(str);
    }

    public void invalidateOptionsMenu() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).invalidateOptionsMenu();
        } else if (nVContext.getContext() instanceof Activity) {
            ((Activity) this.context.getContext()).invalidateOptionsMenu();
        }
    }

    public boolean isGlobalInteractionScope() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVInteractionScope) {
            return ((NVInteractionScope) nVContext).isGlobalInteractionScope();
        }
        return false;
    }

    public void logClickEvent(Object obj, ActSemantic actSemantic, boolean z6) {
        LogEvent.Builder clickEventBuilder = getClickEventBuilder(obj, actSemantic);
        if (z6) {
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

    protected void markDisabled(View view, NVObject nVObject, int i10) {
        User userProfile;
        if (nVObject != null && nVObject.status() == 9 && (userProfile = ((AccountService) getService("account")).getUserProfile()) != null && userProfile.isCurator()) {
            i10 = R.drawable.disabled_cell_bg;
        }
        view.setBackgroundResource(i10);
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

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        if (adapterView.getAdapter() == this) {
            dispatchOnItemClick(this, i10, getItem(i10), view, null);
        } else {
            dispatchOnItemClick((ListAdapter) adapterView.getAdapter(), i10, adapterView.getAdapter().getItem(i10), view, null);
        }
    }

    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    protected void refreshMonitorAbort() {
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor != null) {
            refreshMonitor.cancel();
        }
    }

    protected void refreshMonitorEnd() {
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor != null) {
            refreshMonitor.end();
        }
    }

    protected void refreshMonitorStart(int i10, Callback<Integer> callback) {
        Callback<Integer> callback2;
        refreshCallbackTmp.set(null);
        if (callback == null) {
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        RefreshMonitor refreshMonitor = this.refreshMonitor;
        if (refreshMonitor == null) {
            this.refreshMonitor = new RefreshMonitor(i10, callback);
        } else if (refreshMonitor.status == 2 || (callback2 = refreshMonitor.callback) != callback) {
            refreshMonitor.cancel();
            this.refreshMonitor = new RefreshMonitor(i10, callback);
        } else if (callback2 != callback) {
            Log.e("refreshMonitor callback not match");
        }
        this.refreshMonitor.start(apiService);
    }

    public void removeOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listeners.remove(onItemClickListener);
    }

    public void sendNotification(Notification notification) {
        ((NotificationCenter) getService("notification")).sendNotification(notification);
    }

    public void setDarkTheme(boolean z6) {
        setDarkTheme(z6, z6 ? ViewCompat.MEASURED_STATE_MASK : -1);
    }

    @Override // com.narvii.app.NVContext
    public void startActivity(Intent intent) {
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
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

    public NVAdapter(NVContext nVContext) {
        this.context = nVContext;
    }

    public boolean dispatchOnLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        return onLongClick(listAdapter, i10, obj, view, view2);
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

    public boolean isListShown() {
        return !isEmpty();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        if (adapterView.getAdapter() != this) {
            return dispatchOnLongClick((ListAdapter) adapterView.getAdapter(), i10, adapterView.getAdapter().getItem(i10), view, null);
        }
        return dispatchOnLongClick(this, i10, getItem(i10), view, null);
    }

    protected boolean onSubviewClick(View view, boolean z6) {
        boolean z10;
        ViewParent parent = view.getParent();
        View view2 = view;
        int i10 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 < 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (parent == null) {
                z11 = false;
            }
            if (!(z10 & z11)) {
                return false;
            }
            if (parent instanceof ListView) {
                ListView listView = (ListView) parent;
                if (listView.getAdapter() != this && (listView.getAdapter() instanceof NVAdapter)) {
                    return ((NVAdapter) listView.getAdapter()).onSubviewClick(view, z6);
                }
                int positionForView = listView.getPositionForView(view);
                if (positionForView == -1) {
                    Log.w(view + " is not in ListView");
                    return false;
                }
                Object item = listView.getAdapter().getItem(positionForView);
                if (z6) {
                    return onLongClick(listView.getAdapter(), positionForView, item, view2, view);
                }
                return dispatchOnItemClick(listView.getAdapter(), positionForView, item, view2, view);
            }
            view2 = parent;
            parent = view2.getParent();
            i10++;
        }
    }

    public void logClickEvent(ActSemantic actSemantic) {
        logClickEvent(actSemantic, false);
    }

    public void logClickEvent(ActSemantic actSemantic, boolean z6) {
        LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, actSemantic);
        if (z6) {
            builderClickBuilder.toThirdParty();
        }
        builderClickBuilder.send();
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj) {
        return getClickEventBuilder(obj, null);
    }
}
