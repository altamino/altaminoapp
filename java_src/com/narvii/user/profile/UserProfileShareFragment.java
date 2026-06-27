package com.narvii.user.profile;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.SharePayload;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class UserProfileShareFragment extends ShareDarkRoomFragment {
    private static TmpValue<Bitmap> DYNAMIC_PROFILE_IMG = new TmpValue<>();
    private User user;

    @Override // com.narvii.share.ShareDarkRoomFragment
    public int contentLayoutId() {
        return R.layout.share_user_profile_content_layout;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        super.onCreate(bundle);
        if (bundle != null) {
            stringParam = bundle.getString(ShareDarkRoomFragment.KEY_SHARE_OBJECT);
        } else {
            stringParam = getStringParam(ShareDarkRoomFragment.KEY_SHARE_OBJECT);
        }
        this.user = (User) JacksonUtils.readAs(stringParam, User.class);
    }

    public static Bitmap getDynamicProfileImg() {
        return DYNAMIC_PROFILE_IMG.getAndRemove();
    }

    public static void saveDynamicProfileImg(Bitmap bitmap) {
        DYNAMIC_PROFILE_IMG.set(bitmap, 1000L);
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public void configContentView(View view) {
        ((NVImageView) view.findViewById(R.id.real_share_layout)).setImageBitmap(getDynamicProfileImg());
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public SharePayload getPreContentPayload(View view) {
        Bitmap bitmapCaptureScreen = captureScreen(view.findViewById(R.id.real_share_layout));
        Uri uriStorageBitmapScreen = storageBitmapScreen(Scopes.PROFILE, bitmapCaptureScreen);
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = this.user;
        sharePayload.needTranslateLink = true;
        sharePayload.uri = uriStorageBitmapScreen;
        sharePayload.bitmap = bitmapCaptureScreen;
        String userId = ((AccountService) getService("account")).getUserId();
        User user = this.user;
        if (Utils.isEqualsNotNull(userId, user == null ? null : user.id())) {
            sharePayload.text = getString(R.string.share_own_profile_text_template, community.name);
        } else {
            sharePayload.text = getString(R.string.share_other_profile_text_template, community.name);
        }
        return sharePayload;
    }
}
