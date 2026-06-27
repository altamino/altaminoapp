package com.narvii.paging.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewParent;
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

/* loaded from: classes.dex */
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

    /* loaded from: classes3.dex */
    public interface DataSetChangeListener {
        void onDataSetChanged();
    }

    public String getAreaName() {
        return null;
    }

    public String getErrorMessage() {
        return null;
    }

    public Object getItem(int i) {
        return this;
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

    protected boolean noImpression() {
        return false;
    }

    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        return false;
    }

    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        return false;
    }

    public void onRestoreInstanceState(Bundle bundle) {
    }

    public void resetEmptyList() {
    }

    public void resetList() {
    }

    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    public void addDataSetChangeListener(DataSetChangeListener dataSetChangeListener) {
        this.dataSetEventDispatcher.addListener(dataSetChangeListener);
    }

    public void removeDataSetChangeListener(DataSetChangeListener dataSetChangeListener) {
        this.dataSetEventDispatcher.removeListener(dataSetChangeListener);
    }

    public NVRecyclerViewBaseAdapter(NVContext nVContext) {
        this.context = nVContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttach() {
        this.attached = true;
        if (this instanceof NotificationListener) {
            ((NotificationCenter) this.context.getService("notification")).registerListener(this.context, (NotificationListener) this);
        }
    }

    public void onDetach() {
        boolean zIsFinishing;
        if (this instanceof NotificationListener) {
            NotificationCenter notificationCenter = (NotificationCenter) this.context.getService("notification");
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
                zIsFinishing = (context instanceof Activity) && ((Activity) context).isFinishing();
            }
            notificationCenter.unregisterListener(this.context, zIsFinishing);
        }
    }

    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        if (pageRequestCallback != null) {
            pageRequestCallback.onPageRequestFinished(0);
        }
    }

    public boolean isEmpty() {
        return getItemCount() == 0;
    }

    public boolean isListShow() {
        return !isEmpty();
    }

    public void onErrorRetry() {
        refresh(0, null);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
    }

    protected boolean onSubviewClick(View view, boolean z) {
        View view2 = view;
        ViewParent parent = view.getParent();
        int i = 0;
        while (true) {
            if (!(i < 8) || !(parent != null)) {
                return false;
            }
            if (parent instanceof RecyclerView) {
                RecyclerView recyclerView = (RecyclerView) parent;
                if (recyclerView.getAdapter() != this && (recyclerView.getAdapter() instanceof NVRecyclerViewBaseAdapter)) {
                    return ((NVRecyclerViewBaseAdapter) recyclerView.getAdapter()).onSubviewClick(view, z);
                }
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view2);
                if (childAdapterPosition == -1 || !(recyclerView.getAdapter() instanceof NVRecyclerViewBaseAdapter)) {
                    return false;
                }
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = (NVRecyclerViewBaseAdapter) recyclerView.getAdapter();
                Object item = nVRecyclerViewBaseAdapter.getItem(childAdapterPosition);
                if (z) {
                    return onLongClick(nVRecyclerViewBaseAdapter, childAdapterPosition, item, view2, view);
                }
                if (view == view2) {
                    view = null;
                }
                return dispatchOnItemClick(nVRecyclerViewBaseAdapter, childAdapterPosition, item, view2, view);
            }
            view2 = parent;
            parent = view2.getParent();
            i++;
        }
    }

    public boolean dispatchOnItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof StrategyObject) {
            LogUtils.nextPageStrategyInfo = ((StrategyObject) obj).getStrategyInfo();
        }
        return onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
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
        if (this.context instanceof NVRecyclerViewFragment) {
            if (noImpression()) {
                return;
            }
            ((NVRecyclerViewFragment) this.context).addImpressionCollectorInListView(impressionCollector);
            return;
        }
        Log.e("parent context is not NVRecyclerViewFragment");
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
        logClickEvent(actSemantic, z, false);
    }

    public void logClickEvent(ActSemantic actSemantic, boolean z, boolean z2) {
        ImpressionCollector impressionCollector;
        LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, actSemantic);
        if (z) {
            builderClickBuilder.toThirdParty();
        }
        if (z2 && (impressionCollector = this.mainIpc) != null) {
            impressionCollector.completeImpressionLogBuilder(builderClickBuilder, null);
        }
        builderClickBuilder.send();
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

    @Override // com.narvii.app.NVContext, android.content.Context
    public void startActivity(Intent intent) {
        this.context.startActivity(intent);
    }

    protected void tagCellForLog(View view, Object obj) {
        if (view == null) {
            return;
        }
        LogUtils.setAttachedObject(view, obj);
        LogUtils.setShownInAdapter(view, this);
    }

    @Override // com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVInteractionScope) {
            return ((NVInteractionScope) nVContext).isGlobalInteractionScope();
        }
        return false;
    }

    public void setParentAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.parentAdapter = nVRecyclerViewBaseAdapter;
    }

    public NVRecyclerViewBaseAdapter getParentAdapter() {
        return this.parentAdapter;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (getItem(i) == null) {
            return 0L;
        }
        return r3.hashCode();
    }

    public void ensureLogin(Intent intent, String str) {
        if (this.context instanceof NVRecyclerViewFragment) {
            intent.putExtra("__adapter", true);
            intent.putExtra("__adapterClass", getClass().getName());
            ((NVRecyclerViewFragment) this.context).ensureLogin(intent, str);
            return;
        }
        throw new IllegalStateException("context is not NVListFragment");
    }

    public boolean dispatchLoginResult(boolean z, Intent intent) {
        if (intent == null || !intent.getBooleanExtra("__adapter", false) || !Utils.isEquals(intent.getStringExtra("__adapterClass"), getClass().getName())) {
            return false;
        }
        onLoginResult(z, intent);
        return true;
    }

    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "openHangout".equals(intent.getAction())) {
            startActivity((Intent) intent.getParcelableExtra("intent"));
        }
    }
}
