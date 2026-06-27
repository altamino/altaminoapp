package com.narvii.media;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.chat.core.ChatService;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class MediaGalleryOptionActivity extends MediaGalleryActivity {
    AccountService accountService;
    ImageView backIcon;
    ChatService chatService;
    OptionMenuFragment fragment;

    @Override // com.narvii.media.MediaGalleryActivity
    protected int getLayoutId() {
        return R.layout.media_gallery_option;
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onCreate(bundle);
        findViewById(R.id.share_media_bar).setVisibility(4);
        this.accountService = (AccountService) getService("account");
        this.chatService = (ChatService) getService("chat");
        this.backIcon = (ImageView) findViewById(R.id.actionbar_back);
        this.backIcon.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaGalleryOptionActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaGalleryOptionActivity.this.finish();
            }
        });
        if ((getIntParam("__communityId") <= 0 || getBooleanParam("preview", false)) && !getBooleanParam("forceUHQ", false)) {
            return;
        }
        findViewById(R.id.option_menu_container).setVisibility(0);
        this.fragment = OptionMenuFragment.newInstance(JacksonUtils.writeAsString(getCurrentMedia()), getStringParam("parent"), getIntent().getSerializableExtra("parentClass"), getBooleanParam("forceUHQ"));
        getSupportFragmentManager().beginTransaction().replace(R.id.option_menu_container, this.fragment).commit();
    }

    @Override // com.narvii.media.MediaGalleryActivity
    protected void onPageSelectedFinished(int i) {
        super.onPageSelectedFinished(i);
        OptionMenuFragment optionMenuFragment = this.fragment;
        if (optionMenuFragment != null) {
            optionMenuFragment.setMedia(getCurrentMedia());
        }
    }
}
