package com.narvii.media;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.chat.core.ChatService;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes9.dex */
public class MediaGalleryOptionActivity extends MediaGalleryActivity {
    AccountService accountService;
    ImageView backIcon;
    ChatService chatService;
    OptionMenuFragment fragment;

    @Override // com.narvii.media.MediaGalleryActivity
    protected int getLayoutId() {
        return R.layout.media_gallery_option;
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.share_media_bar).setVisibility(4);
        this.accountService = (AccountService) getService("account");
        this.chatService = (ChatService) getService("chat");
        ImageView imageView = (ImageView) findViewById(R.id.actionbar_back);
        this.backIcon = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaGalleryOptionActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaGalleryOptionActivity.this.finish();
            }
        });
        if ((getIntParam("__communityId") > 0 && !getBooleanParam("preview", false)) || getBooleanParam("forceUHQ", false)) {
            findViewById(R.id.option_menu_container).setVisibility(0);
            this.fragment = OptionMenuFragment.newInstance(JacksonUtils.writeAsString(getCurrentMedia()), getStringParam("parent"), getIntent().getSerializableExtra("parentClass"), getBooleanParam("forceUHQ"));
            getSupportFragmentManager().q().u(R.id.option_menu_container, this.fragment).j();
        }
    }

    @Override // com.narvii.media.MediaGalleryActivity
    protected void onPageSelectedFinished(int i10) {
        super.onPageSelectedFinished(i10);
        OptionMenuFragment optionMenuFragment = this.fragment;
        if (optionMenuFragment != null) {
            optionMenuFragment.setMedia(getCurrentMedia());
        }
    }
}
