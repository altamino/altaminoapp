package com.narvii.poll.organizer;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.model.PollOption;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes9.dex */
public class MyParticipationListFragment extends NVListFragment {

    private class Adapter extends PollOptionActionListAdapter implements NotificationListener {
        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.user_click) {
                return true;
            }
            if (!(obj instanceof PollOption) || view2 == null || view2.getId() != R.id.vote_action) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            withdraw(MyParticipationListFragment.this.getStringParam("id"), MyParticipationListFragment.this.getStringParam("blog"), (PollOption) obj, false);
            return true;
        }

        public Adapter() {
            super(MyParticipationListFragment.this);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof PollOption) && Utils.isEqualsNotNull(notification.parentId, MyParticipationListFragment.this.getStringParam("id")) && Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), ((PollOption) notification.obj).uid)) {
                editList(notification, false);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/blog/" + MyParticipationListFragment.this.getStringParam("id") + "/poll/options-joined").build();
        }

        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            TextView textView = (TextView) itemView.findViewById(R.id.vote_action);
            textView.setText(R.string.detail_vote_action_withdraw);
            textView.setBackgroundResource(R.drawable.button_round_normal);
            textView.setTextColor(-7829368);
            return itemView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }
}
