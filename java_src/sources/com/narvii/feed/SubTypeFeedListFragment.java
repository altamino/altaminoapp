package com.narvii.feed;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.ExternalSource;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;

/* JADX INFO: loaded from: classes6.dex */
public class SubTypeFeedListFragment extends FeedListFragment implements View.OnClickListener, ExternalChannelFilterFragment.FilterChangeListener {
    public static final String TYPE_BLOGS_RECENT = "blogs-recent";
    public static final String TYPE_EXTERNAL_POST = "external-posts-recent";
    public static final String TYPE_IMAGES_RECENT = "images-recent";
    public static final String TYPE_LINK_RECENT = "links-recent";
    public static final String TYPE_POLLS_RECENT = "polls-recent";
    public static final String TYPE_QUESTIONS_RECENT = "questions-recent";
    public static final String TYPE_QUIZZES_RECENT = "quizzes-recent";
    public static final String TYPE_STORIES_RECENT = "stories-recent";
    private View attachFragmentView;
    private int externaleSourceCount;
    private FeedAdapter feedAdapter;
    private View.OnClickListener menuListener = new View.OnClickListener() { // from class: com.narvii.feed.SubTypeFeedListFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SubTypeFeedListFragment.this.attachFragmentView == null) {
                return;
            }
            SubTypeFeedListFragment.this.showChannelFilter();
        }
    };
    private ExternalSource selectedExternalSource;
    private String selectedFilterChannelId;
    private String sourceName;

    private class FeedAdapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return BlogListResponse.class;
        }

        public FeedAdapter() {
            super(SubTypeFeedListFragment.this);
            this.source = SubTypeFeedListFragment.this.sourceName + " Feed";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath;
            boolean z10 = (TextUtils.isEmpty(SubTypeFeedListFragment.this.selectedFilterChannelId) || "all".equals(SubTypeFeedListFragment.this.selectedFilterChannelId)) ? false : true;
            if (SubTypeFeedListFragment.TYPE_EXTERNAL_POST.equals(SubTypeFeedListFragment.this.getStringParam("type")) && z10) {
                builderPath = ApiRequest.builder().path("/blog");
                builderPath.param("type", "external-source");
                builderPath.param("q", SubTypeFeedListFragment.this.selectedFilterChannelId);
            } else {
                ApiRequest.Builder builderPath2 = ApiRequest.builder().path("/blog");
                String stringParam = SubTypeFeedListFragment.this.getStringParam("type");
                if (!TextUtils.isEmpty(stringParam)) {
                    builderPath2.param("type", stringParam);
                }
                builderPath2.tag(z6 ? "start0" : null);
                builderPath = builderPath2;
            }
            return builderPath.build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i10) {
            if ("start0".equals(apiRequest.tag())) {
                SubTypeFeedListFragment.this.externaleSourceCount = ((BlogListResponse) listResponse).externalSourceCount;
                invalidateOptionsMenu();
            }
            super.onPageResponse(apiRequest, listResponse, i10);
        }
    }

    public void expand(final View view) {
        view.measure(-1, -1);
        int i10 = Utils.getScreenSize(getActivity()).y;
        if (i10 == 0) {
            view.setVisibility(0);
            return;
        }
        final int i11 = (int) (i10 * 0.8f);
        view.getLayoutParams().height = 1;
        view.setVisibility(0);
        Animation animation = new Animation() { // from class: com.narvii.feed.SubTypeFeedListFragment.2
            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                view.getLayoutParams().height = f == 1.0f ? -1 : (int) (i11 * f);
                view.requestLayout();
            }
        };
        animation.setDuration(200L);
        view.startAnimation(animation);
    }

    @Override // com.narvii.feed.FeedListFragment
    protected boolean optinAds() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChannelFilter() {
        View view = this.attachFragmentView;
        if (view != null) {
            view.setVisibility(view.getVisibility() == 0 ? 8 : 0);
        }
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        FeedAdapter feedAdapter = new FeedAdapter();
        this.feedAdapter = feedAdapter;
        return feedAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.feed.ExternalChannelFilterFragment.FilterChangeListener
    public void onFilterChanged(ExternalSource externalSource) {
        if (externalSource == null) {
            return;
        }
        if (Utils.isEqualsNotNull(this.selectedFilterChannelId, externalSource.id())) {
            this.attachFragmentView.setVisibility(8);
            return;
        }
        this.selectedExternalSource = externalSource;
        this.selectedFilterChannelId = externalSource.id();
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.resetList();
        }
        if (isEmbedFragment()) {
            invalidateOptionsMenu();
        } else {
            setTitle(this.selectedExternalSource == null ? getString(R.string.page_external_post) : externalSource.title);
        }
        this.attachFragmentView.setVisibility(8);
        ((StatisticsService) getService("statistics")).event("External Content Filtered").userPropInc("External Content Filtered Total");
    }

    public void collapse(final View view) {
        final int measuredHeight = view.getMeasuredHeight();
        Animation animation = new Animation() { // from class: com.narvii.feed.SubTypeFeedListFragment.3
            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                if (f == 1.0f) {
                    view.setVisibility(8);
                    return;
                }
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int i10 = measuredHeight;
                layoutParams.height = i10 - ((int) (i10 * f));
                view.requestLayout();
            }
        };
        animation.setDuration(200L);
        view.startAnimation(animation);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        View view;
        super.onActiveChanged(z6);
        if (!z6 && (view = this.attachFragmentView) != null) {
            view.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View view2;
        if (view.getId() == R.id.attach_fragment && (view2 = this.attachFragmentView) != null) {
            view2.setVisibility(8);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (!TextUtils.isEmpty(getStringParam("title"))) {
            setTitle(getStringParam("title"));
        }
        if (bundle == null) {
            String stringParam = getStringParam("type");
            if (TYPE_BLOGS_RECENT.equals(stringParam)) {
                str = "Blogs";
            } else if (TYPE_POLLS_RECENT.equals(stringParam)) {
                str = "Polls";
            } else if (TYPE_QUESTIONS_RECENT.equals(stringParam)) {
                str = "Questions";
            } else if (TYPE_IMAGES_RECENT.equals(stringParam)) {
                str = "Image Posts";
            } else if (TYPE_LINK_RECENT.equals(stringParam)) {
                str = "Link Posts";
            } else if (TYPE_EXTERNAL_POST.equals(stringParam)) {
                str = "External Content";
            } else if (TYPE_STORIES_RECENT.equals(stringParam)) {
                str = "Stories";
            } else {
                str = null;
            }
            if (str != null) {
                this.sourceName = str;
                ((StatisticsService) getService("statistics")).event(str + " Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc(str + " Page Opened Total");
            }
        }
        if (bundle != null) {
            this.selectedFilterChannelId = bundle.getString("selectedFilterChannelId");
            this.selectedExternalSource = (ExternalSource) JacksonUtils.readAs(bundle.getString("selectedSource"), ExternalSource.class);
        }
        if (TYPE_EXTERNAL_POST.equals(getStringParam("type"))) {
            if (bundle == null) {
                FragmentManager childFragmentManager = getChildFragmentManager();
                ExternalChannelFilterFragment externalChannelFilterFragment = new ExternalChannelFilterFragment();
                externalChannelFilterFragment.setFilterChangeListener(this);
                childFragmentManager.q().c(R.id.attach_fragment, externalChannelFilterFragment, "channelFilter").k();
            }
            setHasOptionsMenu(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        int i10 = R.layout.rss_channel_menu_filter;
        MenuItem menuItemAdd = menu.add(0, R.layout.rss_channel_menu_filter, 0, R.string.rss_channel_filter_all);
        if (!isEmbedFragment()) {
            i10 = R.layout.rss_channel_menu_filter_btn;
        }
        MenuItem showAsActionFlags = menuItemAdd.setActionView(i10).setShowAsActionFlags(2);
        showAsActionFlags.getActionView().setTag(R.id.embed_menu_scale, Float.valueOf(0.85f));
        if (!isEmbedFragment()) {
            showAsActionFlags.getActionView().setOnClickListener(this.menuListener);
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sub_feed_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.layout.rss_channel_menu_filter) {
            showChannelFilter();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        String string;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.layout.rss_channel_menu_filter);
        int i10 = 0;
        if (this.externaleSourceCount != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
        View actionView = menu.findItem(R.layout.rss_channel_menu_filter).getActionView();
        ExternalSource externalSource = this.selectedExternalSource;
        if (externalSource == null) {
            string = getString(R.string.rss_channel_filter_all);
        } else {
            string = externalSource.title;
        }
        TextView textView = (TextView) actionView.findViewById(R.id.text);
        if (!isEmbedFragment()) {
            string = null;
        }
        textView.setText(string);
        TextView textView2 = (TextView) actionView.findViewById(R.id.text);
        if (!isEmbedFragment()) {
            i10 = 8;
        }
        textView2.setVisibility(i10);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selectedFilterChannelId", this.selectedFilterChannelId);
        bundle.putString("selectedSource", JacksonUtils.writeAsString(this.selectedExternalSource));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int dimensionPixelSize;
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.attach_fragment);
        this.attachFragmentView = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        if (isEmbedFragment()) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.home_tab_bar_height) + getResources().getDimensionPixelOffset(R.dimen.channel_menu_filter_height);
        } else {
            dimensionPixelSize = 0;
        }
        this.attachFragmentView.setPadding(0, dimensionPixelSize, 0, 0);
    }
}
