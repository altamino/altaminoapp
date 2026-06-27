package com.narvii.feed.list;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.comment.CommentHelper;
import com.narvii.community.CommunityHelper;
import com.narvii.feed.list.viewholder.StoryItemViewHolder;
import com.narvii.feed.list.viewholder.UnKnownTypeViewHolder;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.api.BlogListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.storage.PageStorage;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import java.util.ArrayList;
import java.util.HashSet;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: FeedAdapter.kt */
/* loaded from: classes2.dex */
public abstract class FeedAdapter extends PagingRecyclerViewAdapter<Blog, BlogListResponse> implements NotificationListener {
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_STORY = 1;
    public static final int TYPE_UNKNOWN = 0;
    private final AccountService accountService;
    private HashSet<String> progressList;
    private final PushNotificationHelper pushNotificationHelper;

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    public FeedAdapter(NVContext nVContext) {
        super(nVContext);
        NVContext context = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        this.pushNotificationHelper = new PushNotificationHelper(context);
        Object service = this.context.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "context.getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
    }

    /* compiled from: FeedAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    protected final HashSet<String> getProgressList() {
        return this.progressList;
    }

    protected final void setProgressList(HashSet<String> hashSet) {
        this.progressList = hashSet;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification != null ? notification.obj : null) instanceof Blog) {
            String str = notification.action;
            Object obj = notification.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
            }
            editDataSource(str, (Blog) obj);
        }
        if (!((notification != null ? notification.obj : null) instanceof Comment) || this.dataSource.getPageStorage() == null) {
            return;
        }
        String str2 = notification.action;
        if (str2 == "new" || str2 == "delete") {
            boolean z = false;
            PageStorage pageStorage = this.dataSource.getPageStorage();
            if (pageStorage == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            for (Blog blog : pageStorage.getDataList()) {
                if (Utils.isEqualsNotNull(notification.parentId, blog.id()) && ((blog instanceof Blog) || (blog instanceof Item))) {
                    Object obj2 = notification.obj;
                    if (obj2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Comment");
                    }
                    CommentHelper.updateFeedWithComment(blog, (Comment) obj2, notification.action);
                    z = true;
                }
            }
            if (z) {
                notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        if (i == 1) {
            View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_feed_story, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return new StoryItemViewHolder(this, cell);
        }
        View cell2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.feed_blog_unknown, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell2, "cell");
        return new UnKnownTypeViewHolder(this, cell2);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof StoryItemViewHolder) {
            Blog item = getItem(i);
            ((StoryItemViewHolder) holder).bindBlog(isDarkTheme(), item, this.progressList);
            if (item == null || holder.itemView == null) {
                return;
            }
            NVVideoListDelegate.markVideoCell(holder.itemView, R.id.image, item.isContentAccessible() ? item.getPreviewVideoList(false) : new ArrayList<>(), (item.getFeedPreviewMediaList() == null || item.getFeedPreviewMediaList().size() <= 0) ? null : item.getFeedPreviewMediaList().get(0), (NVObject) item, 1, false);
            return;
        }
        if (holder instanceof UnKnownTypeViewHolder) {
            ((UnKnownTypeViewHolder) holder).bindBlog(isDarkTheme(), getItem(i));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i) {
        return getItem(i).type != 9 ? 0 : 1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, final Object obj, View view, View view2) {
        if (!(obj instanceof Feed)) {
            return true;
        }
        if (view2 != null) {
            switch (view2.getId()) {
                case R.id.feed_toolbar_comment /* 2131297362 */:
                    logClickEvent(obj, ActSemantic.checkComment);
                    Feed feed = (Feed) obj;
                    startActivity(CommentHelper.getCommentIntent(this.context, feed, false));
                    if (feed.getTotalCommentsCount() == 0) {
                        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
                        break;
                    }
                    break;
                case R.id.feed_toolbar_vote /* 2131297367 */:
                    if (this.accountService.hasAccount()) {
                        vote((Feed) obj, null);
                        break;
                    } else {
                        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://login")));
                        break;
                    }
                case R.id.headline_feed_options /* 2131297534 */:
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.list.FeedAdapter.onItemClick.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            FeedAdapter.this.logClickEvent(obj, ActSemantic.flag);
                            new FlagReportOptionDialog.Builder(((NVRecyclerViewBaseAdapter) FeedAdapter.this).context).nvObject((NVObject) obj).build().show();
                        }
                    });
                    actionSheetDialog.show();
                    return true;
                case R.id.image /* 2131297649 */:
                    if ((obj instanceof Blog) && ((Blog) obj).type == 9) {
                        showStoryDetailPage((Feed) obj, view2);
                        return true;
                    }
                    break;
                case R.id.user_click /* 2131299346 */:
                    Feed feed2 = (Feed) obj;
                    logClickEvent(feed2.author, ActSemantic.checkDetail);
                    CommunityHelper communityHelper = new CommunityHelper(this.context);
                    int i2 = feed2.ndcId;
                    if (i2 == 0 || communityHelper.checkCommunityJoined(i2, null)) {
                        Intent intent = UserProfileFragment.intent(this.context, feed2.author);
                        if (intent != null) {
                            intent.putExtra("__communityId", feed2.ndcId);
                        }
                        startActivity(intent);
                    }
                    return true;
            }
        } else {
            openFeedDetailPage((Feed) obj, view);
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    public final void openFeedDetailPage(Feed feed, View view) {
        if ((feed instanceof Blog) && ((Blog) feed).type == 9) {
            showStoryDetailPage(feed, view);
        }
    }

    public void showStoryDetailPage(Feed feed, View view) {
        View viewFindViewById;
        logClickEvent(feed, ActSemantic.checkDetail);
        StoryHelper storyHelper = new StoryHelper(this);
        Intent intentBuild = new StoryListFragment.IntentBuilder(feed).topicId(0).source(StoryApi.DISCOVER_PLAYER).build();
        if (view != null && (viewFindViewById = view.findViewById(R.id.image)) != null) {
            view = viewFindViewById;
        }
        storyHelper.openStoryDetailPageInAnotherActivity(view, intentBuild);
    }

    public final void vote(final Feed feed, Integer num) {
        String strId;
        HashSet<String> hashSet;
        HashSet<String> hashSet2;
        if ((feed != null ? feed.id() : null) != null && (hashSet2 = this.progressList) != null) {
            Boolean boolValueOf = hashSet2 != null ? Boolean.valueOf(hashSet2.contains(feed.id())) : null;
            if (boolValueOf == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (boolValueOf.booleanValue()) {
                return;
            }
        }
        int targetVotedValue = VoteHelper.getTargetVotedValue(num, feed, true);
        if (num == null && targetVotedValue == 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.unlike, true);
            actionSheetDialog.addItem(R.string.comment_all_likes, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.list.FeedAdapter.vote.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        FeedAdapter.this.vote(feed, 0);
                    } else {
                        if (i != 1) {
                            return;
                        }
                        Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                        intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                        FeedAdapter.this.startActivity(intent);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        logClickEvent(feed, targetVotedValue == 0 ? ActSemantic.dislike : ActSemantic.like);
        new VoteHelper(this).vote(feed, Integer.valueOf(targetVotedValue), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.feed.list.FeedAdapter.vote.2
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z) {
                HashSet<String> progressList = FeedAdapter.this.getProgressList();
                if (progressList != null) {
                    Feed feed2 = feed;
                    String strId2 = feed2 != null ? feed2.id() : null;
                    if (progressList == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
                    }
                    TypeIntrinsics.asMutableCollection(progressList).remove(strId2);
                }
                FeedAdapter.this.notifyDataSetChanged();
            }
        });
        if (this.progressList == null) {
            this.progressList = new HashSet<>();
        }
        if (feed != null && (strId = feed.id()) != null && (hashSet = this.progressList) != null) {
            hashSet.add(strId);
        }
        notifyDataSetChanged();
    }
}
