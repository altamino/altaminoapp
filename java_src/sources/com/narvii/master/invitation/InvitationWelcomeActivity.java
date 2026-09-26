package com.narvii.master.invitation;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(InvitationWelcomeActivity.this.getContext(), str2, 1).show();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", configService.getCommunityId());
                intent.putExtra("joinOnly", true);
                intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, InvitationWelcomeActivity.this.invitationId);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(InvitationWelcomeActivity.this.getContext(), intent);
                InvitationWelcomeActivity.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                progressDialog.dismiss();
                int i10 = 0;
                try {
                    Community community = ((CommunityService) InvitationWelcomeActivity.this.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
                    if (community != null) {
                        i10 = community.templateId;
                    }
                } catch (Exception unused) {
                }
                MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(InvitationWelcomeActivity.this.getContext());
                HashMap map = new HashMap();
                map.put("source", "standalone");
                map.put("type", "join");
                map.put("community_id", String.valueOf(configService.getCommunityId()));
                map.put("template", String.valueOf(i10));
                mixpanelAnalytics.trackEvent("community_join", map);
                ((AccountService) InvitationWelcomeActivity.this.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(configService.getCommunityId());
                InvitationWelcomeActivity.this.finish();
            }
        });
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
                intent.putExtra(LoginActivity.LOGIN_WITH_JOIN_COMMUNITY_INVITER, JacksonUtils.writeAsString(invitation.author));
            }
        }
        return intent;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
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
        String stringExtra = getIntent().getStringExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.communityJson = stringExtra;
        this.communityInvitResponse = (CommunityInviteResponse) JacksonUtils.readAs(stringExtra, CommunityInviteResponse.class);
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
            public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intentLaunchCommunity = InvitationWelcomeActivity.launchCommunity(InvitationWelcomeActivity.this.communityInvitResponse);
                intentLaunchCommunity.putExtra(ExternalPostPreviewFragment.SOURCE, "clipboardlink");
                safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(InvitationWelcomeActivity.this, intentLaunchCommunity);
                InvitationWelcomeActivity.this.finish();
            }
        });
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(CommunityDetailFragment.KEY_INVITATION_ID, this.invitationId);
    }
}
