package com.narvii.poll.organizer;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.PollOption;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poll.post.PlainPollPost;
import com.narvii.poll.post.PlainPollPostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class PlainPollOrganizerListFragment extends NVListFragment {

    private class Adapter extends PollOptionActionListAdapter implements NotificationListener {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public Adapter() {
            super(PlainPollOrganizerListFragment.this);
        }

        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            boolean z6 = obj instanceof PollOption;
            if (!z6 || view2 == null || view2.getId() != R.id.vote_action) {
                if (!z6 || view2 == null || view2.getId() != R.id.vote_action2) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                withdraw(PlainPollOrganizerListFragment.this.getStringParam("id"), PlainPollOrganizerListFragment.this.getStringParam("blog"), (PollOption) obj, false);
                return true;
            }
            PollOption pollOption = (PollOption) obj;
            Intent intent = new Intent(getContext(), (Class<?>) PlainPollPostActivity.class);
            intent.putExtra("blog", PlainPollOrganizerListFragment.this.getStringParam("blog"));
            intent.putExtra("polloptId", pollOption.polloptId);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new PlainPollPost(pollOption)));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof PollOption) && Utils.isEqualsNotNull(notification.parentId, PlainPollOrganizerListFragment.this.getStringParam("id")) && Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), ((PollOption) notification.obj).uid)) {
                editList(notification, false);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/blog/" + PlainPollOrganizerListFragment.this.getStringParam("id") + "/poll/options-joined").build();
        }

        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((TextView) itemView.findViewById(R.id.vote_action)).setText(R.string.detail_vote_action_edit);
            itemView.findViewById(R.id.vote_action2).setVisibility(0);
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
