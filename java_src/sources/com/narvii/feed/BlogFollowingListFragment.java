package com.narvii.feed;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class BlogFollowingListFragment extends NVListFragment {

    private static class Adapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            AccountService accountService = (AccountService) getService("account");
            if (accountService == null || !accountService.hasAccount()) {
                return;
            }
            super.onAttach();
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.paginationType = 1;
            this.source = "Following Feed";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/feed/blog-following").param("v", 2).build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return OptinAdsUtil.setupAdapter(this, new Adapter(this), getString(R.string.mopub_unitid_mrec_feed), true);
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (isRootFragment()) {
            setTitle(R.string.main_featured_title_following);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setHasOptionsMenu(false);
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Following Feed Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Following Feed Page Opened Total");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (isRootFragment()) {
            menu.add(0, R.string.refresh, 0, R.string.refresh).setIcon(new ActionBarIcon(getActivity(), R.string.fa_repeat)).setShowAsAction(2);
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.following_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.news_feed_from_friends_empty_view);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.refresh) {
            smoothScrollToTop();
            ((FeedListAdapter) getListAdapter()).refresh(0, null);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AccountService accountService = (AccountService) getService("account");
        View viewFindViewById = view.findViewById(R.id.follow_login_layout);
        Button button = (Button) view.findViewById(R.id.follow_login);
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[2] = (float) (((double) fArr[2]) * 0.8d);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(Color.HSVToColor(fArr)));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(iColorPrimary));
        button.setBackground(stateListDrawable);
        if (!accountService.hasAccount()) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.BlogFollowingListFragment.1
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
                    intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(BlogFollowingListFragment.this, intent);
                }
            });
        }
    }
}
