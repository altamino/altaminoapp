package com.narvii.chat;

import android.graphics.Color;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.layout.VideoCameraPreviewView;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.widget.TintButton;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatCameraPreviewDialog extends BottomPopupDialog {

    @NotNull
    private final TintButton flipBtn;
    private boolean isCameraFlip;
    private boolean isCameraMute;

    @NotNull
    private final TintButton muteBtn;

    @Nullable
    private e8.p<? super Boolean, ? super Boolean, l0> previewFinishCallback;

    @NotNull
    private final User user;

    @NotNull
    private final VideoCameraPreviewView videoCameraPreviewView;

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "camera_setting";
    }

    @Nullable
    public final e8.p<Boolean, Boolean, l0> getPreviewFinishCallback() {
        return this.previewFinishCallback;
    }

    public final void setPreviewFinishCallback(@Nullable e8.p<? super Boolean, ? super Boolean, l0> pVar) {
        this.previewFinishCallback = pVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCameraPreviewDialog(@NotNull NVContext ctx) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        User userProfile = ((AccountService) ctx.getService("account")).getUserProfile();
        kotlin.jvm.internal.t.i(userProfile, "getUserProfile(...)");
        this.user = userProfile;
        setupView(R.layout.chat_camera_preview_dialog_layout);
        View viewFindViewById = findViewById(R.id.mute_btn);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        this.muteBtn = (TintButton) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.flip_btn);
        kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
        this.flipBtn = (TintButton) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.video_camera_preview_view);
        kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
        VideoCameraPreviewView videoCameraPreviewView = (VideoCameraPreviewView) viewFindViewById3;
        this.videoCameraPreviewView = videoCameraPreviewView;
        findViewById(R.id.start_tv).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatCameraPreviewDialog._init_$lambda$0(this.f1911a, view);
            }
        });
        findViewById(R.id.mute_fl).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatCameraPreviewDialog._init_$lambda$1(this.f1912a, view);
            }
        });
        findViewById(R.id.flip_fl).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatCameraPreviewDialog._init_$lambda$2(this.f1913a, view);
            }
        });
        videoCameraPreviewView.setUser(ctx, userProfile);
        updateMute(this.isCameraMute);
        updateFlip(this.isCameraFlip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(ChatCameraPreviewDialog this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickWildcardBuilder(this$0, "StartButton").send();
        e8.p<? super Boolean, ? super Boolean, l0> pVar = this$0.previewFinishCallback;
        if (pVar != null) {
            pVar.invoke(Boolean.valueOf(this$0.isCameraMute), Boolean.valueOf(this$0.isCameraFlip));
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(ChatCameraPreviewDialog this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        boolean z6 = !this$0.isCameraMute;
        this$0.isCameraMute = z6;
        this$0.updateMute(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(ChatCameraPreviewDialog this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        boolean z6 = !this$0.isCameraFlip;
        this$0.isCameraFlip = z6;
        this$0.updateFlip(z6);
    }

    private final void updateFlip(boolean z6) {
        if (z6) {
            this.videoCameraPreviewView.useBackCamera();
        } else {
            this.videoCameraPreviewView.useFrontCamera();
        }
    }

    private final void updateMute(boolean z6) {
        if (z6) {
            this.muteBtn.setTintColor(Color.parseColor("#EA1212"));
            this.muteBtn.setImageResource(R.drawable.ic_camera_muted);
            View viewFindViewById = findViewById(R.id.flip_fl);
            if (viewFindViewById != null) {
                viewFindViewById.setClickable(false);
            }
            this.flipBtn.setTintColor(Color.parseColor("#BBffffff"));
        } else {
            this.muteBtn.setTintColor(-1);
            this.muteBtn.setImageResource(R.drawable.ic_camera_normal);
            View viewFindViewById2 = findViewById(R.id.flip_fl);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setClickable(true);
            }
            this.flipBtn.setTintColor(-1);
        }
        this.videoCameraPreviewView.cameraMute(z6);
    }

    @Override // com.narvii.chat.BottomPopupDialog, com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.videoCameraPreviewView.cameraDestroy();
    }
}
