package com.narvii.leaderboard;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.leaderboard.LeaderBoardShareHelper;
import com.narvii.leaderboard.share.LeaderBoardShareFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class CheckinRegionFragment extends NVListFragment {
    public static final String KEY_MAX = "max_streak";
    public static final String KEY_MIN = "min_streak";
    public static final String KEY_TITLE = "title";
    protected NVImageView backgroundImageView;
    private String curUId;
    private int maxStreak;
    private int minStreak;
    private View shareActionbarMask;
    private String title;
    TextView tvTitle;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.minStreak = getIntParam(KEY_MIN);
        this.maxStreak = getIntParam(KEY_MAX);
        this.title = getStringParam("title");
        if (bundle != null) {
            this.minStreak = bundle.getInt(KEY_MIN, 0);
            this.maxStreak = bundle.getInt(KEY_MAX, 0);
            this.maxStreak = bundle.getInt("title", 0);
        }
        this.curUId = ((AccountService) getService("account")).getUserProfile().uid();
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_checkin_region_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.backgroundImageView = (FullsizeImageView) view.findViewById(R.id.list_bg);
        this.shareActionbarMask = view.findViewById(R.id.actionbar_share_mask);
        this.tvTitle = (TextView) view.findViewById(R.id.checkin_streak_title);
        this.tvTitle.setPadding(0, getStatusBarOverlaySize() + ((int) Utils.dpToPx(getContext(), 12.0f)), 0, 0);
        updateView();
        ListView listView = getListView();
        listView.setDivider(new ColorDrawable(820372965));
        listView.setDividerHeight((int) Utils.dpToPx(getContext(), 1.0f));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            shareCheckinRegion();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void shareCheckinRegion() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        LeaderBoardShareHelper leaderBoardShareHelper = new LeaderBoardShareHelper(this);
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        View view = this.shareActionbarMask;
        if (view != null) {
            view.setVisibility(0);
        }
        leaderBoardShareHelper.saveLeaderBoardBackGround(getActivity(), R.id.list_frame, community, new LeaderBoardShareHelper.SaveCallBack() { // from class: com.narvii.leaderboard.CheckinRegionFragment.1
            @Override // com.narvii.leaderboard.LeaderBoardShareHelper.SaveCallBack
            public void onSaved() {
                if (progressDialog.isShowing() && CheckinRegionFragment.this.isAdded()) {
                    progressDialog.dismiss();
                }
                new ShareDarkRoomHelper(CheckinRegionFragment.this).saveDynamicThemeBg(CheckinRegionFragment.this.getActivity());
                Intent intent = FragmentWrapperActivity.intent(LeaderBoardShareFragment.class);
                intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "Leaderboard");
                intent.putExtra(LeaderBoardShareFragment.KEY_STATISTIC_TAB, "Check In");
                CheckinRegionFragment.this.startActivity(intent);
            }
        });
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    private void updateView() {
        setTitle(this.title);
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setText(this.title);
        }
        NVImageView nVImageView = this.backgroundImageView;
        if (nVImageView != null) {
            nVImageView.setImageDrawable(new LeaderBoardHelper(this).getDynamicThemeBg());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_MIN, this.minStreak);
        bundle.putInt(KEY_MAX, this.minStreak);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        View view = this.shareActionbarMask;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new UserAdapter(), true);
        return mergeAdapter;
    }

    class UserAdapter extends UserListAdapter {
        @Override // com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.item_user_with_checkin;
        }

        public UserAdapter() {
            super(CheckinRegionFragment.this);
            setDarkTheme(true);
            this.source = "Leaderboard";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "check-in");
            builderPath.param("minStreak", Integer.valueOf(CheckinRegionFragment.this.minStreak));
            builderPath.param("maxStreak", Integer.valueOf(CheckinRegionFragment.this.maxStreak));
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            if (obj instanceof User) {
                ((TextView) itemView.findViewById(R.id.check_in_days)).setText("" + ((User) obj).consecutiveCheckInDays);
            }
            return itemView;
        }
    }
}
