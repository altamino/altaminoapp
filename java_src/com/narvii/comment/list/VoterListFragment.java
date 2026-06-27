package com.narvii.comment.list;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.comment.CommentHelper;
import com.narvii.list.NVListFragment;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.VoteIcon;

/* loaded from: classes2.dex */
public class VoterListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setTitle(isQA() ? R.string.comment_all_votes : R.string.comment_all_likes);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    boolean isQA() {
        return getIntParam("type") == 1 && getIntParam("feedType") == 3;
    }

    private class Adapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_voter;
        }

        public Adapter() {
            super(VoterListFragment.this);
            this.source = "All Likes";
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            VoteIcon voteIcon = (VoteIcon) view2.findViewById(R.id.icon);
            if (voteIcon != null) {
                voteIcon.setVotedValue(4);
            }
            return view2;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            int intParam = VoterListFragment.this.getIntParam("type");
            StringBuilder sb = new StringBuilder();
            sb.append(CommentHelper.getBaseCommentPath(isGlobalInteractionScope(), intParam, VoterListFragment.this.getStringParam("id"), VoterListFragment.this.getStringParam("commentId")));
            sb.append(isGlobalInteractionScope() ? "/g-vote" : "/vote");
            return ApiRequest.builder().path(sb.toString()).build();
        }
    }
}
