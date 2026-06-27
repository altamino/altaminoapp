package com.narvii.master.home.discover.adapter;

import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicTitleAdapter.kt */
/* loaded from: classes3.dex */
public class TopicTitleAdapter extends RecyclerViewAdriftAdapter {
    private final NVContext ctx;
    private NVRecyclerViewBaseAdapter host;
    private final Integer iconRes;
    private final ContentModule module;
    private final ModuleDisplayConfig moduleDisplayConfig;
    private View.OnClickListener titleClickListener;

    protected final ModuleDisplayConfig getModuleDisplayConfig() {
        return this.moduleDisplayConfig;
    }

    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public final void setHost(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public final View.OnClickListener getTitleClickListener() {
        return this.titleClickListener;
    }

    public final void setTitleClickListener(View.OnClickListener onClickListener) {
        this.titleClickListener = onClickListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicTitleAdapter(NVContext ctx, ContentModule module, ModuleDisplayConfig moduleDisplayConfig, Integer num) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.iconRes = num;
        this.moduleDisplayConfig = moduleDisplayConfig;
    }

    public /* synthetic */ TopicTitleAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, contentModule, moduleDisplayConfig, (i & 8) != 0 ? null : num);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_discover_tab_topic_title, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…pic_title, parent, false)");
        TopicTitleViewHolder topicTitleViewHolder = new TopicTitleViewHolder(this, viewInflate);
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
            View view = topicTitleViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "topicTitleViewHolder.itemView");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = Utils.dpToPxInt(getContext(), 30.0f);
            View view2 = topicTitleViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "topicTitleViewHolder.itemView");
            view2.setLayoutParams(marginLayoutParams);
        }
        return topicTitleViewHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
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
            if (Intrinsics.areEqual(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS)) {
                topicTitleViewHolder.getIcon().setVisibility(4);
            }
            topicTitleViewHolder.getInterestIcon().setVisibility(this.module.userRemovable ? 0 : 4);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        String str = this.module.moduleType;
        Intrinsics.checkExpressionValueIsNotNull(str, "module.moduleType");
        return str;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        View.OnClickListener onClickListener;
        Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.icon_container) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, ActSemantic.listViewEnter);
            ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, this.module);
            builderClickBuilder.send();
            NVContext nVContext = this.ctx;
            if (nVContext instanceof NVFragment) {
                ((NVFragment) nVContext).startActivityForResult(FragmentWrapperActivity.intent(BookmarkedTopicListFragment.class), 101);
            } else {
                nVContext.startActivity(FragmentWrapperActivity.intent(BookmarkedTopicListFragment.class));
            }
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.interest_view) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_discover_topic_not_interested, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.not_interested_text);
            ContentModule contentModule = this.module;
            boolean z = contentModule != null && contentModule.linkedObjectType == 128;
            Intrinsics.checkExpressionValueIsNotNull(textView, "textView");
            textView.setText(getContext().getString(z ? R.string.unbookmark_in_topic : R.string.not_interested_in_topic, this.module.getInterestName()));
            textView.setMaxWidth((int) (Utils.getScreenWidth(getContext()) * 0.68f));
            PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
            popupWindow.setTouchable(true);
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
            popupWindow.setOutsideTouchable(true);
            viewInflate.setOnClickListener(new AnonymousClass1(z, popupWindow));
            popupWindow.showAsDropDown(view2);
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.title) {
            ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
            if ((moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) && (onClickListener = this.titleClickListener) != null) {
                onClickListener.onClick(view);
            }
            return true;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    /* compiled from: TopicTitleAdapter.kt */
    /* renamed from: com.narvii.master.home.discover.adapter.TopicTitleAdapter$onItemClick$1, reason: invalid class name */
    static final class AnonymousClass1 implements View.OnClickListener {
        final /* synthetic */ boolean $isTopic;
        final /* synthetic */ PopupWindow $pw;

        AnonymousClass1(boolean z, PopupWindow popupWindow) {
            this.$isTopic = z;
            this.$pw = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!this.$isTopic) {
                String interestId = TopicTitleAdapter.this.module.getInterestId();
                if (interestId != null) {
                    LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(TopicTitleAdapter.this, ActSemantic.notInterested);
                    ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, TopicTitleAdapter.this.module);
                    builderClickBuilder.send();
                    ApiRequest.Builder builder = new ApiRequest.Builder();
                    builder.path("persona/interests/" + interestId).delete();
                    final Class<StoryTopicListResponse> cls = StoryTopicListResponse.class;
                    ((ApiService) TopicTitleAdapter.this.getService("api")).exec(builder.build(), new ApiResponseListener<StoryTopicListResponse>(cls) { // from class: com.narvii.master.home.discover.adapter.TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, StoryTopicListResponse storyTopicListResponse) throws Exception {
                            super.onFinish(apiRequest, (ApiRequest) storyTopicListResponse);
                            ((NotificationCenter) TopicTitleAdapter.this.getService("notification")).sendNotification(new Notification("delete", TopicTitleAdapter.this.module));
                        }
                    });
                }
            } else {
                LogEvent.Builder builderClickBuilder2 = LogEvent.clickBuilder(TopicTitleAdapter.this, ActSemantic.unbookmark);
                ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder2, TopicTitleAdapter.this.module);
                builderClickBuilder2.send();
                new TopicRequestHelper(TopicTitleAdapter.this.ctx).sendBookmarkRequest(TopicTitleAdapter.this.module.getTopicId(), (2 & 2) != 0 ? null : null, (2 & 4) != 0, (2 & 8) != 0 ? null : new Callback<RequestResult>() { // from class: com.narvii.master.home.discover.adapter.TopicTitleAdapter.onItemClick.1.1
                    @Override // com.narvii.util.Callback
                    public final void call(RequestResult requestResult) {
                        ((NotificationCenter) TopicTitleAdapter.this.getService("notification")).sendNotification(new Notification("delete", TopicTitleAdapter.this.module));
                    }
                }, (2 & 16) != 0);
            }
            this.$pw.dismiss();
        }
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter;
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig == null || !moduleDisplayConfig.showTitle || (nVRecyclerViewBaseAdapter = this.host) == null) {
            return 0;
        }
        if (nVRecyclerViewBaseAdapter == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!nVRecyclerViewBaseAdapter.isListShow()) {
            return 0;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
        if (nVRecyclerViewBaseAdapter2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (nVRecyclerViewBaseAdapter2.getItemCount() > 0) {
            return super.getItemCount();
        }
        return 0;
    }

    /* compiled from: TopicTitleAdapter.kt */
    public final class TopicTitleViewHolder extends BaseViewHolder {
        private final NVImageView icon;
        private final FrameLayout iconContainer;
        private final FrameLayout interestIcon;
        final /* synthetic */ TopicTitleAdapter this$0;
        private final TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicTitleViewHolder(TopicTitleAdapter topicTitleAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = topicTitleAdapter;
            TextView textView = (TextView) itemView.findViewById(com.narvii.amino.R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(textView, "itemView.title");
            this.title = textView;
            ThumbImageView thumbImageView = (ThumbImageView) itemView.findViewById(com.narvii.amino.R.id.icon);
            Intrinsics.checkExpressionValueIsNotNull(thumbImageView, "itemView.icon");
            this.icon = thumbImageView;
            FrameLayout frameLayout = (FrameLayout) itemView.findViewById(com.narvii.amino.R.id.interest_view);
            Intrinsics.checkExpressionValueIsNotNull(frameLayout, "itemView.interest_view");
            this.interestIcon = frameLayout;
            FrameLayout frameLayout2 = (FrameLayout) itemView.findViewById(com.narvii.amino.R.id.icon_container);
            Intrinsics.checkExpressionValueIsNotNull(frameLayout2, "itemView.icon_container");
            this.iconContainer = frameLayout2;
            this.interestIcon.setOnClickListener(topicTitleAdapter.subviewClickListener);
            this.iconContainer.setOnClickListener(topicTitleAdapter.subviewClickListener);
            this.title.setOnClickListener(topicTitleAdapter.subviewClickListener);
            ModuleDisplayConfig moduleDisplayConfig = topicTitleAdapter.getModuleDisplayConfig();
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isTop) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = itemView.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = Utils.dpToPxInt(topicTitleAdapter.getContext(), 30.0f);
            itemView.setLayoutParams(marginLayoutParams);
        }

        public final TextView getTitle() {
            return this.title;
        }

        public final NVImageView getIcon() {
            return this.icon;
        }

        public final FrameLayout getInterestIcon() {
            return this.interestIcon;
        }

        public final FrameLayout getIconContainer() {
            return this.iconContainer;
        }
    }
}
