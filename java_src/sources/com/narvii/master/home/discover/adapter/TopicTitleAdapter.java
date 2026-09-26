package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.BookmarkedTopicListFragment;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicRequestHelper;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.Callback;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class TopicTitleAdapter extends RecyclerViewAdriftAdapter {

    @NotNull
    private final NVContext ctx;

    @Nullable
    private NVRecyclerViewBaseAdapter host;

    @Nullable
    private final Integer iconRes;

    @NotNull
    private final ContentModule module;

    @Nullable
    private final ModuleDisplayConfig moduleDisplayConfig;

    @Nullable
    private View.OnClickListener titleClickListener;

    public final class TopicTitleViewHolder extends BaseViewHolder {

        @NotNull
        private final NVImageView icon;

        @NotNull
        private final FrameLayout iconContainer;

        @NotNull
        private final FrameLayout interestIcon;
        final /* synthetic */ TopicTitleAdapter this$0;

        @NotNull
        private final TextView title;

        @NotNull
        public final NVImageView getIcon() {
            return this.icon;
        }

        @NotNull
        public final FrameLayout getInterestIcon() {
            return this.interestIcon;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicTitleViewHolder(@NotNull TopicTitleAdapter topicTitleAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = topicTitleAdapter;
            View viewFindViewById = itemView.findViewById(R.id.title);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            TextView textView = (TextView) viewFindViewById;
            this.title = textView;
            View viewFindViewById2 = itemView.findViewById(R.id.icon);
            kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
            this.icon = (NVImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.interest_view);
            kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
            FrameLayout frameLayout = (FrameLayout) viewFindViewById3;
            this.interestIcon = frameLayout;
            View viewFindViewById4 = itemView.findViewById(R.id.icon_container);
            kotlin.jvm.internal.t.i(viewFindViewById4, "findViewById(...)");
            FrameLayout frameLayout2 = (FrameLayout) viewFindViewById4;
            this.iconContainer = frameLayout2;
            frameLayout.setOnClickListener(topicTitleAdapter.subviewClickListener);
            frameLayout2.setOnClickListener(topicTitleAdapter.subviewClickListener);
            textView.setOnClickListener(topicTitleAdapter.subviewClickListener);
            ModuleDisplayConfig moduleDisplayConfig = topicTitleAdapter.getModuleDisplayConfig();
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isTop) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = itemView.getLayoutParams();
            kotlin.jvm.internal.t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = Utils.dpToPxInt(topicTitleAdapter.getContext(), 30.0f);
            itemView.setLayoutParams(marginLayoutParams);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicTitleAdapter(@NotNull NVContext ctx, @NotNull ContentModule module, @Nullable ModuleDisplayConfig moduleDisplayConfig, @Nullable Integer num) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.iconRes = num;
        this.moduleDisplayConfig = moduleDisplayConfig;
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    @Nullable
    protected final ModuleDisplayConfig getModuleDisplayConfig() {
        return this.moduleDisplayConfig;
    }

    @Nullable
    public final View.OnClickListener getTitleClickListener() {
        return this.titleClickListener;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        View.OnClickListener onClickListener;
        Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.icon_container) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, ActSemantic.listViewEnter);
            ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, this.module);
            builderClickBuilder.send();
            NVContext nVContext = this.ctx;
            if (nVContext instanceof NVFragment) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) nVContext, FragmentWrapperActivity.intent(BookmarkedTopicListFragment.class), 101);
            } else {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, FragmentWrapperActivity.intent(BookmarkedTopicListFragment.class));
            }
            return true;
        }
        if (numValueOf == null || numValueOf.intValue() != R.id.interest_view) {
            if (numValueOf == null || numValueOf.intValue() != R.id.title) {
                return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
            }
            ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
            if ((moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) && (onClickListener = this.titleClickListener) != null) {
                onClickListener.onClick(view);
            }
            return true;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_discover_topic_not_interested, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.not_interested_text);
        ContentModule contentModule = this.module;
        final boolean z6 = contentModule != null && contentModule.linkedObjectType == 128;
        textView.setText(getContext().getString(z6 ? R.string.unbookmark_in_topic : R.string.not_interested_in_topic, this.module.getInterestName()));
        textView.setMaxWidth((int) (Utils.getScreenWidth(getContext()) * 0.68f));
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        popupWindow.setTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                TopicTitleAdapter.onItemClick$lambda$3(z6, this, popupWindow, view3);
            }
        });
        popupWindow.showAsDropDown(view2);
        return true;
    }

    public final void setHost(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public final void setTitleClickListener(@Nullable View.OnClickListener onClickListener) {
        this.titleClickListener = onClickListener;
    }

    public /* synthetic */ TopicTitleAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig, Integer num, int i10, kotlin.jvm.internal.k kVar) {
        this(nVContext, contentModule, moduleDisplayConfig, (i10 & 8) != 0 ? null : num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onItemClick$lambda$3(boolean z6, final TopicTitleAdapter this$0, PopupWindow pw, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(pw, "$pw");
        if (z6) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this$0, ActSemantic.unbookmark);
            ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, this$0.module);
            builderClickBuilder.send();
            new TopicRequestHelper(this$0.ctx).sendBookmarkRequest(this$0.module.getTopicId(), (16 & 2) != 0 ? null : null, (16 & 4) != 0, (16 & 8) != 0 ? null : new Callback() { // from class: com.narvii.master.home.discover.adapter.u
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    TopicTitleAdapter.onItemClick$lambda$3$lambda$1(this.f2342a, (RequestResult) obj);
                }
            }, (16 & 16) != 0);
        } else {
            String interestId = this$0.module.getInterestId();
            if (interestId != null) {
                LogEvent.Builder builderClickBuilder2 = LogEvent.clickBuilder(this$0, ActSemantic.notInterested);
                ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder2, this$0.module);
                builderClickBuilder2.send();
                ApiRequest.Builder builder = new ApiRequest.Builder();
                builder.path("persona/interests/" + interestId).delete();
                final Class<StoryTopicListResponse> cls = StoryTopicListResponse.class;
                ((ApiService) this$0.getService("api")).exec(builder.build(), new ApiResponseListener<StoryTopicListResponse>(cls) { // from class: com.narvii.master.home.discover.adapter.TopicTitleAdapter$onItemClick$1$2$1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(@Nullable ApiRequest apiRequest, @Nullable StoryTopicListResponse storyTopicListResponse) throws Exception {
                        super.onFinish(apiRequest, storyTopicListResponse);
                        ((NotificationCenter) this.this$0.getService("notification")).sendNotification(new Notification("delete", this.this$0.module));
                    }
                });
            }
        }
        pw.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onItemClick$lambda$3$lambda$1(TopicTitleAdapter this$0, RequestResult requestResult) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        ((NotificationCenter) this$0.getService("notification")).sendNotification(new Notification("delete", this$0.module));
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    @NotNull
    public String getAreaName() {
        String moduleType = this.module.moduleType;
        kotlin.jvm.internal.t.i(moduleType, "moduleType");
        return moduleType;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter;
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig == null || !moduleDisplayConfig.showTitle || (nVRecyclerViewBaseAdapter = this.host) == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        if (!nVRecyclerViewBaseAdapter.isListShow()) {
            return 0;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter2);
        if (nVRecyclerViewBaseAdapter2.getItemCount() > 0) {
            return super.getItemCount();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof TopicTitleViewHolder) {
            TopicTitleViewHolder topicTitleViewHolder = (TopicTitleViewHolder) holder;
            topicTitleViewHolder.getTitle().setText(this.module.displayName);
            topicTitleViewHolder.getIcon().setVisibility(8);
            Integer num = this.iconRes;
            if (num != null) {
                num.intValue();
                topicTitleViewHolder.getIcon().setImageResource(this.iconRes.intValue());
                topicTitleViewHolder.getIcon().setVisibility(0);
            }
            if (kotlin.jvm.internal.t.e(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS)) {
                topicTitleViewHolder.getIcon().setVisibility(4);
            }
            topicTitleViewHolder.getInterestIcon().setVisibility(this.module.userRemovable ? 0 : 4);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_discover_tab_topic_title, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        TopicTitleViewHolder topicTitleViewHolder = new TopicTitleViewHolder(this, viewInflate);
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
            ViewGroup.LayoutParams layoutParams = topicTitleViewHolder.itemView.getLayoutParams();
            kotlin.jvm.internal.t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = Utils.dpToPxInt(getContext(), 30.0f);
            topicTitleViewHolder.itemView.setLayoutParams(marginLayoutParams);
        }
        return topicTitleViewHolder;
    }
}
