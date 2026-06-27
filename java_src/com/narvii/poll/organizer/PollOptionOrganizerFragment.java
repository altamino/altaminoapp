package com.narvii.poll.organizer;

import android.support.v4.app.Fragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVTabFragment;

/* loaded from: classes3.dex */
public class PollOptionOrganizerFragment extends NVTabFragment {
    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVTabFragment
    protected CharSequence getTabLabel(int i) {
        if (i == 0) {
            return getText(R.string.detail_vote_pending_request);
        }
        if (i != 1) {
            return null;
        }
        return getText(R.string.detail_vote_my_participation);
    }

    @Override // com.narvii.app.NVTabFragment
    protected Fragment createTabFragment(int i) {
        if (i == 0) {
            return new PendingRequestListFragment();
        }
        if (i != 1) {
            return null;
        }
        return new MyParticipationListFragment();
    }
}
