package com.narvii.master.explorer;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.model.Community;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.NVListView;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class CommunityListFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_list_with_search_base, viewGroup, false);
        if (viewInflate.findViewById(R.id.list_frame) != null) {
            viewInflate.setBackgroundColor(new PreferencesHelper(this).getMasterThemeColor());
        }
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return getBooleanParam("isTrending", false) ? "TrendingCommunities" : "AminoList";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setTitle(getStringParam("title"));
        View viewFindViewById = view.findViewById(R.id.search_layout_container);
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        marginLayoutParams.topMargin = actionBarOverlaySize;
        viewFindViewById.setLayoutParams(marginLayoutParams);
        view.findViewById(R.id.search_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.explorer.CommunityListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(CommunityListFragment.this, ActSemantic.pageEnter).area("Search").send();
                Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
                intent.putExtra("Source", "Explore Page Category");
                intent.putExtra("tab", "community");
                CommunityListFragment.this.startActivity(intent);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(NVListFragment.STATE_PRESSED, new ColorDrawable(872415231));
        stateListDrawable.addState(NVListFragment.STATE_FOCUSED, new ColorDrawable(872415231));
        stateListDrawable.addState(NVListFragment.STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setOverscrollStretchHeader(-16441039);
            ((NVListView) getListView()).setOverscrollStretchFooter(-16441039);
        }
        getListView().setOverScrollMode(2);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    class Adapter extends CommunityListAdapter {
        private boolean isTrendingCommunity;

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected int itemViewLayoutId() {
            return R.layout.item_community_summary;
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean showDivider() {
            return false;
        }

        public Adapter() {
            super(CommunityListFragment.this);
            this.source = "explore-category";
            this.loggingOrigin = LoggingOrigin.Explore;
            this.categoryName = CommunityListFragment.this.getStringParam("categoryName");
            this.isTrendingCommunity = CommunityListFragment.this.getBooleanParam("isTrending", false);
            if (this.isTrendingCommunity) {
                this.paginationType = 0;
            }
            addImpressionCollector(new LinearImpressionCollector(Community.class) { // from class: com.narvii.master.explorer.CommunityListFragment.Adapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.extraParam("collectionId", CommunityListFragment.this.getStringParam("id"));
                }
            });
        }

        @Override // com.narvii.master.explorer.CommunityListAdapter
        protected void completeBuilder(LogEvent.Builder builder) {
            super.completeBuilder(builder);
            builder.extraParam("collectionId", CommunityListFragment.this.getStringParam("id"));
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return CommunityListFragment.this.getBooleanParam("isTrending", false) ? "AminoList" : "SeeAllAminoList";
        }

        @Override // com.narvii.community.BaseCommunityListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof Community)) {
                return null;
            }
            View viewCreateView = createView(itemViewLayoutId(), viewGroup, view);
            configCommunityCard(viewCreateView, (Community) obj, null);
            View viewFindViewById = viewCreateView.findViewById(R.id.community_item);
            if (viewFindViewById != null && (viewFindViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).topMargin = 0;
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (this.isTrendingCommunity) {
                return new ApiRequest.Builder().path("/community/trending").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault()).build();
            }
            String stringParam = CommunityListFragment.this.getStringParam("id");
            if (TextUtils.isEmpty(stringParam)) {
                resetEmptyList();
                return null;
            }
            return new ApiRequest.Builder().path("community-collection/" + stringParam + "/communities").build();
        }
    }
}
