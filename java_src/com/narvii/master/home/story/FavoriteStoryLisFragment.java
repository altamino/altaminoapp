package com.narvii.master.home.story;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.master.home.discover.DiscoverStoryFeedListFragment;
import com.narvii.model.Blog;
import com.narvii.model.api.BlogListResponse;
import com.narvii.notification.Notification;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.SubTypeStoryBaseListFragment;
import com.narvii.story.base.StoryDataSource;
import com.narvii.util.FilterHelper;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FavoriteStoryLisFragment.kt */
/* loaded from: classes3.dex */
public final class FavoriteStoryLisFragment extends SubTypeStoryBaseListFragment {
    private HashMap _$_findViewCache;
    private final ArrayList<Notification> pendingNotifications = new ArrayList<>();

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
        return "Likes";
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    protected String getStoryListAreaName() {
        return "Likes";
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.liked_stories);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ConfigService config = (ConfigService) getService("config");
        Intrinsics.checkExpressionValueIsNotNull(config, "config");
        view.setBackgroundColor(config.getTheme().colorPrimary());
        setGlobalEmptyView(R.layout.layout_favorite_story_empty).findViewById(R.id.empty_icon).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.story.FavoriteStoryLisFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FavoriteStoryLisFragment.this.startActivity(FragmentWrapperActivity.intent(DiscoverStoryFeedListFragment.class));
            }
        });
        updateViews();
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
        return new MyDataSource(nVContext);
    }

    /* compiled from: FavoriteStoryLisFragment.kt */
    public final class MyDataSource extends StoryDataSource {
        public MyDataSource(NVContext nVContext) {
            super(nVContext, null, 2, null);
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            if (!FavoriteStoryLisFragment.this.getAccountService().hasAccount()) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/blog");
            builder.param("type", "user-liked");
            builder.param("v", 2);
            builder.param("q", FavoriteStoryLisFragment.this.getAccountService().getUserId());
            builder.param("blogType", 9);
            return builder.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        public List<Blog> filterResponseList(List<? extends Blog> list) {
            return new FilterHelper(getContext()).keepForLeaderAndCurator().filter(list);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (!z || this.pendingNotifications.size() <= 0) {
            return;
        }
        Iterator<Notification> it = this.pendingNotifications.iterator();
        while (it.hasNext()) {
            Notification next = it.next();
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
            if (nVRecyclerViewBaseAdapter == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.adapter.PagingRecyclerViewAdapter<com.narvii.model.Blog, com.narvii.model.api.BlogListResponse>");
            }
            onAdapterNotification((PagingRecyclerViewAdapter) nVRecyclerViewBaseAdapter, next);
        }
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public void onAdapterNotification(PagingRecyclerViewAdapter<Blog, BlogListResponse> adapter, Notification notification) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        if (isAdded() && getAccountService().hasAccount()) {
            if ((notification != null ? notification.obj : null) instanceof StoryNotificationStub) {
                Object obj = notification.obj;
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.StoryNotificationStub");
                }
                StoryNotificationStub storyNotificationStub = (StoryNotificationStub) obj;
                if (isActive()) {
                    String str = storyNotificationStub.action;
                    if (str != null) {
                        int iHashCode = str.hashCode();
                        if (iHashCode != -840143613) {
                            if (iHashCode == 3625706 && str.equals(StoryNotificationStub.ACTION_VOTE)) {
                                adapter.editDataSource("new", storyNotificationStub.story);
                            }
                        } else if (str.equals(StoryNotificationStub.ACTION_UNVOTE)) {
                            adapter.editDataSource("delete", storyNotificationStub.story);
                        }
                    }
                } else {
                    this.pendingNotifications.add(notification);
                }
                updateViews();
            }
        }
    }
}
