package com.narvii.onboarding;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.particles.ParticlesHelper;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.NVViewPager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class OnBoardingFragment extends NVFragment {
    public static final int LIKE_FEED = 8;
    public static final int RECOMMEND_FOLLOW = 4;
    public static final int WELCOME_MESSAGE = 2;
    TextView action;
    View actionLayout;
    View chevron;
    View doneEmoji;
    ArrayList<Integer> list = new ArrayList<>();
    private OnBoardingAdapter mOnBoardingAdapter;
    public OnBoardingRecommendHelper onBoardingRecommendHelper;
    NVViewPager pager;
    View skip;

    private class OnBoardingAdapter extends FragmentStatePagerAdapter {
        public OnBoardingAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public int getActionBackground(int i10) {
            int iIntValue = OnBoardingFragment.this.list.get(i10).intValue();
            if (iIntValue != 4) {
                return iIntValue != 8 ? R.drawable.welcome_message_round_bottom : R.drawable.like_post_round_bottom;
            }
            return R.drawable.recommend_follow_round_bottom;
        }

        public String getActionText(int i10) {
            StringBuilder sb = new StringBuilder();
            sb.append(" & ");
            sb.append(isLast(i10) ? OnBoardingFragment.this.getString(R.string.done) : OnBoardingFragment.this.getString(R.string.next));
            String string = sb.toString();
            int iIntValue = OnBoardingFragment.this.list.get(i10).intValue();
            if (iIntValue == 2) {
                return isLast(i10) ? OnBoardingFragment.this.getString(R.string.close) : OnBoardingFragment.this.getString(R.string.next);
            }
            if (iIntValue == 4) {
                return OnBoardingFragment.this.getString(R.string.recommend_follow_next) + string;
            }
            if (iIntValue != 8) {
                return "";
            }
            return OnBoardingFragment.this.getString(R.string.like_post_next) + string;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return OnBoardingFragment.this.list.size();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i10) {
            int iIntValue = OnBoardingFragment.this.list.get(i10).intValue();
            if (iIntValue == 2) {
                WelcomeMessageFragment welcomeMessageFragment = new WelcomeMessageFragment();
                Bundle bundle = new Bundle();
                bundle.putString(AccountNotice.LEVEL_MESSAGE, OnBoardingFragment.this.getStringParam(AccountNotice.LEVEL_MESSAGE));
                bundle.putString(SearchPrefsHelper.PREFS_KEY_COMMUNITY, OnBoardingFragment.this.getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY));
                welcomeMessageFragment.setArguments(bundle);
                welcomeMessageFragment.setArguments(new Bundle());
                return welcomeMessageFragment;
            }
            if (iIntValue == 4) {
                RecommendedUsersFragment recommendedUsersFragment = new RecommendedUsersFragment();
                recommendedUsersFragment.setArguments(new Bundle());
                return recommendedUsersFragment;
            }
            if (iIntValue != 8) {
                return null;
            }
            RecommendedFeedsFragment recommendedFeedsFragment = new RecommendedFeedsFragment();
            recommendedFeedsFragment.setArguments(new Bundle());
            return recommendedFeedsFragment;
        }

        public boolean showSkip(int i10) {
            return OnBoardingFragment.this.list.get(i10).intValue() != 2;
        }

        public boolean isLast(int i10) {
            if (Utils.isRtl()) {
                if (i10 != 0) {
                    return false;
                }
            } else if (i10 != getCount() - 1) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAction(int i10) {
        if (this.mOnBoardingAdapter == null) {
            return;
        }
        resetActionLayout(i10);
        this.action.setText(this.mOnBoardingAdapter.getActionText(i10));
        this.actionLayout.setBackgroundResource(this.mOnBoardingAdapter.getActionBackground(i10));
        this.skip.setVisibility(this.mOnBoardingAdapter.showSkip(i10) ? 0 : 4);
    }

    private void resetActionLayout(int i10) {
        this.action.setVisibility(0);
        boolean z6 = true;
        this.chevron.setVisibility((!Utils.isRtl() ? i10 != this.list.size() - 1 : i10 != 0) ? 8 : 0);
        if (this.list.get(i10).intValue() == 2 || (!Utils.isRtl() ? i10 != this.list.size() - 1 : i10 != 0)) {
            z6 = false;
        }
        this.doneEmoji.setVisibility(z6 ? 0 : 8);
    }

    public void sendFollowAllRequest() {
        AccountService accountService = (AccountService) getService("account");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("targetUidList");
        Iterator<User> it = this.onBoardingRecommendHelper.getRecommendedUsers().iterator();
        while (it.hasNext()) {
            arrayNodePutArray.add(it.next().uid);
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/user-profile/" + accountService.getUserId() + "/joined").body(objectNodeCreateObjectNode).tag(ApiService.ASYNC_CALL_TAG).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        if (!Utils.isRtl() && this.pager.getCurrentItem() < this.mOnBoardingAdapter.getCount() - 1) {
            NVViewPager nVViewPager = this.pager;
            nVViewPager.setCurrentItem(nVViewPager.getCurrentItem() + 1, true);
            return;
        }
        if (Utils.isRtl() && this.pager.getCurrentItem() > 0) {
            NVViewPager nVViewPager2 = this.pager;
            nVViewPager2.setCurrentItem(nVViewPager2.getCurrentItem() - 1, true);
        } else if (getActivity() != null) {
            ((OnBoardingActivity) getActivity()).succeed = true;
            getActivity().setResult(-1);
            getActivity().finish();
            getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int intParam = getIntParam("flags");
        if ((intParam & 2) != 0) {
            this.list.add(2);
        }
        if ((intParam & 4) != 0) {
            this.list.add(4);
        }
        if ((intParam & 8) != 0) {
            this.list.add(8);
        }
        if (Utils.isRtl()) {
            Collections.reverse(this.list);
        }
        this.onBoardingRecommendHelper = new OnBoardingRecommendHelper(getParentContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_on_boarding_view, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        NVViewPager nVViewPager = (NVViewPager) view.findViewById(R.id.pager);
        this.pager = nVViewPager;
        nVViewPager.disableScroll = true;
        View viewFindViewById = view.findViewById(R.id.skip);
        this.skip = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onboarding.OnBoardingFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (OnBoardingFragment.this.getActivity() != null) {
                    OnBoardingFragment.this.getActivity().finish();
                    OnBoardingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                }
            }
        });
        this.actionLayout = view.findViewById(R.id.action_layout);
        this.action = (TextView) view.findViewById(R.id.action);
        this.chevron = view.findViewById(R.id.chevron_right);
        this.doneEmoji = view.findViewById(R.id.action_emoji);
        OnBoardingAdapter onBoardingAdapter = new OnBoardingAdapter(getFragmentManager());
        this.mOnBoardingAdapter = onBoardingAdapter;
        this.pager.setAdapter(onBoardingAdapter);
        this.pager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.onboarding.OnBoardingFragment.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float f, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                OnBoardingFragment.this.changeAction(i10);
            }
        });
        int size = 0;
        this.pager.setCurrentItem(0);
        if (Utils.isRtl() && this.list.size() > 0) {
            size = this.list.size() - 1;
        }
        changeAction(size);
        this.actionLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onboarding.OnBoardingFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnBoardingFragment onBoardingFragment = OnBoardingFragment.this;
                int iIntValue = onBoardingFragment.list.get(onBoardingFragment.pager.getCurrentItem()).intValue();
                if (iIntValue == 2) {
                    OnBoardingFragment.this.goNext();
                    return;
                }
                if (iIntValue == 4) {
                    OnBoardingFragment.this.sendFollowAllRequest();
                    OnBoardingFragment.this.goNext();
                    StatisticsService statisticsService = (StatisticsService) OnBoardingFragment.this.getService("statistics");
                    ArrayList<User> recommendedUsers = OnBoardingFragment.this.onBoardingRecommendHelper.getRecommendedUsers();
                    statisticsService.event("Follow User").source(EventConstants.LikePost.COMMUNITY_ONBOARDING).userPropInc("Community Onboarding Follows", recommendedUsers != null ? recommendedUsers.size() : 1);
                    return;
                }
                if (iIntValue != 8) {
                    return;
                }
                OnBoardingFragment.this.sendLikeAllFeedsRequest();
                ParticlesHelper particlesHelper = new ParticlesHelper();
                particlesHelper.l5().emit(OnBoardingFragment.this.actionLayout);
                Utils.postDelayed(new Runnable() { // from class: com.narvii.onboarding.OnBoardingFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnBoardingFragment.this.goNext();
                    }
                }, particlesHelper.duration());
                StatisticsService statisticsService2 = (StatisticsService) OnBoardingFragment.this.getService("statistics");
                ArrayList<Feed> recommendedFeeds = OnBoardingFragment.this.onBoardingRecommendHelper.getRecommendedFeeds();
                FirebaseLogManager.logEvent(OnBoardingFragment.this, statisticsService2.event(EventConstants.LikePost.LIKE_POST).param(EventConstants.PostType.POST_TYPE, "blog").source(EventConstants.LikePost.COMMUNITY_ONBOARDING).userPropInc(EventConstants.LikePost.COMMUNITY_ONBOARDING_LIKES, recommendedFeeds != null ? recommendedFeeds.size() : 1));
            }
        });
    }

    public void sendLikeAllFeedsRequest() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("value", 4);
        ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("targetIdList");
        Iterator<Feed> it = this.onBoardingRecommendHelper.getRecommendedFeeds().iterator();
        while (it.hasNext()) {
            arrayNodePutArray.add(it.next().id());
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/feed/vote").body(objectNodeCreateObjectNode).tag(ApiService.ASYNC_CALL_TAG).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }
}
