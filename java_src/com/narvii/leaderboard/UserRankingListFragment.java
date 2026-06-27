package com.narvii.leaderboard;

import android.os.Bundle;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class UserRankingListFragment extends ShareHeaderFragment {
    private int top3CellWidth;
    private UserDataAdapter userDataAdapter;

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.top3CellWidth = (int) (Utils.getScreenSize(getActivity()).x / 3.0f);
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            this.readyToLoad = true;
            UserDataAdapter userDataAdapter = this.userDataAdapter;
            if (userDataAdapter != null) {
                userDataAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment
    protected NVAdapter mainAdapter(Bundle bundle) {
        this.userDataAdapter = new UserDataAdapter();
        return new RankingUserListLayoutAdapter(this, this.userDataAdapter);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        int intParam = getIntParam(ShareHeaderFragment.STATE_RANKING_MODE, -1);
        if (intParam == 1) {
            return "MostActiveLast24Hrs";
        }
        if (intParam == 2) {
            return "MostActiveLast7Days";
        }
        if (intParam == 3) {
            return "HallOfFame";
        }
        if (intParam != 5) {
            return null;
        }
        return "Quizzes";
    }

    class UserDataAdapter extends RankingUserListAdapter {
        public UserDataAdapter() {
            super(UserRankingListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z) {
            if (UserRankingListFragment.this.readyToLoad) {
                super.loadNextPage(z);
            }
        }

        @Override // com.narvii.leaderboard.RankingUserListAdapter
        protected int rankingType() {
            return UserRankingListFragment.this.rankingMode;
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment
    public void setCurrentOffset(int i) {
        super.setCurrentOffset(i);
    }
}
