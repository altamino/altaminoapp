package com.narvii.master.home.discover.adapter;

import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Log;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ModuleHorizontalBaseAdapter extends RecyclerViewAdriftAdapter implements SerialRequestChild, SubRequestHost {

    @Nullable
    private NVRecyclerViewBaseAdapter adapter;

    @NotNull
    private final SerialRequestHelper childHelper;

    @NotNull
    private final ContentModule contentModule;

    @Nullable
    private final ModuleDisplayConfig displayConfig;

    @Nullable
    public final NVRecyclerViewBaseAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @NotNull
    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    @Nullable
    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    public final void setAdapter(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.adapter = nVRecyclerViewBaseAdapter;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleHorizontalBaseAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.contentModule = contentModule;
        this.displayConfig = moduleDisplayConfig;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public String getErrorMessage() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            return nVRecyclerViewBaseAdapter.getErrorMessage();
        }
        return null;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter == null) {
            return true;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        return nVRecyclerViewBaseAdapter.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter == null) {
            return false;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        return nVRecyclerViewBaseAdapter.isListShow();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter == null) {
            return true;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        return nVRecyclerViewBaseAdapter.isLoading();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(@Nullable SerialRequestParent serialRequestParent) {
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Object getItem(int i10) {
        Object item = super.getItem(i10);
        if (item != null) {
            Log.d("SerialRequest", "set item shown " + this + " , " + this.contentModule.dataUrl);
            this.childHelper.setItemShown();
        }
        kotlin.jvm.internal.t.g(item);
        return item;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        if (TextUtils.isEmpty(getErrorMessage()) && !this.childHelper.isItemShown()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.refresh(i10 | 1, null);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        super.resetList();
        this.childHelper.resetSerialRequestChild();
    }
}
