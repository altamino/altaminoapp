package com.narvii.feed;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
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
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class BlogFollowingListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.following_list_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (isRootFragment()) {
            setTitle(R.string.main_featured_title_following);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setHasOptionsMenu(false);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (isRootFragment()) {
            menu.add(0, R.string.refresh, 0, R.string.refresh).setIcon(new ActionBarIcon(getActivity(), R.string.fa_repeat)).setShowAsAction(2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.refresh) {
            smoothScrollToTop();
            ((FeedListAdapter) getListAdapter()).refresh(0, null);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        AccountService accountService = (AccountService) getService("account");
        View viewFindViewById = view.findViewById(R.id.follow_login_layout);
        Button button = (Button) view.findViewById(R.id.follow_login);
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        float[] fArr = {0.0f, 0.0f, (float) (d * 0.8d)};
        Color.colorToHSV(iColorPrimary, fArr);
        double d = fArr[2];
        Double.isNaN(d);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, new ColorDrawable(Color.HSVToColor(fArr)));
        stateListDrawable.addState(StateSet.WILD_CARD, new ColorDrawable(iColorPrimary));
        if (Build.VERSION.SDK_INT >= 16) {
            button.setBackground(stateListDrawable);
        } else {
            button.setBackgroundDrawable(stateListDrawable);
        }
        if (accountService.hasAccount()) {
            return;
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.BlogFollowingListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
                    intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
                    BlogFollowingListFragment.this.startActivity(intent);
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.news_feed_from_friends_empty_view);
    }

    private static class Adapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            AccountService accountService = (AccountService) getService("account");
            if (accountService != null && accountService.hasAccount()) {
                super.onAttach();
            }
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.paginationType = 1;
            this.source = "Following Feed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/feed/blog-following").param("v", 2).build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }
}
