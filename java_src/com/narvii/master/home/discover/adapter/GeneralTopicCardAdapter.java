package com.narvii.master.home.discover.adapter;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GeneralTopicCardAdapter.kt */
/* loaded from: classes3.dex */
public abstract class GeneralTopicCardAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_TOPIC_SIZE = 20;
    private static final int MORE_TYPE = 1;
    private static final String TAG = "GeneralTopicCard";
    private static final int TOPIC_CARD_TYPE = 0;
    private final NVContext ctx;
    private ObjectItemClickListener itemClickListener;
    private final ContentModule module;

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    public boolean showSubscribeTag() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralTopicCardAdapter(NVContext ctx, ContentModule module) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.ctx = ctx;
        this.module = module;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final ContentModule getModule() {
        return this.module;
    }

    public final ObjectItemClickListener getItemClickListener() {
        return this.itemClickListener;
    }

    public final void setItemClickListener(ObjectItemClickListener objectItemClickListener) {
        this.itemClickListener = objectItemClickListener;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (Intrinsics.areEqual(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS)) {
            return Math.min(super.getItemCount(), 20);
        }
        if (super.getItemCount() >= 20) {
            return 21;
        }
        return super.getItemCount();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        if (i == 1) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_module_more, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…dule_more, parent, false)");
            return new MoreViewHolder(this, viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(getContext()).inflate(R.layout.item_cell_topic_module_related, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate2, "LayoutInflater.from(getC…e_related, parent, false)");
        return new TopicCardViewHolder(this, viewInflate2);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof TopicCardViewHolder) {
            TopicCardViewHolder topicCardViewHolder = (TopicCardViewHolder) holder;
            topicCardViewHolder.getGeneralTopicCard().setShownSubscribeTag(showSubscribeTag());
            topicCardViewHolder.getGeneralTopicCard().setTopic(getItem(i));
            LogUtils.setAttachedObject(holder.itemView, getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i) {
        return (!Intrinsics.areEqual(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) && i == 20) ? 1 : 0;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        if (Intrinsics.areEqual(this.module.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) || i < 20) {
            StoryTopic item = getItem(i);
            Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
            intent.putExtra("topic", JacksonUtils.writeAsString(item));
            if (item.topicId == 0) {
                Log.e("topic0problem : StoryTopicView open with error: " + item);
                return false;
            }
            if (getContext() instanceof NVActivity) {
                Context context = getContext();
                if (context == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
                }
                if (!((NVActivity) context).isGlobalInteractionScope()) {
                    intent.putExtra("__communityId", 0);
                }
            }
            intent.putExtra(NVActivity.INTERACTION_SCOPE, true);
            getContext().startActivity(intent);
            ObjectItemClickListener objectItemClickListener = this.itemClickListener;
            if (objectItemClickListener != null) {
                objectItemClickListener.onItemClick(item);
            }
            return true;
        }
        ObjectItemClickListener objectItemClickListener2 = this.itemClickListener;
        if (objectItemClickListener2 != null) {
            objectItemClickListener2.onItemClick(null);
        }
        if (Intrinsics.areEqual(this.module.moduleType, ContentModule.TYPE_BOOKMARKED_TOPICS)) {
            this.ctx.startActivity(FragmentWrapperActivity.intent(AggregationTopicFragment.class));
        } else {
            Intent intent2 = FragmentWrapperActivity.intent(TopicListFragment.class);
            intent2.putExtra("KEY_TITLE", this.module.displayName);
            intent2.putExtra("KEY_PATH", this.module.dataUrl);
            intent2.putExtra("_module", JacksonUtils.writeAsString(this.module));
            this.ctx.startActivity(intent2);
        }
        return true;
    }

    /* compiled from: GeneralTopicCardAdapter.kt */
    private final class TopicCardViewHolder extends BaseViewHolder {
        private final GeneralTopicCard generalTopicCard;
        final /* synthetic */ GeneralTopicCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicCardViewHolder(GeneralTopicCardAdapter generalTopicCardAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = generalTopicCardAdapter;
            GeneralTopicCard generalTopicCard = (GeneralTopicCard) itemView.findViewById(com.narvii.amino.R.id.story_topic_card_view);
            Intrinsics.checkExpressionValueIsNotNull(generalTopicCard, "itemView.story_topic_card_view");
            this.generalTopicCard = generalTopicCard;
            this.generalTopicCard.setShownOnlineInfo(true);
            this.generalTopicCard.setOnClickListener(generalTopicCardAdapter.subviewClickListener);
        }

        public final GeneralTopicCard getGeneralTopicCard() {
            return this.generalTopicCard;
        }
    }

    /* compiled from: GeneralTopicCardAdapter.kt */
    private final class MoreViewHolder extends BaseViewHolder {
        final /* synthetic */ GeneralTopicCardAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MoreViewHolder(GeneralTopicCardAdapter generalTopicCardAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = generalTopicCardAdapter;
            itemView.setOnClickListener(generalTopicCardAdapter.subviewClickListener);
        }
    }

    /* compiled from: GeneralTopicCardAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
