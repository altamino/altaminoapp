package com.narvii.leaderboard;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class UserRankingListFragment extends ShareHeaderFragment {
    private int top3CellWidth;
    private UserDataAdapter userDataAdapter;

    class UserDataAdapter extends RankingUserListAdapter {
        public UserDataAdapter() {
            super(UserRankingListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z6) {
            if (UserRankingListFragment.this.readyToLoad) {
                super.loadNextPage(z6);
            }
        }

        @Override // com.narvii.leaderboard.RankingUserListAdapter
        protected int rankingType() {
            return UserRankingListFragment.this.rankingMode;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        int intParam = getIntParam(ShareHeaderFragment.STATE_RANKING_MODE, -1);
        if (intParam == 1) {
            return "ranking_most_active_24_hrs";
        }
        if (intParam == 2) {
            return "ranking_most_active_last_7_days";
        }
        if (intParam == 3) {
            return "ranking_hall_of_fame";
        }
        if (intParam != 5) {
            return null;
        }
        return "ranking_quizzes";
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment
    protected NVAdapter mainAdapter(Bundle bundle) {
        this.userDataAdapter = new UserDataAdapter();
        return new RankingUserListLayoutAdapter(this, this.userDataAdapter);
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.top3CellWidth = (int) (Utils.getScreenSize(getActivity()).x / 3.0f);
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment
    public void setCurrentOffset(int i10) {
        super.setCurrentOffset(i10);
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        if (z6) {
            this.readyToLoad = true;
            UserDataAdapter userDataAdapter = this.userDataAdapter;
            if (userDataAdapter != null) {
                userDataAdapter.notifyDataSetChanged();
            }
        }
    }
}
