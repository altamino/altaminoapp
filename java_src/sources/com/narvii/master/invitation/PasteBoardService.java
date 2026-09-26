package com.narvii.master.invitation;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.statistics.TmpValue;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class PasteBoardService {
    private static final String KEY_PREFS_URLS = "pasteBoardUrl";
    public static final TmpValue<Boolean> SKIP = new TmpValue<>();
    private NVContext context;
    private SharedPreferences prefs;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void launch(final String str, final boolean z6) {
        new InviteHelper(NVApplication.instance()).requestInviteIdentify(str, new InviteHelper.LinkIdentifyInterface() { // from class: com.narvii.master.invitation.PasteBoardService.1
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
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

            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifyError(String str2) {
            }

            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifySuccess(CommunityInviteResponse communityInviteResponse) {
                AccountService accountService = (AccountService) PasteBoardService.this.context.getService("account");
                WeakReference<LoginActivity> weakReference = LoginActivity.instance;
                LoginActivity loginActivity = weakReference == null ? null : weakReference.get();
                if (loginActivity == null || !loginActivity.joiningCommunity) {
                    if (accountService != null && accountService.hasAccount()) {
                        if (communityInviteResponse.isCurrentUserJoined) {
                            PasteBoardService.this.updateUrl(str);
                            return;
                        }
                        Intent intent = new Intent(PasteBoardService.this.context.getContext(), (Class<?>) InvitationWelcomeActivity.class);
                        intent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(communityInviteResponse));
                        intent.setFlags(268435456);
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(PasteBoardService.this.context, intent);
                        PasteBoardService.this.updateUrl(str);
                        return;
                    }
                    Intent intentLaunchCommunity = InvitationWelcomeActivity.launchCommunity(communityInviteResponse);
                    intentLaunchCommunity.putExtra(CommunityDetailFragment.KEY_LOGIN_AHEAD, z6);
                    PasteBoardService.this.updateUrl(str);
                    if (loginActivity == null) {
                        intentLaunchCommunity.setFlags(268435456);
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(PasteBoardService.this.context, intentLaunchCommunity);
                    } else {
                        loginActivity.finish();
                        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(loginActivity, intentLaunchCommunity);
                        loginActivity.overridePendingTransition(0, 0);
                    }
                }
            }
        });
    }

    public boolean canCheckUrl(String str) {
        Set<String> stringSet = this.prefs.getStringSet(KEY_PREFS_URLS, null);
        if (stringSet == null) {
            return true;
        }
        if (stringSet.contains(str)) {
            return false;
        }
        for (String str2 : stringSet) {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && (str2.endsWith(str) || str.endsWith(str2))) {
                return false;
            }
        }
        return true;
    }

    public String getPasteBoardLink() {
        ClipData primaryClip;
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) this.context.getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || (text = primaryClip.getItemAt(0).getText()) == null) {
            return null;
        }
        return text.toString();
    }

    public void updateUrl(String str) {
        HashSet hashSet = new HashSet(this.prefs.getStringSet(KEY_PREFS_URLS, new HashSet()));
        hashSet.add(str);
        this.prefs.edit().putStringSet(KEY_PREFS_URLS, new HashSet(hashSet)).apply();
    }

    public PasteBoardService(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (Math.abs(jCurrentTimeMillis - this.prefs.getLong("pasteBoardBootTime", 0L)) > 60000) {
            Log.i("system rebooted");
            this.prefs.edit().remove(KEY_PREFS_URLS).putLong("pasteBoardBootTime", jCurrentTimeMillis).apply();
        }
    }

    public void checkClipboard() {
        String pasteBoardLink = getPasteBoardLink();
        TmpValue<Boolean> tmpValue = SKIP;
        boolean z6 = true;
        if ((tmpValue.peek() == null || (!tmpValue.peek().booleanValue())) && canCheckUrl(pasteBoardLink)) {
            if (ForwardActivity.isPermalink(pasteBoardLink)) {
                if ("1".equals(Uri.parse(pasteBoardLink).getQueryParameter("redirect_from_clipboard"))) {
                    Intent intent = new Intent(this.context.getContext(), (Class<?>) ForwardActivity.class);
                    intent.setData(Uri.parse(pasteBoardLink));
                    updateUrl(pasteBoardLink);
                    intent.setFlags(268435456);
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                    return;
                }
                return;
            }
            if (ForwardActivity.isInviteLink(pasteBoardLink) || ForwardActivity.isInviteCode(pasteBoardLink) || ForwardActivity.isCommunityLink(pasteBoardLink)) {
                tmpValue.set(Boolean.TRUE, 15000L);
                if (!ForwardActivity.isInviteLink(pasteBoardLink) && !ForwardActivity.isInviteCode(pasteBoardLink)) {
                    z6 = false;
                }
                launch(pasteBoardLink, z6);
            }
        }
    }
}
