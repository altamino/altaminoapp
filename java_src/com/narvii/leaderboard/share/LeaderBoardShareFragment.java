package com.narvii.leaderboard.share;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.leaderboard.LeaderBoardShareHelper;
import com.narvii.model.Community;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.SharePayload;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class LeaderBoardShareFragment extends ShareDarkRoomFragment {
    public static final String KEY_STATISTIC_TAB = "statistics_tab";
    LeaderBoardShareHelper leaderBoardShareHelper;

    @Override // com.narvii.share.ShareDarkRoomFragment
    public int contentLayoutId() {
        return R.layout.share_leaderboard_content_layout;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.leaderBoardShareHelper = new LeaderBoardShareHelper(this);
    }

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setTitle(getString(R.string.leader_board_share));
        this.shareDialogHelper.statContent = "leaderboard";
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public void configContentView(View view) {
        ((NVImageView) view.findViewById(R.id.real_share_layout)).setImageDrawable((BitmapDrawable) this.leaderBoardShareHelper.getScreenShot());
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public SharePayload getPreContentPayload(View view) {
        Bitmap bitmapCaptureScreen = captureScreen(view.findViewById(R.id.real_share_layout));
        Uri uriStorageBitmapScreen = storageBitmapScreen("leaderboard", bitmapCaptureScreen);
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = null;
        sharePayload.text = getContext().getString(R.string.share_leader_board_text_template, community.name);
        sharePayload.needTranslateLink = false;
        sharePayload.url = community != null ? community.link : null;
        sharePayload.uri = uriStorageBitmapScreen;
        sharePayload.bitmap = bitmapCaptureScreen;
        return sharePayload;
    }
}
