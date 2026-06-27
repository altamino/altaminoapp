package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.MasterHelper;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.ViewUtils;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CreateCommunityButtonAdapter.kt */
/* loaded from: classes3.dex */
public class CreateCommunityButtonAdapter extends NVRecyclerViewBaseAdapter implements SerialRequestChild, SubRequestHost {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CreateCommunityButtonAdapter.class), "masterHelper", "getMasterHelper()Lcom/narvii/master/MasterHelper;"))};
    private final SerialRequestHelper childHelper;
    private View.OnClickListener clickListener;
    private final ContentModule contentModule;
    private final NVContext ctx;
    private NVRecyclerViewBaseAdapter host;
    private LinearImpressionCollector ipc;
    private final Lazy masterHelper$delegate;
    private boolean showList;

    public final MasterHelper getMasterHelper() {
        Lazy lazy = this.masterHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (MasterHelper) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateCommunityButtonAdapter(NVContext ctx, ContentModule contentModule) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
        this.ctx = ctx;
        this.contentModule = contentModule;
        this.childHelper = new SerialRequestHelper(this, this);
        this.masterHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<MasterHelper>() { // from class: com.narvii.master.home.discover.adapter.CreateCommunityButtonAdapter$masterHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MasterHelper invoke() {
                return new MasterHelper(this.this$0);
            }
        });
        final Class<ContentModule> cls = ContentModule.class;
        this.ipc = new LinearImpressionCollector(cls) { // from class: com.narvii.master.home.discover.adapter.CreateCommunityButtonAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<?> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
            }
        };
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public final void setHost(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    public final boolean getShowList() {
        return this.showList;
    }

    public final void setShowList(boolean z) {
        this.showList = z;
    }

    public final View.OnClickListener getClickListener() {
        return this.clickListener;
    }

    public final void setClickListener(View.OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    public final LinearImpressionCollector getIpc() {
        return this.ipc;
    }

    public final void setIpc(LinearImpressionCollector linearImpressionCollector) {
        Intrinsics.checkParameterIsNotNull(linearImpressionCollector, "<set-?>");
        this.ipc = linearImpressionCollector;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.incubator_item_create_amino, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…ate_amino, parent, false)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.showList ? 1 : 0;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).getHint().setText(this.ctx.getContext().getString(R.string.create_your_own));
            tagCellForLog(holder.itemView, this.contentModule);
        }
        getItem(i);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.contentModule.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "contentModule.moduleType");
        return str;
    }

    /* compiled from: CreateCommunityButtonAdapter.kt */
    public final class ViewHolder extends BaseViewHolder {
        private final TextView hint;
        final /* synthetic */ CreateCommunityButtonAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(CreateCommunityButtonAdapter createCommunityButtonAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = createCommunityButtonAdapter;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) itemView.findViewById(com.narvii.amino.R.id.hint);
            Intrinsics.checkExpressionValueIsNotNull(autoSizingTextView, "itemView.hint");
            this.hint = autoSizingTextView;
            ViewUtils.setMontserratExtraBoldTypeface(this.hint);
            ((LinearLayout) itemView.findViewById(com.narvii.amino.R.id.create_amino)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.CreateCommunityButtonAdapter.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ViewHolder.this.this$0.logClickEvent(ActSemantic.createAmino, false, true);
                    ViewHolder.this.this$0.getMasterHelper().createAmino(null);
                }
            });
        }

        public final TextView getHint() {
            return this.hint;
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        View.OnClickListener onClickListener = this.clickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(this.ipc);
        if (isReadyToRequest()) {
            this.showList = true;
            this.childHelper.setRequestFinished(null);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i, pageRequestCallback);
        this.showList = true;
        this.childHelper.setRequestFinished(null);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        Object result = super.getItem(i);
        if (result != null) {
            this.childHelper.setItemShown();
        }
        Intrinsics.checkExpressionValueIsNotNull(result, "result");
        return result;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return getItemCount();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(SerialRequestParent serialRequestParent) {
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return this.childHelper.isItemShown();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return getItemCount();
    }
}
