package com.narvii.poll;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class PollVoterListFragment extends NVListFragment {

    private class Adapter extends UserListExAdapter {
        HashMap<String, Integer> votedValueMap;

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            Integer num = this.votedValueMap.get(((User) obj).uid);
            int iIntValue = num == null ? 0 : num.intValue();
            View itemView = super.getItemView(obj, view, viewGroup);
            TextView textView = (TextView) itemView.findViewById(R.id.vote_user_value);
            textView.setVisibility(iIntValue < 2 ? 8 : 0);
            textView.setText("x" + iIntValue);
            return itemView;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_poll_voter;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        public Class<Voter> responseType() {
            return Voter.class;
        }

        public Adapter() {
            super(PollVoterListFragment.this);
            this.votedValueMap = new HashMap<>();
            this.source = "Poll";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/blog/" + PollVoterListFragment.this.getStringParam("blogId") + "/poll/option/" + PollVoterListFragment.this.getStringParam("polloptId") + "/vote").build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            super.onPageResponse(apiRequest, userListResponse, i10);
            HashMap<String, Integer> map = ((Voter) userListResponse).votedValueMap;
            if (map != null) {
                this.votedValueMap.putAll(map);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.votedValueMap = (HashMap) bundle.getSerializable("votedValueMap");
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putSerializable("votedValueMap", this.votedValueMap);
            return bundleOnSaveInstanceState;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.detail_vote_all_voters);
    }
}
