package com.narvii.paging.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.app.NVInteractionScope;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Area;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NVRecyclerViewBaseAdapter extends RecyclerView.Adapter implements Area, NVContext, NVInteractionScope {
    protected boolean attached;
    protected NVContext context;
    protected ImpressionCollector mainIpc;
    protected NVRecyclerViewBaseAdapter parentAdapter;
    protected RecyclerView recyclerView;
    protected EventDispatcher<DataSetChangeListener> dataSetEventDispatcher = new EventDispatcher<>();
    public final View.OnClickListener subviewClickListener = new View.OnClickListener() { // from class: com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NVRecyclerViewBaseAdapter.this.onSubviewClick(view, false);
        }
    };
    public final View.OnLongClickListener subviewLongClickListener = new View.OnLongClickListener() { // from class: com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return NVRecyclerViewBaseAdapter.this.onSubviewClick(view, true);
        }
    };

    public interface DataSetChangeListener {
        void onDataSetChanged();
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void addImpressionCollector(ImpressionCollector impressionCollector) {
        addImpressionCollector(impressionCollector, true);
    }

    public boolean dispatchLoginResult(boolean z6, Intent intent) {
        if (intent == null || !intent.getBooleanExtra("__adapter", false) || !Utils.isEquals(intent.getStringExtra("__adapterClass"), getClass().getName())) {
            return false;
        }
        onLoginResult(z6, intent);
        return true;
    }

    public String getAreaName() {
        return null;
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj, ActSemantic actSemantic) {
        return getClickEventBuilder(this.mainIpc, obj, actSemantic);
    }

    @Nullable
    public String getErrorMessage() {
        return null;
    }

    protected ObjectInfo getImpressionObjectInfo(Object obj) {
        return getImpressionObjectInfo(this.mainIpc, obj);
    }

    public Object getItem(int i10) {
        return this;
    }

    public NVRecyclerViewBaseAdapter getParentAdapter() {
        return this.parentAdapter;
    }

    @Override // com.narvii.app.NVContext
    public NVContext getParentContext() {
        return this.context;
    }

    public int getSize() {
        return 1;
    }

    public int getViewTypeCount() {
        return 1;
    }

    protected boolean isDarkTheme() {
        return false;
    }

    public boolean isLoading() {
        return false;
    }

    public void logClickEvent(Object obj, ActSemantic actSemantic) {
        logClickEvent(obj, actSemantic, false);
    }

    protected boolean noImpression() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttach() {
        this.attached = true;
        if (this instanceof NotificationListener) {
            ((NotificationCenter) this.context.getService("notification")).registerListener(this.context, (NotificationListener) this);
        }
    }

    public void onErrorRetry() {
        refresh(0, null);
    }

    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        return false;
    }

    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        return false;
    }

    public void onRestoreInstanceState(Bundle bundle) {
    }

    public void resetEmptyList() {
    }

    public void resetList() {
    }

    public void setParentAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.parentAdapter = nVRecyclerViewBaseAdapter;
    }

    public void addDataSetChangeListener(DataSetChangeListener dataSetChangeListener) {
        this.dataSetEventDispatcher.addListener(dataSetChangeListener);
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
        if (!(this.context instanceof NVRecyclerViewFragment)) {
            Log.e("parent context is not NVRecyclerViewFragment");
        } else {
            if (noImpression()) {
                return;
            }
            ((NVRecyclerViewFragment) this.context).addImpressionCollectorInListView(impressionCollector);
        }
    }

    public boolean dispatchOnItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        if (obj instanceof StrategyObject) {
            LogUtils.nextPageStrategyInfo = ((StrategyObject) obj).getStrategyInfo();
        }
        return onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    public void ensureLogin(Intent intent, String str) {
        if (!(this.context instanceof NVRecyclerViewFragment)) {
            throw new IllegalStateException("context is not NVListFragment");
        }
        intent.putExtra("__adapter", true);
        intent.putExtra("__adapterClass", getClass().getName());
        ((NVRecyclerViewFragment) this.context).ensureLogin(intent, str);
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

    @Override // com.narvii.app.NVInteractionScope
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

    public void onDetach() {
        boolean z6;
        boolean zIsFinishing;
        if (this instanceof NotificationListener) {
            NotificationCenter notificationCenter = (NotificationCenter) this.context.getService("notification");
            NVContext parentContext = this.context;
            while (true) {
                z6 = false;
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
                if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
                    z6 = true;
                }
                zIsFinishing = z6;
            }
            notificationCenter.unregisterListener(this.context, zIsFinishing);
        }
    }

    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "openHangout".equals(intent.getAction())) {
            safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, (Intent) intent.getParcelableExtra("intent"));
        }
    }

    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    public void refresh(int i10, PageRequestCallback pageRequestCallback) {
        if (pageRequestCallback != null) {
            pageRequestCallback.onPageRequestFinished(0);
        }
    }

    public void removeDataSetChangeListener(DataSetChangeListener dataSetChangeListener) {
        this.dataSetEventDispatcher.removeListener(dataSetChangeListener);
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

    public NVRecyclerViewBaseAdapter(NVContext nVContext) {
        this.context = nVContext;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        Object item = getItem(i10);
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    public boolean isEmpty() {
        if (getItemCount() == 0) {
            return true;
        }
        return false;
    }

    public boolean isListShow() {
        return !isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
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
            if (parent instanceof RecyclerView) {
                RecyclerView recyclerView = (RecyclerView) parent;
                if (recyclerView.getAdapter() != this && (recyclerView.getAdapter() instanceof NVRecyclerViewBaseAdapter)) {
                    return ((NVRecyclerViewBaseAdapter) recyclerView.getAdapter()).onSubviewClick(view, z6);
                }
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view2);
                if (childAdapterPosition == -1 || !(recyclerView.getAdapter() instanceof NVRecyclerViewBaseAdapter)) {
                    return false;
                }
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = (NVRecyclerViewBaseAdapter) recyclerView.getAdapter();
                Object item = nVRecyclerViewBaseAdapter.getItem(childAdapterPosition);
                if (z6) {
                    return onLongClick(nVRecyclerViewBaseAdapter, childAdapterPosition, item, view2, view);
                }
                if (view == view2) {
                    view = null;
                }
                return dispatchOnItemClick(nVRecyclerViewBaseAdapter, childAdapterPosition, item, view2, view);
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
        logClickEvent(actSemantic, z6, false);
    }

    protected LogEvent.Builder getClickEventBuilder(Object obj) {
        return getClickEventBuilder(obj, null);
    }

    public void logClickEvent(ActSemantic actSemantic, boolean z6, boolean z10) {
        ImpressionCollector impressionCollector;
        LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, actSemantic);
        if (z6) {
            builderClickBuilder.toThirdParty();
        }
        if (z10 && (impressionCollector = this.mainIpc) != null) {
            impressionCollector.completeImpressionLogBuilder(builderClickBuilder, null);
        }
        builderClickBuilder.send();
    }
}
