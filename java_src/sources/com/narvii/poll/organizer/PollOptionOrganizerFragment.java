package com.narvii.poll.organizer;

import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVTabFragment;

/* JADX INFO: loaded from: classes8.dex */
public class PollOptionOrganizerFragment extends NVTabFragment {
    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVTabFragment
    protected Fragment createTabFragment(int i10) {
        if (i10 == 0) {
            return new PendingRequestListFragment();
        }
        if (i10 != 1) {
            return null;
        }
        return new MyParticipationListFragment();
    }

    @Override // com.narvii.app.NVTabFragment
    protected CharSequence getTabLabel(int i10) {
        if (i10 == 0) {
            return getText(R.string.detail_vote_pending_request);
        }
        if (i10 != 1) {
            return null;
        }
        return getText(R.string.detail_vote_my_participation);
    }
}
