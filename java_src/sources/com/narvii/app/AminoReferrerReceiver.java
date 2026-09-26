package com.narvii.app;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.narvii.account.LoginActivity;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.InvitationWelcomeActivity;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.util.Log;
import com.narvii.util.googleplay.ReferrerReceiver;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.statistics.constants.EventConstants;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class AminoReferrerReceiver extends ReferrerReceiver {
    protected final TmpValue<Boolean> deferredStarted = new TmpValue<>();

    public static void safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.util.googleplay.ReferrerReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        super.onReceive(context, intent);
        String stringExtra = intent.getStringExtra("referrer");
        if (stringExtra == null) {
            return;
        }
        String strQuery = ReferrerReceiver.query(stringExtra, "deferred_link");
        if (!TextUtils.isEmpty(strQuery)) {
            ((SharedPreferences) NVApplication.instance().getService(IncubatorApplication.PREFS_SERVICE_KEY)).edit().putString("deferredLink", strQuery).apply();
            StatisticsService statisticsService = (StatisticsService) NVApplication.instance().getService("statistics");
            statisticsService.setDeviceProperty("deferred_link", strQuery);
            if (strQuery.startsWith("ndc://")) {
                str = "native";
            } else if (ForwardActivity.isPermalink(strQuery)) {
                str = "permalink";
            } else if (ForwardActivity.isCommunityLink(strQuery)) {
                str = "communitylink";
            } else if (ForwardActivity.isInviteLink(strQuery)) {
                str = "invitelink";
            } else {
                str = SearchPrefsHelper.PREFS_KEY_OTHERS;
            }
            statisticsService.setDeviceProperty("deferred_link_type", str);
        }
        if (strQuery != null && (ForwardActivity.isInviteLink(strQuery) || ForwardActivity.isCommunityLink(strQuery))) {
            Log.i("open deferred invite link " + strQuery);
            final boolean zIsInviteLink = ForwardActivity.isInviteLink(strQuery);
            TmpValue<Boolean> tmpValue = PasteBoardService.SKIP;
            if (tmpValue.peek() == null || (!tmpValue.peek().booleanValue())) {
                PasteBoardService pasteBoardService = (PasteBoardService) NVApplication.instance().getService("pasteBoard");
                if (!pasteBoardService.canCheckUrl(strQuery)) {
                    return;
                }
                pasteBoardService.updateUrl(strQuery);
                ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", strQuery).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.app.AminoReferrerReceiver.1
                    public static void safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                        Intent intentLaunchCommunity = InvitationWelcomeActivity.launchCommunity(communityInviteResponse);
                        intentLaunchCommunity.putExtra(CommunityDetailFragment.KEY_LOGIN_AHEAD, zIsInviteLink);
                        intentLaunchCommunity.putExtra(ExternalPostPreviewFragment.SOURCE, "Deferred Deep Linking");
                        WeakReference<LoginActivity> weakReference = LoginActivity.instance;
                        LoginActivity loginActivity = weakReference == null ? null : weakReference.get();
                        if (loginActivity != null) {
                            loginActivity.finish();
                            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(loginActivity, intentLaunchCommunity);
                            loginActivity.overridePendingTransition(0, 0);
                        } else {
                            intentLaunchCommunity.setFlags(268435456);
                            safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication.instance(), intentLaunchCommunity);
                        }
                        StatisticsEventBuilder statisticsEventBuilderParam = ((StatisticsService) NVApplication.instance().getService("statistics")).event("Deferred Deep Linking").param(EventConstants.CommentPost.TYPE, TextUtils.isEmpty(communityInviteResponse.invitationId) ? "Invite Link" : "Invite Code");
                        Community community = communityInviteResponse.community;
                        statisticsEventBuilderParam.param("Community Name", community != null ? community.name : null);
                    }
                });
                this.deferredStarted.set(Boolean.TRUE);
                return;
            }
            return;
        }
        if (strQuery != null) {
            Log.i("open deferred link " + strQuery);
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(strQuery));
                intent2.setFlags(268435456);
                safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(NVApplication.instance(), intent2);
                this.deferredStarted.set(Boolean.TRUE);
                ((StatisticsService) NVApplication.instance().getService("statistics")).event("Deferred Deep Linking").param(EventConstants.CommentPost.TYPE, "Native Link");
            } catch (Exception unused) {
                Log.e("unable to open deferred deep link " + strQuery);
            }
        }
    }
}
