package com.narvii.master.home.discover.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.LogUtils;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.topic.TopicListFragment;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.topic.widgets.GeneralTopicCard;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GeneralTopicCardAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_TOPIC_SIZE = 20;
    private static final int MORE_TYPE = 1;

    @NotNull
    private static final String TAG = "GeneralTopicCard";
    private static final int TOPIC_CARD_TYPE = 0;

    @NotNull
    private final NVContext ctx;

    @Nullable
    private ObjectItemClickListener itemClickListener;

    @NotNull
    private final ContentModule module;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final class MoreViewHolder extends BaseViewHolder {
        final /* synthetic */ GeneralTopicCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MoreViewHolder(@NotNull GeneralTopicCardAdapter generalTopicCardAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = generalTopicCardAdapter;
            itemView.setOnClickListener(generalTopicCardAdapter.subviewClickListener);
        }
    }

    private final class TopicCardViewHolder extends BaseViewHolder {

        @NotNull
        private GeneralTopicCard generalTopicCard;
        final /* synthetic */ GeneralTopicCardAdapter this$0;

        @NotNull
        public final GeneralTopicCard getGeneralTopicCard() {
            return this.generalTopicCard;
        }

        public final void setGeneralTopicCard(@NotNull GeneralTopicCard generalTopicCard) {
            kotlin.jvm.internal.t.j(generalTopicCard, "<set-?>");
            this.generalTopicCard = generalTopicCard;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicCardViewHolder(@NotNull GeneralTopicCardAdapter generalTopicCardAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = generalTopicCardAdapter;
            View viewFindViewById = itemView.findViewById(R.id.story_topic_card_view);
            kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
            GeneralTopicCard generalTopicCard = (GeneralTopicCard) viewFindViewById;
            this.generalTopicCard = generalTopicCard;
            generalTopicCard.setShownOnlineInfo(true);
            this.generalTopicCard.setOnClickListener(generalTopicCardAdapter.subviewClickListener);
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @Nullable
    public final ObjectItemClickListener getItemClickListener() {
        return this.itemClickListener;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    @NotNull
    public final ContentModule getModule() {
        return this.module;
    }

    public final void setItemClickListener(@Nullable ObjectItemClickListener objectItemClickListener) {
        this.itemClickListener = objectItemClickListener;
    }

    public boolean showSubscribeTag() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralTopicCardAdapter(@NotNull NVContext ctx, @NotNull ContentModule module) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        kotlin.jvm.internal.t.j(module, "module");
        this.ctx = ctx;
        this.module = module;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (kotlin.jvm.internal.t.e(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS)) {
            return Math.min(super.getItemCount(), 20);
        }
        if (super.getItemCount() >= 20) {
            return 21;
        }
        return super.getItemCount();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i10) {
        return (!kotlin.jvm.internal.t.e(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) && i10 == 20) ? 1 : 0;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
        if (holder instanceof TopicCardViewHolder) {
            TopicCardViewHolder topicCardViewHolder = (TopicCardViewHolder) holder;
            topicCardViewHolder.getGeneralTopicCard().setShownSubscribeTag(showSubscribeTag());
            topicCardViewHolder.getGeneralTopicCard().setTopic(getItem(i10));
            LogUtils.setAttachedObject(holder.itemView, getItem(i10));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    @NotNull
    protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        if (i10 == 1) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_module_more, parent, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return new MoreViewHolder(this, viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_module_related, parent, false);
        kotlin.jvm.internal.t.i(viewInflate2, "inflate(...)");
        return new TopicCardViewHolder(this, viewInflate2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
        if (!kotlin.jvm.internal.t.e(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) && i10 >= 20) {
            ObjectItemClickListener objectItemClickListener = this.itemClickListener;
            if (objectItemClickListener != null) {
                objectItemClickListener.onItemClick(null);
            }
            if (kotlin.jvm.internal.t.e(this.module.moduleType, ContentModule.TYPE_BOOKMARKED_TOPICS)) {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, FragmentWrapperActivity.intent(AggregationTopicFragment.class));
            } else {
                Intent intent = FragmentWrapperActivity.intent(TopicListFragment.class);
                intent.putExtra("KEY_TITLE", this.module.displayName);
                intent.putExtra("KEY_PATH", this.module.dataUrl);
                intent.putExtra("_module", JacksonUtils.writeAsString(this.module));
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, intent);
            }
            return true;
        }
        StoryTopic item = getItem(i10);
        Intent intent2 = FragmentWrapperActivity.intent(TopicTabFragment.class);
        intent2.putExtra("topic", JacksonUtils.writeAsString(item));
        if (item.topicId == 0) {
            Log.e("topic0problem : StoryTopicView open with error: " + item);
            return false;
        }
        if (getContext() instanceof NVActivity) {
            Context context = getContext();
            kotlin.jvm.internal.t.h(context, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            if (!((NVActivity) context).isGlobalInteractionScope()) {
                intent2.putExtra("__communityId", 0);
            }
        }
        intent2.putExtra(NVActivity.INTERACTION_SCOPE, true);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent2);
        ObjectItemClickListener objectItemClickListener2 = this.itemClickListener;
        if (objectItemClickListener2 != null) {
            objectItemClickListener2.onItemClick(item);
        }
        return true;
    }
}
