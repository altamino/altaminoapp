package com.narvii.invite;

import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.NVToast;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class ValidLinkFragment extends NVListFragment {
    HashSet<String> revokedIds = new HashSet<>();

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this, getIntParam("__communityId"));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.existing_invite_codes);
    }

    public class Adapter extends NVPagedAdapter {
        int cid;
        public final DateFormat formatter;

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

        public Adapter(NVContext nVContext, int i) {
            super(nVContext);
            this.cid = i;
            this.formatter = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class dataType() {
            return Invitation.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return InvitationListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().scopeCommunityId(this.cid).path("community/invitation");
            builderPath.param(NotificationCompat.CATEGORY_STATUS, NotificationChannelHelper.CHANNEL_NORMAL);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            String string;
            Invitation invitation = (Invitation) obj;
            View viewCreateView = createView(R.layout.item_valid_link, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.create_by);
            ValidLinkFragment validLinkFragment = ValidLinkFragment.this;
            int i = R.string.created_by_placeholder;
            Object[] objArr = new Object[1];
            User user = invitation.author;
            objArr[0] = user == null ? null : user.nickname();
            textView.setText(validLinkFragment.getString(i, objArr));
            ViewUtils.show(textView, invitation.author != null);
            ((TextView) viewCreateView.findViewById(R.id.link)).setText(invitation.inviteCode);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.expire);
            Date date = new Date(invitation.createdTime.getTime() + (invitation.duration * 1000));
            boolean zContains = ValidLinkFragment.this.revokedIds.contains(invitation.id());
            textView2.setTextColor(zContains ? -1503941 : -6579301);
            if (zContains) {
                string = ValidLinkFragment.this.getString(R.string.expired);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(ValidLinkFragment.this.getString(R.string.expire_on));
                sb.append(": ");
                sb.append(invitation.duration != 0 ? this.formatter.format(date) : ValidLinkFragment.this.getString(R.string.never));
                string = sb.toString();
            }
            textView2.setText(string);
            ViewUtils.visible(viewCreateView.findViewById(R.id.revoke), !zContains);
            viewCreateView.findViewById(R.id.revoke).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Invitation) {
                Invitation invitation = (Invitation) obj;
                if (view2 != null && view2.getId() == R.id.revoke) {
                    revoke(invitation);
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void revoke(final Invitation invitation) {
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ((ApiService) getService("api")).exec(ApiRequest.builder().scopeCommunityId(ValidLinkFragment.this.getIntParam("__communityId")).delete().path("community/invitation/" + invitation.id()).build(), new ApiResponseListener<NewInvitationResponse>(NewInvitationResponse.class) { // from class: com.narvii.invite.ValidLinkFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    NVToast.makeText(Adapter.this.getContext(), str, 0).show();
                    if (ValidLinkFragment.this.getActivity() == null) {
                        return;
                    }
                    progressDialog.dismiss();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, NewInvitationResponse newInvitationResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) newInvitationResponse);
                    ValidLinkFragment.this.revokedIds.add(invitation.id());
                    Adapter.this.notifyDataSetChanged();
                    if (ValidLinkFragment.this.getActivity() == null) {
                        return;
                    }
                    progressDialog.dismiss();
                }
            });
        }
    }
}
