package com.narvii.scene.dialog;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.google.android.exoplayer2.C;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.util.PackageUtils;

/* loaded from: classes3.dex */
public class VideoAdvanceDialog extends NVDialog implements View.OnClickListener {
    private ImageView backgroundImage;
    private ViewGroup contentView;
    NVContext nvContext;

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "AdvancedEditingTools";
    }

    @Override // com.narvii.app.NVDialog
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    public VideoAdvanceDialog(NVContext nVContext) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.nvContext = nVContext;
        setContentView(com.narvii.mediaeditor.R.layout.dialog_video_advance);
        findViewById(com.narvii.mediaeditor.R.id.layout_inshot).setOnClickListener(this);
        findViewById(com.narvii.mediaeditor.R.id.layout_vue).setOnClickListener(this);
        findViewById(com.narvii.mediaeditor.R.id.layout_storyboard).setOnClickListener(this);
        this.contentView = (ViewGroup) findViewById(com.narvii.mediaeditor.R.id.content_view);
        this.backgroundImage = (ImageView) findViewById(com.narvii.mediaeditor.R.id.blur_bg);
        this.backgroundImage.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == com.narvii.mediaeditor.R.id.layout_inshot) {
            sendClickVideoAppLog("InShot");
            launch("com.camerasideas.instashot");
        } else if (id == com.narvii.mediaeditor.R.id.layout_vue) {
            sendClickVideoAppLog("Vue");
            launch("video.vue.android");
        } else if (id == com.narvii.mediaeditor.R.id.layout_storyboard) {
            sendClickVideoAppLog("Storyboard");
            launch(new PackageUtils(this.nvContext.getContext()).getStoryboardName());
        }
        dismiss();
    }

    private void sendClickVideoAppLog(String str) {
        LogEvent.builder(this).area("Tools").actClick().actSemantic(ActSemantic.checkDetail).extraParam("toolName", str).toThirdParty().send();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        ImageView imageView = this.backgroundImage;
        if (imageView != null) {
            imageView.startAnimation(alphaAnimation);
        }
        this.contentView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_up));
    }

    private void launch(String str) {
        if (checkAppExist(str)) {
            launchApp(str);
        } else {
            launchStoreDetail(str, "");
        }
    }

    public void launchApp(String str) {
        Intent launchIntentForPackage = getContext().getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null) {
            if (getContext() instanceof Activity) {
                launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
            }
            getContext().startActivity(launchIntentForPackage);
        }
    }

    public boolean checkAppExist(String str) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = getContext().getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public void launchStoreDetail(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
            if (!TextUtils.isEmpty(str2)) {
                intent.setPackage(str2);
            }
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            getContext().startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
