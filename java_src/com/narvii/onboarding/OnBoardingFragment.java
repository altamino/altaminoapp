package com.narvii.onboarding;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.particles.ParticlesHelper;
import com.narvii.widget.NVViewPager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
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
    NVViewPager pager;
    View skip;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_on_boarding_view, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.pager = (NVViewPager) view.findViewById(R.id.pager);
        this.pager.disableScroll = true;
        this.skip = view.findViewById(R.id.skip);
        this.skip.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onboarding.OnBoardingFragment.1
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
        this.mOnBoardingAdapter = new OnBoardingAdapter(getFragmentManager());
        this.pager.setAdapter(this.mOnBoardingAdapter);
        this.pager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.narvii.onboarding.OnBoardingFragment.2
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                OnBoardingFragment.this.changeAction(i);
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
            public void onClick(View view2) throws Resources.NotFoundException {
                OnBoardingFragment onBoardingFragment = OnBoardingFragment.this;
                int iIntValue = onBoardingFragment.list.get(onBoardingFragment.pager.getCurrentItem()).intValue();
                if (iIntValue == 2) {
                    OnBoardingFragment.this.goNext();
                    return;
                }
                if (iIntValue == 4) {
                    OnBoardingFragment.this.sendFollowAllRequest();
                    OnBoardingFragment.this.goNext();
                } else {
                    if (iIntValue != 8) {
                        return;
                    }
                    OnBoardingFragment.this.sendLikeAllFeedsRequest();
                    ParticlesHelper particlesHelper = new ParticlesHelper();
                    particlesHelper.l5().emit(OnBoardingFragment.this.actionLayout);
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.onboarding.OnBoardingFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() throws Resources.NotFoundException {
                            OnBoardingFragment.this.goNext();
                        }
                    }, particlesHelper.duration());
                }
            }
        });
    }

    public void sendLikeAllFeedsRequest() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("value", 4);
        ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("targetIdList");
        Iterator it = JacksonUtils.readListUsing(getStringParam("feeds"), new Feed.FeedDeserializer()).iterator();
        while (it.hasNext()) {
            arrayNodePutArray.add(((Feed) it.next()).id());
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/feed/vote").body(objectNodeCreateObjectNode).tag(ApiService.ASYNC_CALL_TAG).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    public void sendFollowAllRequest() {
        AccountService accountService = (AccountService) getService("account");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("targetUidList");
        Iterator it = JacksonUtils.readListAs(getStringParam("users"), User.class).iterator();
        while (it.hasNext()) {
            arrayNodePutArray.add(((User) it.next()).uid);
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/user-profile/" + accountService.getUserId() + "/joined").body(objectNodeCreateObjectNode).tag(ApiService.ASYNC_CALL_TAG).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() throws Resources.NotFoundException {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAction(int i) {
        if (this.mOnBoardingAdapter == null) {
            return;
        }
        resetActionLayout(i);
        this.action.setText(this.mOnBoardingAdapter.getActionText(i));
        this.actionLayout.setBackgroundResource(this.mOnBoardingAdapter.getActionBackground(i));
        this.skip.setVisibility(this.mOnBoardingAdapter.showSkip(i) ? 0 : 4);
    }

    private void resetActionLayout(int i) {
        this.action.setVisibility(0);
        boolean z = true;
        this.chevron.setVisibility((!Utils.isRtl() ? i != this.list.size() - 1 : i != 0) ? 8 : 0);
        if (this.list.get(i).intValue() == 2 || (!Utils.isRtl() ? i != this.list.size() - 1 : i != 0)) {
            z = false;
        }
        this.doneEmoji.setVisibility(z ? 0 : 8);
    }

    private class OnBoardingAdapter extends FragmentStatePagerAdapter {
        public OnBoardingAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            int iIntValue = OnBoardingFragment.this.list.get(i).intValue();
            if (iIntValue == 2) {
                return null;
            }
            if (iIntValue == 4) {
                RecommendedUsersFragment recommendedUsersFragment = new RecommendedUsersFragment();
                Bundle bundle = new Bundle();
                bundle.putString("users", OnBoardingFragment.this.getStringParam("users"));
                recommendedUsersFragment.setArguments(bundle);
                return recommendedUsersFragment;
            }
            if (iIntValue != 8) {
                return null;
            }
            RecommendedFeedsFragment recommendedFeedsFragment = new RecommendedFeedsFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("feeds", OnBoardingFragment.this.getStringParam("feeds"));
            recommendedFeedsFragment.setArguments(bundle2);
            return recommendedFeedsFragment;
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return OnBoardingFragment.this.list.size();
        }

        public String getActionText(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(" & ");
            sb.append(isLast(i) ? OnBoardingFragment.this.getString(R.string.done) : OnBoardingFragment.this.getString(R.string.next));
            String string = sb.toString();
            int iIntValue = OnBoardingFragment.this.list.get(i).intValue();
            if (iIntValue == 2) {
                return isLast(i) ? OnBoardingFragment.this.getString(R.string.close) : OnBoardingFragment.this.getString(R.string.next);
            }
            if (iIntValue == 4) {
                return OnBoardingFragment.this.getString(R.string.recommend_follow_next) + string;
            }
            if (iIntValue != 8) {
                return "";
            }
            return OnBoardingFragment.this.getString(R.string.like_post_next) + string;
        }

        public boolean isLast(int i) {
            if (Utils.isRtl()) {
                if (i != 0) {
                    return false;
                }
            } else if (i != getCount() - 1) {
                return false;
            }
            return true;
        }

        public int getActionBackground(int i) {
            int iIntValue = OnBoardingFragment.this.list.get(i).intValue();
            return iIntValue != 2 ? iIntValue != 4 ? iIntValue != 8 ? R.drawable.welcome_message_round_bottom : R.drawable.like_post_round_bottom : R.drawable.recommend_follow_round_bottom : R.drawable.welcome_message_round_bottom;
        }

        public boolean showSkip(int i) {
            return OnBoardingFragment.this.list.get(i).intValue() != 2;
        }
    }
}
