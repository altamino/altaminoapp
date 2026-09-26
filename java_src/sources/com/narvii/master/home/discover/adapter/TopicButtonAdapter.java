package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.ViewUtils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class TopicButtonAdapter extends NVRecyclerViewBaseAdapter implements SerialRequestChild, SubRequestHost {

    @NotNull
    private final SerialRequestHelper childHelper;

    @Nullable
    private View.OnClickListener clickListener;

    @NotNull
    private final ContentModule contentModule;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private NVRecyclerViewBaseAdapter host;

    @NotNull
    private LinearImpressionCollector ipc;
    private boolean showList;

    public final class ViewHolder extends BaseViewHolder {

        @NotNull
        private final TextView text;
        final /* synthetic */ TopicButtonAdapter this$0;

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @NotNull
        public final TextView getText() {
            return this.text;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull final TopicButtonAdapter topicButtonAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = topicButtonAdapter;
            View viewFindViewById = itemView.findViewById(R.id.count_text);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            TextView textView = (TextView) viewFindViewById;
            this.text = textView;
            ViewUtils.setMontserratExtraBoldTypeface(textView);
            itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicButtonAdapter.ViewHolder._init_$lambda$0(topicButtonAdapter, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(TopicButtonAdapter this$0, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.logClickEvent(ActSemantic.listViewEnter, false, true);
            safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this$0, FragmentWrapperActivity.intent(AggregationTopicFragment.class));
        }
    }

    @NotNull
    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @Nullable
    public final View.OnClickListener getClickListener() {
        return this.clickListener;
    }

    @NotNull
    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    @NotNull
    public final LinearImpressionCollector getIpc() {
        return this.ipc;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.showList ? 1 : 0;
    }

    public final boolean getShowList() {
        return this.showList;
    }

    public final void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    public final void setHost(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public final void setIpc(@NotNull LinearImpressionCollector linearImpressionCollector) {
        kotlin.jvm.internal.t.j(linearImpressionCollector, "<set-?>");
        this.ipc = linearImpressionCollector;
    }

    public final void setShowList(boolean z6) {
        this.showList = z6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicButtonAdapter(@NotNull NVContext ctx, @NotNull ContentModule contentModule) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.ctx = ctx;
        this.contentModule = contentModule;
        this.childHelper = new SerialRequestHelper(this, this);
        final Class<ContentModule> cls = ContentModule.class;
        this.ipc = new LinearImpressionCollector(cls) { // from class: com.narvii.master.home.discover.adapter.TopicButtonAdapter$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<?> objectInfo) {
                kotlin.jvm.internal.t.j(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                ModuleLogUtils.completeModuleExtraInfo(builder, this.this$0.getContentModule());
            }
        };
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.contentModule.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
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
    public boolean isVisibleToUser() {
        return this.childHelper.isItemShown();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof ViewHolder) {
            ((ViewHolder) holder).getText().setText(this.contentModule.displayName);
            tagCellForLog(holder.itemView, this.contentModule);
        }
        getItem(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_more_topic_button, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new ViewHolder(this, viewInflate);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        View.OnClickListener onClickListener = this.clickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(@Nullable SerialRequestParent serialRequestParent) {
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return getItemCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @NotNull
    public Object getItem(int i10) {
        Object item = super.getItem(i10);
        if (item != null) {
            this.childHelper.setItemShown();
        }
        kotlin.jvm.internal.t.g(item);
        return item;
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        return isSubRequestFinish();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(this.ipc);
        if (!isReadyToRequest()) {
            return;
        }
        this.showList = true;
        this.childHelper.setRequestFinished(null);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        super.refresh(i10, pageRequestCallback);
        this.showList = true;
        this.childHelper.setRequestFinished(null);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return getItemCount();
    }
}
