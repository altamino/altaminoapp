package com.narvii.master.home.story;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.editor.utils.MeisheUtils;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.home.profile.UserBlockHintRecyclerAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.state.PageStatusView;
import com.narvii.paging.storage.PageStorage;
import com.narvii.post.DraftManager;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.SubTypeStoryBaseListFragment;
import com.narvii.story.base.StoryDataSource;
import com.narvii.story.base.StoryListAdapter;
import com.narvii.story.base.StoryListAdapterKt;
import com.narvii.story.dialog.StoryCreationDialog;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.ACMAlertDialog;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PublishedStoryListFragment.kt */
/* loaded from: classes3.dex */
public final class PublishedStoryListFragment extends SubTypeStoryBaseListFragment {
    private HashMap _$_findViewCache;
    private boolean isMe;
    private boolean isUserBlock;
    private boolean showHeaderView;
    private String uid;

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Story";
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final boolean isMe() {
        return this.isMe;
    }

    public final void setMe(boolean z) {
        this.isMe = z;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.uid = getStringParam("id");
        this.isMe = Utils.isEqualsNotNull(getAccountService().getUserId(), this.uid);
        UserBlockService userBlockService = (UserBlockService) getService("block");
        String str = this.uid;
        boolean z = false;
        this.isUserBlock = str != null ? userBlockService.isBlocked(str) : false;
        if (this.isMe || (!getAccountService().hasAccount() && TextUtils.isEmpty(this.uid))) {
            z = true;
        }
        this.showHeaderView = z;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_posted_story_empty);
        setGlobalErrorView(R.layout.layout_top_error_view);
        setGlobalLoadingView(R.layout.layout_top_loading);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setDarkThemeColor((int) 4292334547L);
        }
        updateViews();
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this) { // from class: com.narvii.master.home.story.PublishedStoryListFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
            public boolean isListShow() {
                if (this.this$0.isUserBlock) {
                    return true;
                }
                return super.isListShow();
            }

            @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
            public boolean isEmpty() {
                if (this.this$0.isUserBlock) {
                    return false;
                }
                return super.isEmpty();
            }
        };
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this);
        recyclerViewColumnAdapter.setAdapter(new Adapter(this, this), 2);
        recyclerViewMergeAdapter.addAdapter(recyclerViewColumnAdapter);
        recyclerViewMergeAdapter.addAdapter(new UserBlockHintRecyclerAdapter(this, this.uid, this.isUserBlock));
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
        return new MyDataSource(nVContext);
    }

    /* compiled from: PublishedStoryListFragment.kt */
    public final class Adapter extends StoryListAdapter {
        final /* synthetic */ PublishedStoryListFragment this$0;

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Stories";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(PublishedStoryListFragment publishedStoryListFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = publishedStoryListFragment;
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            String str;
            if (this.this$0.isAdded() && notification != null) {
                if ((notification != null ? notification.obj : null) instanceof Blog) {
                    Object obj = notification.obj;
                    if (obj == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                    }
                    Blog blog = (Blog) obj;
                    PageStorage pageStorage = this.dataSource.getPageStorage();
                    List dataList = pageStorage != null ? pageStorage.getDataList() : null;
                    if (dataList != null) {
                        notification = StoryListAdapterKt.filterStoryNofication(dataList, blog, notification);
                    }
                }
                if (notification != null) {
                    if ((notification != null ? notification.obj : null) instanceof Blog) {
                        Object obj2 = notification.obj;
                        if (obj2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                        }
                        if (((Blog) obj2).ndcId == 0) {
                            if (obj2 == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                            }
                            Blog blog2 = (Blog) obj2;
                            if (Utils.isEqualsNotNull(getAccountService().getUserId(), blog2.uid()) && blog2.type == 9 && (str = notification.action) != null) {
                                int iHashCode = str.hashCode();
                                if (iHashCode == -1335458389) {
                                    if (str.equals("delete")) {
                                        editDataSource("delete", blog2);
                                        return;
                                    }
                                    return;
                                } else if (iHashCode == 108960) {
                                    if (str.equals("new")) {
                                        editDataSource("new", blog2);
                                        return;
                                    }
                                    return;
                                } else {
                                    if (iHashCode == 3108362 && str.equals("edit")) {
                                        editDataSource("update", blog2);
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    if ((notification != null ? notification.obj : null) instanceof StoryNotificationStub) {
                        Object obj3 = notification.obj;
                        if (obj3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.StoryNotificationStub");
                        }
                        Blog blog3 = ((StoryNotificationStub) obj3).story;
                        if (Utils.isEqualsNotNull(getAccountService().getUserId(), blog3.uid()) && blog3.type == 9) {
                            Object obj4 = notification.obj;
                            if (obj4 == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.StoryNotificationStub");
                            }
                            String str2 = ((StoryNotificationStub) obj4).action;
                            if (str2 == null) {
                                return;
                            }
                            switch (str2.hashCode()) {
                                case -1335458389:
                                    if (str2.equals("delete")) {
                                        editDataSource("delete", blog3);
                                        return;
                                    }
                                    return;
                                case -840143613:
                                    if (str2.equals(StoryNotificationStub.ACTION_UNVOTE)) {
                                        editDataSource("update", blog3);
                                        return;
                                    }
                                    return;
                                case 108960:
                                    if (str2.equals("new")) {
                                        editDataSource("new", blog3);
                                        return;
                                    }
                                    return;
                                case 3625706:
                                    if (str2.equals(StoryNotificationStub.ACTION_VOTE)) {
                                        editDataSource("update", blog3);
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        }
                        return;
                    }
                }
                super.onNotification(notification);
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Blog.class));
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void onHeaderViewClicked(View view) {
            this.this$0.onHeaderViewClicked(view);
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public View createHeaderView(ViewGroup parent) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_story_post_new_story, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…new_story, parent, false)");
            return viewInflate;
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public boolean showHeaderView() {
            return this.this$0.showHeaderView;
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            return this.this$0.new MyDataSource(nVContext);
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
            StoryHelper storyHelper = new StoryHelper(this);
            View viewFindViewById = view != null ? view.findViewById(R.id.img) : null;
            FragmentActivity activity = this.this$0.getActivity();
            storyHelper.openStoryDetailInCurActivity(activity != null ? activity.getSupportFragmentManager() : null, this.dataSource, blog, community, user, viewFindViewById, android.R.id.content, true, null);
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.this$0.isUserBlock) {
                return 0;
            }
            return super.getItemCount();
        }
    }

    /* compiled from: PublishedStoryListFragment.kt */
    public final class MyDataSource extends StoryDataSource {
        public MyDataSource(NVContext nVContext) {
            super(nVContext, null, 2, null);
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            if (PublishedStoryListFragment.this.getStringParam("id") == null) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/blog");
            builder.param("type", GlobalProfileFragment.KEY_USER);
            builder.param("q", PublishedStoryListFragment.this.getStringParam("id"));
            builder.param("blogType", 9);
            builder.param("v", 2);
            return builder.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        public List<Blog> filterResponseList(List<? extends Blog> list) {
            return new FilterHelper(getContext()).keepForLeaderAndCurator().filter(list);
        }
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public void onHeaderViewClicked(View view) {
        LogEvent.clickBuilder(this, ActSemantic.createStory).area("NewStory").send();
        if (!getAccountService().hasAccount()) {
            startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
            return;
        }
        if (Build.VERSION.SDK_INT < 21 || !MeisheUtils.isSupportMeishe() || !FFmpegJni.ffmpegInstalled) {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.av_not_supported);
            aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.master.home.story.PublishedStoryListFragment.onHeaderViewClicked.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    aCMAlertDialog.dismiss();
                }
            });
            aCMAlertDialog.show();
            return;
        }
        Object service = getService(EntryManager.ENTRY_DRAFT);
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"draft\")");
        if (((DraftManager) service).hasDraft("story")) {
            StoryCreationDialog storyCreationDialog = new StoryCreationDialog(this);
            storyCreationDialog.setOnClickListener(new StoryCreationDialog.OnClickListener() { // from class: com.narvii.master.home.story.PublishedStoryListFragment.onHeaderViewClicked.2
                @Override // com.narvii.story.dialog.StoryCreationDialog.OnClickListener
                public void onCreateNewClick(View v) {
                    Intrinsics.checkParameterIsNotNull(v, "v");
                    BlogPost blogPost = new BlogPost();
                    blogPost.type = 9;
                    Intent intent = new Intent(PublishedStoryListFragment.this.getContext(), (Class<?>) StoryPostActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
                    PublishedStoryListFragment.this.startActivity(intent);
                }

                @Override // com.narvii.story.dialog.StoryCreationDialog.OnClickListener
                public void onViewDraftClick(View v) {
                    Intrinsics.checkParameterIsNotNull(v, "v");
                    Intent intent = FragmentWrapperActivity.intent(DraftListFragment.class);
                    intent.putExtra("draftType", "story");
                    PublishedStoryListFragment.this.startActivity(intent);
                }
            });
            storyCreationDialog.show();
        } else {
            BlogPost blogPost = new BlogPost();
            blogPost.type = 9;
            Intent intent = new Intent(getContext(), (Class<?>) StoryPostActivity.class);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
            startActivity(intent);
        }
    }
}
