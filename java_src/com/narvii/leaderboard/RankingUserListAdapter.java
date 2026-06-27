package com.narvii.leaderboard;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.TimeUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.Top3UserLayout;
import com.narvii.widget.UserAvatarLayout;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class RankingUserListAdapter extends UserListAdapter {
    private final int TYPE_NORMAL;
    private final int TYPE_NORMAL_QUIZ;
    private final int TYPE_TOP3;
    private final int TYPE_TOP3_QUIZ;

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 4;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 20;
    }

    protected int rankingType() {
        return 1;
    }

    public RankingUserListAdapter(NVContext nVContext) {
        super(nVContext);
        this.TYPE_TOP3 = 1;
        this.TYPE_NORMAL = 0;
        this.TYPE_TOP3_QUIZ = 3;
        this.TYPE_NORMAL_QUIZ = 2;
        this.source = "Leaderboard";
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        return super.getCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    public Class<User> dataType() {
        return User.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    public Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("/community/leaderboard").scopeCommunityId(((ConfigService) this.context.getService("config")).getCommunityId());
        builderScopeCommunityId.param("rankingType", Integer.valueOf(rankingType()));
        builderScopeCommunityId.tag(Boolean.valueOf(!z));
        return builderScopeCommunityId.build();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return super.getItem(i);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return (list().indexOf(obj) < 0 || list().indexOf(obj) >= 3) ? rankingType() == 5 ? 2 : 0 : rankingType() == 5 ? 3 : 1;
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        int itemType = getItemType(obj);
        int i = R.layout.item_ranking_user_normal;
        if (itemType != 0) {
            if (itemType == 1) {
                i = R.layout.item_ranking_user_top3;
            } else if (itemType == 2) {
                i = R.layout.item_ranking_user_normal_quiz;
            } else if (itemType == 3) {
                i = R.layout.item_ranking_user_top3_quiz;
            }
        }
        View viewCreateView = createView(i, viewGroup, view);
        if (itemType == 1 || itemType == 3) {
            if (viewCreateView instanceof Top3UserLayout) {
                Top3UserLayout top3UserLayout = (Top3UserLayout) viewCreateView;
                User user = (User) obj;
                top3UserLayout.setUser(user, list().indexOf(obj), this.context);
                top3UserLayout.setScore(getUserScoreInfo(user));
            }
        } else if (itemType == 0 || itemType == 2) {
            TextView textView = (TextView) viewCreateView.findViewById(R.id.user_ranking_no);
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.user_name);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.scores);
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.quiz_no_played);
            textView.setText(String.valueOf(list().indexOf(obj) + 1));
            User user2 = (User) obj;
            userAvatarLayout.setUser(user2);
            nicknameView.setUser(user2);
            textView2.setText(getUserScoreInfo(user2));
            if (textView3 != null) {
                textView3.setText(getContext().getResources().getString(R.string.quiz_no_played, Integer.valueOf(user2.totalQuizPlayedTimes)));
            }
        }
        return viewCreateView;
    }

    private String getUserScoreInfo(User user) {
        String minsFormat = TimeUtils.getMinsFormat(user.activeTime, getContext().getString(R.string.mins));
        if (rankingType() == 3) {
            Integer numValueOf = Integer.valueOf(user.reputation);
            return NumberFormat.getInstance(Locale.US).format(numValueOf) + " REP";
        }
        if (rankingType() == 5) {
            return getContext().getResources().getString(R.string.n_points, NumberFormat.getInstance(Locale.US).format(Integer.valueOf(user.totalQuizHighestScore)));
        }
        if (rankingType() != 4) {
            return minsFormat;
        }
        return getContext().getResources().getString(R.string.n_streaks, NumberFormat.getInstance(Locale.US).format(Integer.valueOf(user.consecutiveCheckInDays)));
    }
}
