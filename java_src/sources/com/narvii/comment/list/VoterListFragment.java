package com.narvii.comment.list;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.comment.CommentHelper;
import com.narvii.list.NVListFragment;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes7.dex */
public class VoterListFragment extends NVListFragment {

    private class Adapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_voter;
        }

        public Adapter() {
            super(VoterListFragment.this);
            this.source = "All Likes";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            int intParam = VoterListFragment.this.getIntParam("type");
            StringBuilder sb = new StringBuilder();
            sb.append(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), intParam, VoterListFragment.this.getStringParam("id"), VoterListFragment.this.getStringParam("commentId")));
            sb.append(isGlobalInteractionScope() ? "/g-vote" : "/vote");
            return ApiRequest.builder().path(sb.toString()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            VoteIcon voteIcon = (VoteIcon) view2.findViewById(R.id.icon);
            if (voteIcon != null) {
                voteIcon.setVotedValue(4);
            }
            return view2;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    boolean isQA() {
        return getIntParam("type") == 1 && getIntParam("feedType") == 3;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        if (isQA()) {
            i10 = R.string.comment_all_votes;
        } else {
            i10 = R.string.comment_all_likes;
        }
        setTitle(i10);
    }
}
