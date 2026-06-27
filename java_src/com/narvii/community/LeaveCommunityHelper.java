package com.narvii.community;

import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;

/* loaded from: classes2.dex */
public class LeaveCommunityHelper {
    protected NVContext nvContext;

    protected void onLeaveCommunitySuccess(Community community) {
    }

    protected void onSendLeaveCommunityRequest(Community community) {
    }

    public LeaveCommunityHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void leaveCommunity(final Community community, final Callback callback) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setTitle(R.string.warning_exclamation);
        aCMAlertDialog.setMessage(R.string.community_leave_confirm);
        aCMAlertDialog.addButton(R.string.no, null);
        aCMAlertDialog.addButton(R.string.leave, new View.OnClickListener() { // from class: com.narvii.community.LeaveCommunityHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                final ProgressDialog progressDialog = new ProgressDialog(LeaveCommunityHelper.this.nvContext.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.community.LeaveCommunityHelper.1.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        ((NotificationCenter) NVApplication.instance().getService("notification")).sendNotification(new Notification("delete", community));
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        LeaveCommunityHelper.this.onLeaveCommunitySuccess(community);
                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(community);
                        }
                    }
                };
                String userId = ((AccountService) LeaveCommunityHelper.this.nvContext.getService("account")).getUserId();
                if (userId == null) {
                    return;
                }
                progressDialog.show();
                ((ApiService) LeaveCommunityHelper.this.nvContext.getService("api")).exec(ApiRequest.builder().communityId(community.id).path("/user-profile/" + userId).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.community.LeaveCommunityHelper.1.2
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) userResponse);
                        User user = userResponse.user;
                        if (user != null && user.isInfluencer()) {
                            ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(LeaveCommunityHelper.this.nvContext.getContext());
                            aCMAlertDialog2.setTitle(R.string.are_you_sure);
                            aCMAlertDialog2.setMessage(R.string.influencer_leave_community_warning);
                            aCMAlertDialog2.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.community.LeaveCommunityHelper.1.2.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    progressDialog.dismiss();
                                }
                            });
                            aCMAlertDialog2.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.community.LeaveCommunityHelper.1.2.2
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    sendLeaveCommunityRequest();
                                }
                            }, SupportMenu.CATEGORY_MASK);
                            aCMAlertDialog2.show();
                            return;
                        }
                        sendLeaveCommunityRequest();
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void sendLeaveCommunityRequest() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        LeaveCommunityHelper.this.onSendLeaveCommunityRequest(community);
                        ((ApiService) LeaveCommunityHelper.this.nvContext.getService("api")).exec(new ApiRequest.Builder().post().path("/community/leave").communityId(community.id).build(), progressDialog.dismissListener);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str, apiResponse, th);
                        NVToast.makeText(LeaveCommunityHelper.this.nvContext.getContext(), str, 0).show();
                        progressDialog.dismiss();
                    }
                });
            }
        }, SupportMenu.CATEGORY_MASK);
        aCMAlertDialog.show();
    }
}
