package com.narvii.story;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.CommentHelper;
import com.narvii.community.CommunityHelper;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.story.StoryListFragment;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class StoryListAdapter extends NVPagedAdapter<Blog, BlogListResponse> implements NotificationListener {
    private final CommunityHelper communityHelper;
    Map<Integer, Community> communityInfoMapping;
    ContentLanguageService languageService;
    protected String playerSource;
    private StoryHelper storyHelper;
    int topId;
    String type;
    Map<Integer, User> userInfoMapping;

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "StoryList";
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    protected void onFirstStoryPageBecomeVisible() {
    }

    protected boolean showCommentBarInDetailPage() {
        return false;
    }

    protected boolean showSearchButtonInDetailPage() {
        return true;
    }

    public StoryListAdapter(NVContext nVContext, int i, String str) {
        super(nVContext);
        this.communityInfoMapping = new HashMap();
        this.userInfoMapping = new HashMap();
        this.paginationType = 1;
        this.topId = i;
        this.type = str;
        this.playerSource = StoryApi.TOPIC_PLAYER;
        this.languageService = (ContentLanguageService) getService("content_language");
        this.communityHelper = new CommunityHelper(nVContext);
        this.storyHelper = new StoryHelper(nVContext);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new DivideColumnImpressionCollector(Blog.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Blog> dataType() {
        return Blog.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends BlogListResponse> responseType() {
        return BlogListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("topic/" + this.topId + "/feed/story");
        builder.param("type", this.type);
        builder.param("v", StoryApi.STORY_VERSION);
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault());
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, BlogListResponse blogListResponse, int i) {
        boolean zIsEmpty = isEmpty();
        super.onPageResponse(apiRequest, (ApiRequest) blogListResponse, i);
        if (zIsEmpty && !isEmpty()) {
            onFirstStoryPageBecomeVisible();
        }
        Map<Integer, Community> map = blogListResponse.communityInfoMapping;
        if (map != null) {
            this.communityInfoMapping.putAll(map);
        }
        Map<Integer, User> map2 = blogListResponse.userProfileMapping;
        if (map2 != null) {
            this.userInfoMapping.putAll(map2);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Blog) {
            logClickEvent(obj, ActSemantic.checkDetail);
            showStoryListFragment(view, (Blog) obj);
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    protected void showStoryListFragment(View view, Blog blog) {
        this.storyHelper.openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(true).initFeedCommunity(getCommunityInfo(blog.ndcId)).showCommentBar(showCommentBarInDetailPage()).topicId(this.topId).source(this.playerSource).initFeedUser(getUserInfo(blog.ndcId)).build());
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        super.resetList();
        this.communityInfoMapping.clear();
        this.userInfoMapping.clear();
    }

    protected Community getCommunityInfo(int i) {
        return this.communityInfoMapping.get(Integer.valueOf(i));
    }

    protected User getUserInfo(int i) {
        return this.userInfoMapping.get(Integer.valueOf(i));
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof Blog)) {
            return null;
        }
        Blog blog = (Blog) obj;
        View viewCreateView = createView(R.layout.item_cell_story_with_author, viewGroup, view);
        StoryCardView storyCardView = (StoryCardView) viewCreateView.findViewById(R.id.story_layout);
        storyCardView.setStory(blog);
        storyCardView.setOnClickListener(this.subviewClickListener);
        if (blog.isContentAccessible()) {
            NVVideoListDelegate.markVideoCell(viewCreateView, R.id.img, blog.getPreviewVideoList(false), (Media) null, (NVObject) blog, 1, true);
        }
        return viewCreateView;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        String str;
        boolean z = false;
        if ((notification.obj instanceof Blog) && notification.action == "update") {
            editList(notification, false);
            return;
        }
        if ((notification.obj instanceof Comment) && ((str = notification.action) == "new" || str == "delete")) {
            for (Blog blog : rawList()) {
                if (Utils.isEqualsNotNull(notification.parentId, blog.id()) && (blog instanceof Blog)) {
                    CommentHelper.updateFeedWithComment(blog, (Comment) notification.obj, notification.action);
                    z = true;
                }
            }
            if (z) {
                notifyDataSetChanged();
                return;
            }
            return;
        }
        if ((notification.obj instanceof User) && "update" == notification.action) {
            for (Blog blog2 : rawList()) {
                if (blog2 instanceof Feed) {
                    Blog blog3 = blog2;
                    if (((User) notification.obj).isSameUser(blog3.author)) {
                        blog3.author = (User) notification.obj;
                        z = true;
                    }
                }
            }
            if (z) {
                notifyDataSetChanged();
            }
        }
    }
}
