package com.narvii.master.invitation;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginOrSignupFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ThumbImageView;
import java.util.List;

/* loaded from: classes3.dex */
public class InvitationWelcomeActivity extends NVActivity {
    Button btnCancel;
    Button btnOk;
    CommunityInviteResponse communityInvitResponse;
    String communityJson;
    private String invitationId;

    @Override // com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_new_invitation);
        this.invitationId = getStringParam(CommunityDetailFragment.KEY_INVITATION_ID);
        if (bundle != null) {
            this.invitationId = bundle.getString(CommunityDetailFragment.KEY_INVITATION_ID);
        }
        if (!TextUtils.isEmpty(this.invitationId)) {
            findViewById(R.id.root).setVisibility(4);
            joinCommunity();
            return;
        }
        findViewById(R.id.root).setVisibility(0);
        this.communityJson = getIntent().getStringExtra("community");
        this.communityInvitResponse = (CommunityInviteResponse) JacksonUtils.readAs(this.communityJson, CommunityInviteResponse.class);
        this.btnCancel = (Button) findViewById(R.id.invit_dialog_cancel);
        this.btnOk = (Button) findViewById(R.id.invit_dialog_ok);
        CommunityInviteResponse communityInviteResponse = this.communityInvitResponse;
        if (communityInviteResponse != null && communityInviteResponse.community != null) {
            ((ThumbImageView) findViewById(R.id.community_icon)).setImageUrl(this.communityInvitResponse.community.icon);
            ((TextView) findViewById(R.id.community_name)).setText(this.communityInvitResponse.community.name);
            ((TextView) findViewById(R.id.community_tagline)).setText(this.communityInvitResponse.community.tagline);
        }
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.invitation.InvitationWelcomeActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InvitationWelcomeActivity.this.finish();
            }
        });
        this.btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.invitation.InvitationWelcomeActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intentLaunchCommunity = InvitationWelcomeActivity.launchCommunity(InvitationWelcomeActivity.this.communityInvitResponse);
                intentLaunchCommunity.putExtra("Source", "clipboardlink");
                InvitationWelcomeActivity.this.startActivity(intentLaunchCommunity);
                InvitationWelcomeActivity.this.finish();
            }
        });
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(CommunityDetailFragment.KEY_INVITATION_ID, this.invitationId);
    }

    public static Intent launchCommunity(CommunityInviteResponse communityInviteResponse) {
        Community community;
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        if (communityInviteResponse != null && (community = communityInviteResponse.community) != null) {
            intent.putExtra("id", community.id);
            intent.putExtra("icon", communityInviteResponse.community.icon);
            intent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, communityInviteResponse.isCurrentUserJoined);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(communityInviteResponse.community));
            intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, communityInviteResponse.invitationId);
            intent.putExtra("isRequested", communityInviteResponse.isMembershipRequestedByCurrentUser);
            Invitation invitation = communityInviteResponse.invitation;
            if (invitation != null) {
                intent.putExtra(LoginOrSignupFragment.LOGIN_WITH_JOIN_COMMUNITY_INVITER, JacksonUtils.writeAsString(invitation.author));
            }
        }
        return intent;
    }

    private void joinCommunity() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ConfigService configService = (ConfigService) NVApplication.instance().getService("config");
        ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(configService.getCommunityId()).path("/community/join");
        String str = this.invitationId;
        if (str != null) {
            builderPath.param(CommunityDetailFragment.KEY_INVITATION_ID, str);
        }
        ((ApiService) NVApplication.instance().getService("api")).exec(builderPath.build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.invitation.InvitationWelcomeActivity.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                if (NVApplication.CLIENT_TYPE == 101) {
                    new PrivateCommunityCheckHelper(InvitationWelcomeActivity.this).sendCommunityUserInfoChanged(true);
                }
                progressDialog.dismiss();
                try {
                    Community community = ((CommunityService) InvitationWelcomeActivity.this.getService("community")).getCommunity(configService.getCommunityId());
                    if (community != null) {
                        int i = community.templateId;
                    }
                } catch (Exception unused) {
                }
                ((AccountService) InvitationWelcomeActivity.this.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(configService.getCommunityId());
                InvitationWelcomeActivity.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(InvitationWelcomeActivity.this.getContext(), str2, 1).show();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", configService.getCommunityId());
                intent.putExtra("joinOnly", true);
                intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, InvitationWelcomeActivity.this.invitationId);
                InvitationWelcomeActivity.this.getContext().startActivity(intent);
                InvitationWelcomeActivity.this.finish();
            }
        });
    }
}
