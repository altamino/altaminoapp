package com.narvii.master.home.discover.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.databinding.IncubatorItemCreateAminoBinding;
import com.narvii.amino.master.R;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class CreateCommunityButtonAdapter extends NVRecyclerViewBaseAdapter implements SerialRequestChild, SubRequestHost {

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

    @NotNull
    private final w7.m masterHelper$delegate;
    private boolean showList;

    public final class ViewHolder extends BaseViewHolder {

        @NotNull
        private final IncubatorItemCreateAminoBinding binding;

        @NotNull
        private TextView hint;
        final /* synthetic */ CreateCommunityButtonAdapter this$0;

        @NotNull
        public final TextView getHint() {
            return this.hint;
        }

        public final void setHint(@NotNull TextView textView) {
            kotlin.jvm.internal.t.j(textView, "<set-?>");
            this.hint = textView;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ViewHolder(@NotNull final CreateCommunityButtonAdapter createCommunityButtonAdapter, IncubatorItemCreateAminoBinding binding) {
            kotlin.jvm.internal.t.j(binding, "binding");
            this.this$0 = createCommunityButtonAdapter;
            FlexLayout root = binding.getRoot();
            kotlin.jvm.internal.t.i(root, "getRoot(...)");
            super(root);
            this.binding = binding;
            AutoSizingTextView hint = binding.hint;
            kotlin.jvm.internal.t.i(hint, "hint");
            this.hint = hint;
            ViewUtils.setMontserratExtraBoldTypeface(hint);
            binding.createAmino.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CreateCommunityButtonAdapter.ViewHolder._init_$lambda$0(createCommunityButtonAdapter, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(CreateCommunityButtonAdapter this$0, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.logClickEvent(ActSemantic.createAmino, false, true);
            this$0.getMasterHelper().createAmino(null);
        }

        public final void bind() {
            this.binding.hint.setText(this.this$0.getContext().getString(R.string.create_your_own));
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
    public CreateCommunityButtonAdapter(@NotNull NVContext ctx, @NotNull ContentModule contentModule) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
        this.ctx = ctx;
        this.contentModule = contentModule;
        this.childHelper = new SerialRequestHelper(this, this);
        this.masterHelper$delegate = w7.o.a(new CreateCommunityButtonAdapter$masterHelper$2(this));
        final Class<ContentModule> cls = ContentModule.class;
        this.ipc = new LinearImpressionCollector(cls) { // from class: com.narvii.master.home.discover.adapter.CreateCommunityButtonAdapter$ipc$1
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

    @NotNull
    public final MasterHelper getMasterHelper() {
        return (MasterHelper) this.masterHelper$delegate.getValue();
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
            ((ViewHolder) holder).bind();
            tagCellForLog(holder.itemView, this.contentModule);
        }
        getItem(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        IncubatorItemCreateAminoBinding incubatorItemCreateAminoBindingInflate = IncubatorItemCreateAminoBinding.inflate(LayoutInflater.from(getContext()), parent, false);
        kotlin.jvm.internal.t.i(incubatorItemCreateAminoBindingInflate, "inflate(...)");
        return new ViewHolder(this, incubatorItemCreateAminoBindingInflate);
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
