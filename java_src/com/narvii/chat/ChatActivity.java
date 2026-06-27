package com.narvii.chat;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import com.narvii.util.statistics.TmpValue;

/* loaded from: classes.dex */
public class ChatActivity extends FragmentWrapperActivity {
    public TmpValue<Boolean> DISABLE_FLOATING_WINDOW = new TmpValue<>();

    public static String statChannelType(int i) {
        if (i == 1) {
            return "Voice";
        }
        if (i == 3) {
            return "Avatar";
        }
        if (i == 4) {
            return "Video";
        }
        if (i != 5) {
            return null;
        }
        return "Screening Room";
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Activity lastResumedActivity = ((TopActivityService) getService("topActivity")).getLastResumedActivity();
        if (!(lastResumedActivity instanceof ChatActivity) || ((NVActivity) lastResumedActivity).isDestoryed() || lastResumedActivity.isFinishing() || !Utils.isEqualsNotNull(lastResumedActivity.getIntent().getStringExtra("id"), getStringParam("id"))) {
            return;
        }
        finish();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            ((ChatInputFragment) ((ChatFragment) getRootFragment()).getChildFragmentManager().findFragmentByTag("chatInput")).setAdsVisible(configuration.orientation != 2);
        } catch (Exception unused) {
        }
    }

    public void setAllowFloatingWindow(boolean z) {
        if (getRootFragment() instanceof ChatFragment) {
            ((ChatFragment) getRootFragment()).setAllowFloatingWindow(z);
        }
    }

    public void disableFloatingWindow() {
        this.DISABLE_FLOATING_WINDOW.set(true, 500L);
    }

    public void setNoNeedToAutoJoin(boolean z) {
        if (getRootFragment() instanceof ChatFragment) {
            Fragment fragmentFindFragmentByTag = ((ChatFragment) getRootFragment()).getChildFragmentManager().findFragmentByTag(ChatFragment.FRAGMENT_TAG_VV_MAIN);
            if (fragmentFindFragmentByTag instanceof VVChatMainFragment) {
                ((VVChatMainFragment) fragmentFindFragmentByTag).setNoNeedAutoJoin(true);
            }
        }
    }
}
