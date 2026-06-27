package com.narvii.master.invitation;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.invitation.InviteHelper;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class PasteBoardService {
    private static final String KEY_PREFS_URLS = "pasteBoardUrl";
    public static final TmpValue<Boolean> SKIP = new TmpValue<>();
    private NVContext context;
    private SharedPreferences prefs;

    public PasteBoardService(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) this.context.getService("prefs");
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (Math.abs(jCurrentTimeMillis - this.prefs.getLong("pasteBoardBootTime", 0L)) > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
            Log.i("system rebooted");
            this.prefs.edit().remove(KEY_PREFS_URLS).putLong("pasteBoardBootTime", jCurrentTimeMillis).apply();
        }
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

    public void checkClipboard() {
        String pasteBoardLink = getPasteBoardLink();
        boolean z = true;
        if ((SKIP.peek() == null || (!SKIP.peek().booleanValue()) == Boolean.TRUE.booleanValue()) && canCheckUrl(pasteBoardLink)) {
            if (ForwardActivity.isPermalink(pasteBoardLink)) {
                if (IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(Uri.parse(pasteBoardLink).getQueryParameter("redirect_from_clipboard"))) {
                    Intent intent = new Intent(this.context.getContext(), (Class<?>) ForwardActivity.class);
                    intent.setData(Uri.parse(pasteBoardLink));
                    updateUrl(pasteBoardLink);
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    this.context.startActivity(intent);
                    return;
                }
                return;
            }
            if (ForwardActivity.isInviteLink(pasteBoardLink) || ForwardActivity.isInviteCode(pasteBoardLink) || ForwardActivity.isCommunityLink(pasteBoardLink)) {
                SKIP.set(true, ScenePollPlayView.POLL_COUNT_DOWN_MS);
                if (!ForwardActivity.isInviteLink(pasteBoardLink) && !ForwardActivity.isInviteCode(pasteBoardLink)) {
                    z = false;
                }
                launch(pasteBoardLink, z);
            }
        }
    }

    private void launch(final String str, final boolean z) {
        new InviteHelper(NVApplication.instance()).requestInviteIdentify(str, new InviteHelper.LinkIdentifyInterface() { // from class: com.narvii.master.invitation.PasteBoardService.1
            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifyError(String str2) {
            }

            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifySuccess(CommunityInviteResponse communityInviteResponse) {
                AccountService accountService = (AccountService) PasteBoardService.this.context.getService("account");
                ConfigService configService = (ConfigService) NVApplication.instance().getService("config");
                WeakReference<LoginActivity> weakReference = LoginActivity.instance;
                LoginActivity loginActivity = weakReference == null ? null : weakReference.get();
                boolean z2 = loginActivity != null && loginActivity.joiningCommunity;
                if (NVApplication.CLIENT_TYPE == 101) {
                    if (Utils.isEqualsNotNull(Integer.valueOf(configService.getCommunityId()), Integer.valueOf(communityInviteResponse.community.id)) && !z2) {
                        if (accountService != null && accountService.hasAccount()) {
                            if (!communityInviteResponse.isCurrentUserJoined) {
                                Intent intent = new Intent(PasteBoardService.this.context.getContext(), (Class<?>) InvitationWelcomeActivity.class);
                                intent.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, communityInviteResponse.invitationId);
                                PasteBoardService.this.context.getContext().startActivity(intent);
                            }
                            PasteBoardService.this.updateUrl(str);
                            return;
                        }
                        Intent intent2 = new Intent(PasteBoardService.this.context.getContext(), (Class<?>) LoginActivity.class);
                        String str2 = communityInviteResponse.invitationId;
                        if (str2 != null) {
                            intent2.putExtra(CommunityDetailFragment.KEY_INVITATION_ID, str2);
                        }
                        intent2.putExtra("promptType", LoginActivity.PromptType.Required.name());
                        PasteBoardService.this.context.getContext().startActivity(intent2);
                        return;
                    }
                    return;
                }
                if (z2) {
                    return;
                }
                if (accountService != null && accountService.hasAccount()) {
                    if (communityInviteResponse.isCurrentUserJoined) {
                        PasteBoardService.this.updateUrl(str);
                        return;
                    }
                    Intent intent3 = new Intent(PasteBoardService.this.context.getContext(), (Class<?>) InvitationWelcomeActivity.class);
                    intent3.putExtra("community", JacksonUtils.writeAsString(communityInviteResponse));
                    intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                    PasteBoardService.this.context.startActivity(intent3);
                    PasteBoardService.this.updateUrl(str);
                    return;
                }
                Intent intentLaunchCommunity = InvitationWelcomeActivity.launchCommunity(communityInviteResponse);
                intentLaunchCommunity.putExtra(CommunityDetailFragment.KEY_LOGIN_AHEAD, z);
                PasteBoardService.this.updateUrl(str);
                if (loginActivity != null) {
                    loginActivity.finish();
                    loginActivity.startActivity(intentLaunchCommunity);
                    loginActivity.overridePendingTransition(0, 0);
                } else {
                    intentLaunchCommunity.setFlags(C.ENCODING_PCM_MU_LAW);
                    PasteBoardService.this.context.startActivity(intentLaunchCommunity);
                }
            }
        });
    }
}
