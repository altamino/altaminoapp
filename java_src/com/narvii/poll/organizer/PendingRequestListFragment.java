package com.narvii.poll.organizer;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVListFragment;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class PendingRequestListFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    private class Adapter extends PollOptionActionListAdapter implements NotificationListener {
        public Adapter() {
            super(PendingRequestListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/blog/" + PendingRequestListFragment.this.getStringParam("id") + "/poll/options-pending").build();
        }

        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((TextView) itemView.findViewById(R.id.vote_action)).setText(R.string.detail_vote_action_approve);
            return itemView;
        }

        @Override // com.narvii.poll.organizer.PollOptionActionListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof PollOption) && view2 != null && view2.getId() == R.id.vote_action) {
                PendingRequestListFragment.this.approve((PollOption) obj, false);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.action == "new" && (notification.obj instanceof PollOption) && Utils.isEqualsNotNull(notification.parentId, PendingRequestListFragment.this.getStringParam("id"))) {
                Notification notificationM51clone = notification.m51clone();
                notificationM51clone.action = "delete";
                editList(notificationM51clone, false);
            }
        }
    }

    public void approve(final PollOption pollOption, boolean z) {
        if (!z) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.detail_vote_warning_approve);
            actionSheetDialog.addItem(R.string.detail_vote_action_approve, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poll.organizer.PendingRequestListFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        PendingRequestListFragment.this.approve(pollOption, true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poll.organizer.PendingRequestListFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Notification notification = new Notification("new", pollOption);
                notification.parentId = PendingRequestListFragment.this.getStringParam("id");
                PendingRequestListFragment.this.sendNotification(notification);
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/blog/" + getStringParam("id") + "/poll/option/" + pollOption.polloptId + "/settings").param("opName", 110).param("opValue", 0).build(), progressDialog.dismissListener);
    }
}
