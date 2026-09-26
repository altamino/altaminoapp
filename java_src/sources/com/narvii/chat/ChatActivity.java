package com.narvii.chat;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.ad.MediaLabInterstitials;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.TmpValue;

/* JADX INFO: loaded from: classes6.dex */
public class ChatActivity extends FragmentWrapperActivity {
    public TmpValue<Boolean> DISABLE_FLOATING_WINDOW = new TmpValue<>();

    public static String statChannelType(int i10) {
        if (i10 == 1) {
            return "Voice";
        }
        if (i10 == 3) {
            return "Avatar";
        }
        if (i10 == 4) {
            return "Video";
        }
        if (i10 != 5) {
            return null;
        }
        return "Screening Room";
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        setConversationScreen(true);
        super.onCreate(bundle);
        Activity lastResumedActivity = ((TopActivityService) getService("topActivity")).getLastResumedActivity();
        if ((lastResumedActivity instanceof ChatActivity) && !((NVActivity) lastResumedActivity).isDestoryed() && !lastResumedActivity.isFinishing() && Utils.isEqualsNotNull(lastResumedActivity.getIntent().getStringExtra("id"), getStringParam("id"))) {
            finish();
        }
        FirebaseLogManager.logEvent(this, "open_chat_thread", null);
        MediaLabInterstitials.INSTANCE.showAdWithDelayedAction("open_chat", null);
    }

    @Override // com.narvii.app.theme.NVThemeActivity
    public int provideAdsResourceId() {
        return R.layout.activity_base_medialab_banner_chat;
    }

    public void disableFloatingWindow() {
        this.DISABLE_FLOATING_WINDOW.set(Boolean.TRUE, 500L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MediaLabInterstitials.INSTANCE.showAdWithDelayedAction("close_chat", null);
    }

    public void setAllowFloatingWindow(boolean z6) {
        if (getRootFragment() instanceof ChatFragment) {
            ((ChatFragment) getRootFragment()).setAllowFloatingWindow(z6);
        }
    }

    public void setNoNeedToAutoJoin(boolean z6) {
        if (getRootFragment() instanceof ChatFragment) {
            Fragment fragmentM0 = ((ChatFragment) getRootFragment()).getChildFragmentManager().m0(ChatFragment.FRAGMENT_TAG_VV_MAIN);
            if (fragmentM0 instanceof VVChatMainFragment) {
                ((VVChatMainFragment) fragmentM0).setNoNeedAutoJoin(true);
            }
        }
    }
}
