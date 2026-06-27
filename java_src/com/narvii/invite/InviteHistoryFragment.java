package com.narvii.invite;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class InviteHistoryFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.invite_history);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new InviteHistoryAdapter(this, getIntParam("__communityId"));
    }

    public class InviteHistoryAdapter extends NVPagedAdapter {
        int cid;
        DateTimeFormatter datetime;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        public InviteHistoryAdapter(NVContext nVContext, int i) {
            super(nVContext);
            this.cid = i;
            this.datetime = DateTimeFormatter.getInstance(nVContext.getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class dataType() {
            return InvitationLog.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return InvitationLogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().scopeCommunityId(this.cid).path("community/invitation/logs").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            InvitationLog invitationLog = (InvitationLog) obj;
            View viewCreateView = createView(R.layout.invited_user, viewGroup, view);
            if (invitationLog.userProfile != null) {
                ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(invitationLog.userProfile.icon);
                ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setText(invitationLog.userProfile.nickname);
                ((TextView) viewCreateView.findViewById(R.id.jointime)).setText(this.datetime.memberSinceDate(invitationLog.createdTime));
            }
            return viewCreateView;
        }
    }
}
