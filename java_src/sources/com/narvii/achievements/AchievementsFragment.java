package com.narvii.achievements;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.checkin.CheckInHistoryAdapter;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.HeaderAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.ranking.RankingService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.stats.StatsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.SlideshowView;
import com.safedk.android.utils.Logger;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class AchievementsFragment extends ProfileDarkFragment {
    static final DetailAdapter.CellType ACHIEVEMENTS = new DetailAdapter.CellType("achievement", false);
    public AchievementAdapter achievementAdapter;
    private CheckInHistoryAdapter checkInHistoryAdapter;
    private CircleAdapter circleAdapter;
    CommunityConfigHelper communityConfigHelper;
    public boolean isRankingEnabled;
    List<Media> mediaList;
    private MergeAdapter mergeAdapter;
    NumberFormat numberFormat;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.achievements.AchievementsFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Constants.ACTION_STREAK_REPAIR_CHANGED.equals(intent.getAction()) && AchievementsFragment.this.checkInHistoryAdapter != null && AchievementsFragment.this.isMe()) {
                if (intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, 0) == ((ConfigService) AchievementsFragment.this.getService("config")).getCommunityId()) {
                    AchievementsFragment.this.checkInHistoryAdapter.refresh(0, null);
                }
            }
        }
    };
    User user;

    class AchievementAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public AchievementAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            AchievementsFragment achievementsFragment = AchievementsFragment.this;
            return (achievementsFragment.user != null && achievementsFragment.isRankingEnabled && achievementsFragment.mergeAdapter.errorMessage() == null) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.layout_achievements_top, viewGroup, view);
            RankingService rankingService = (RankingService) getService(Module.MODULE_RANKING);
            ((ImageView) viewCreateView.findViewById(R.id.badge)).setImageDrawable(rankingService.getBadge(AchievementsFragment.this.user.level));
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(rankingService.getTitle(AchievementsFragment.this.user.level));
            TextView textView = (TextView) viewCreateView.findViewById(R.id.see_all_ranks);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText().toString());
            spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.achievements.AchievementsFragment.AchievementAdapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = FragmentWrapperActivity.intent(AllRanksFragment.class);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Achievements Page");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(AchievementAdapter.this, intent);
                }
            });
            textView.setText(spannableStringBuilder);
            RankingTitleView rankingTitleView = (RankingTitleView) viewCreateView.findViewById(R.id.ranking_title);
            rankingTitleView.setOthersCanSeeProgress(true);
            rankingTitleView.setUser(AchievementsFragment.this.user, this);
            return viewCreateView;
        }
    }

    class CheckInHistoryHeaderAdapter extends HeaderAdapter {
        public CheckInHistoryHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.HeaderAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.attachedAdapter;
            return ((nVAdapter instanceof CheckInHistoryAdapter) && ((CheckInHistoryAdapter) nVAdapter).isDataGot()) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.check_in_history_header, viewGroup, view);
        }
    }

    class CircleAdapter extends DetailAdapter<AchievementsItem, AchievementsResponse> {
        AchievementsItem achievementsItem;

        @Override // com.narvii.detail.DetailAdapter
        public Class objectType() {
            return AchievementsItem.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class responseType() {
            return AchievementsResponse.class;
        }

        public CircleAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List list) {
            if (this.achievementsItem != null) {
                list.add(AchievementsFragment.ACHIEVEMENTS);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj != AchievementsFragment.ACHIEVEMENTS) {
                return super.getCell(obj, view, viewGroup);
            }
            View viewCreateView = createView(R.layout.layout_achievements_stats, viewGroup, view);
            boolean zIsMe = AchievementsFragment.this.isMe();
            ((TextView) viewCreateView.findViewById(R.id.my_stats)).setText(zIsMe ? R.string.my_stats : R.string.just_stats);
            int cachedTime = ((StatsService) getService("stats")).getCachedTime(((ConfigService) getService("config")).getCommunityId());
            ((TextView) viewCreateView.findViewById(R.id.last_24_hours)).setText(AchievementsFragment.this.numberFormat.format((this.achievementsItem.secondsSpentOfLast24Hours + cachedTime) / 60));
            ViewUtils.show(viewCreateView, R.id.last_24_hours_layout, zIsMe);
            ((TextView) viewCreateView.findViewById(R.id.last_week)).setText(AchievementsFragment.this.numberFormat.format((this.achievementsItem.secondsSpentOfLast7Days + cachedTime) / 60));
            ViewUtils.show(viewCreateView, R.id.last_week_layout, zIsMe);
            ((TextView) viewCreateView.findViewById(R.id.posts_created)).setText(AchievementsFragment.this.numberFormat.format(this.achievementsItem.numberOfPostsCreated));
            ((TextView) viewCreateView.findViewById(R.id.followers_count)).setText(AchievementsFragment.this.numberFormat.format(this.achievementsItem.numberOfMembersCount));
            return viewCreateView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, AchievementsResponse achievementsResponse) {
            super.onObjectResponse(apiRequest, achievementsResponse);
            this.achievementsItem = achievementsResponse.achievements;
            notifyDataSetChanged();
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(AchievementsItem achievementsItem) {
            AchievementsResponse achievementsResponse = new AchievementsResponse();
            achievementsResponse.achievements = achievementsItem;
            setResponse(achievementsResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().path("/user-profile/" + AchievementsFragment.this.getStringParam("id") + "/achievements").build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(AchievementsFragment.ACHIEVEMENTS);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse) {
            super.onFailResponse(apiRequest, str, apiResponse);
            NVToast.makeText(getContext(), str, 1).show();
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.achievementsItem = (AchievementsItem) JacksonUtils.readAs(bundle.getString("achievementsItem"), AchievementsItem.class);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("achievementsItem", JacksonUtils.writeAsString(this.achievementsItem));
            return bundleOnSaveInstanceState;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMe() {
        return Utils.isEquals(getStringParam("id"), ((AccountService) getService("account")).getUserId());
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        if (!isEmbedFragment()) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
            this.mergeAdapter.addAdapter(staticViewAdapter);
        }
        boolean zIsMe = isMe();
        AchievementAdapter achievementAdapter = new AchievementAdapter(this);
        this.achievementAdapter = achievementAdapter;
        this.mergeAdapter.addAdapter(achievementAdapter);
        if (zIsMe) {
            this.checkInHistoryAdapter = new CheckInHistoryAdapter(this, true);
            CheckInHistoryHeaderAdapter checkInHistoryHeaderAdapter = new CheckInHistoryHeaderAdapter(this);
            checkInHistoryHeaderAdapter.setAttachedAdapter(this.checkInHistoryAdapter);
            this.mergeAdapter.addAdapter(checkInHistoryHeaderAdapter);
            this.mergeAdapter.addAdapter(this.checkInHistoryAdapter, true);
        }
        CircleAdapter circleAdapter = new CircleAdapter(this);
        this.circleAdapter = circleAdapter;
        this.mergeAdapter.addAdapter(circleAdapter, !zIsMe);
        return this.mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.achievements.AchievementsFragment.2
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i10 = this.n + 1;
                this.n = i10;
                if (i10 != (AchievementsFragment.this.checkInHistoryAdapter != null ? 2 : 1) || ((NVListFragment) AchievementsFragment.this).swipeLayout == null) {
                    return;
                }
                ((NVListFragment) AchievementsFragment.this).swipeLayout.setRefreshing(false);
            }
        };
        CheckInHistoryAdapter checkInHistoryAdapter = this.checkInHistoryAdapter;
        if (checkInHistoryAdapter != null) {
            checkInHistoryAdapter.refresh(1, callback);
        }
        this.circleAdapter.refresh(1, callback);
        this.isRankingEnabled = this.communityConfigHelper.isRankingModuleEnabled();
        AchievementAdapter achievementAdapter = this.achievementAdapter;
        if (achievementAdapter != null) {
            achievementAdapter.notifyDataSetChanged();
        }
        if (this.user == null) {
            fetchUserProfile(getStringParam("id"));
        }
    }

    private void fetchUserProfile(String str) {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/user-profile/" + str).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.achievements.AchievementsFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, userResponse);
                User user = userResponse.user;
                if (user != null) {
                    AchievementsFragment achievementsFragment = AchievementsFragment.this;
                    achievementsFragment.user = user;
                    achievementsFragment.mediaList = user.mediaList;
                    achievementsFragment.updateBackground();
                    if (AchievementsFragment.this.mergeAdapter != null) {
                        AchievementsFragment.this.mergeAdapter.notifyDataSetChanged();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground() {
        View view = getView();
        if (view == null) {
            return;
        }
        SlideshowView slideshowView = (SlideshowView) view.findViewById(R.id.slideshow);
        int i10 = 0;
        slideshowView.noSlide = false;
        slideshowView.setMediaList(this.mediaList);
        View viewFindViewById = view.findViewById(R.id.bg);
        List<Media> list = this.mediaList;
        if (list != null && !list.isEmpty()) {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        String stringParam = getStringParam("id");
        if (stringParam != null) {
            ((LiveLayerService) getService("liveLayer")).reportBrowsing("achievement/" + stringParam, z6);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.numberFormat = NumberFormat.getInstance(Locale.US);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        setTitle(R.string.achievements);
        setHasOptionsMenu(true);
        this.isRankingEnabled = this.communityConfigHelper.isRankingModuleEnabled();
        this.user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        this.mediaList = JacksonUtils.readListAs(getStringParam("mediaList"), Media.class);
        boolean booleanParam = getBooleanParam("needFetchData");
        String stringParam = getStringParam("id");
        if ((booleanParam || this.user == null) && !TextUtils.isEmpty(stringParam)) {
            fetchUserProfile(stringParam);
        }
        if (TextUtils.isEmpty(stringParam)) {
            finish();
            return;
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("My Achievements Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("My Achievements Page Opened Total");
        }
        LocalBroadcastManager.b(getContext()).c(this.receiver, new IntentFilter(Constants.ACTION_STREAK_REPAIR_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_fragment_achievements, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        LocalBroadcastManager.b(getContext()).f(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        onRefresh();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        updateBackground();
    }
}
