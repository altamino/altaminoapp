package com.narvii.chat;

import android.content.res.Resources;
import android.graphics.Color;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.layout.VideoCameraPreviewView;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.widget.TintButton;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatCameraPreviewDialog.kt */
/* loaded from: classes2.dex */
public final class ChatCameraPreviewDialog extends BottomPopupDialog {
    private final TintButton flipBtn;
    private boolean isCameraFlip;
    private boolean isCameraMute;
    private final TintButton muteBtn;
    private Function2<? super Boolean, ? super Boolean, Unit> previewFinishCallback;
    private final User user;
    private final VideoCameraPreviewView videoCameraPreviewView;

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "CameraSetting";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCameraPreviewDialog(NVContext ctx) throws IOException {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService<AccountService>(\"account\")");
        User userProfile = ((AccountService) service).getUserProfile();
        Intrinsics.checkExpressionValueIsNotNull(userProfile, "ctx.getService<AccountSe…e>(\"account\").userProfile");
        this.user = userProfile;
        setupView(R.layout.chat_camera_preview_dialog_layout);
        View viewFindViewById = findViewById(R.id.mute_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.mute_btn)");
        this.muteBtn = (TintButton) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.flip_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.flip_btn)");
        this.flipBtn = (TintButton) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.video_camera_preview_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.video_camera_preview_view)");
        this.videoCameraPreviewView = (VideoCameraPreviewView) viewFindViewById3;
        findViewById(R.id.start_tv).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatCameraPreviewDialog.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Resources.NotFoundException, IOException {
                LogEvent.clickWildcardBuilder(ChatCameraPreviewDialog.this, "StartButton").send();
                Function2<Boolean, Boolean, Unit> previewFinishCallback = ChatCameraPreviewDialog.this.getPreviewFinishCallback();
                if (previewFinishCallback != null) {
                    previewFinishCallback.invoke(Boolean.valueOf(ChatCameraPreviewDialog.this.isCameraMute), Boolean.valueOf(ChatCameraPreviewDialog.this.isCameraFlip));
                }
                ChatCameraPreviewDialog.this.dismiss();
            }
        });
        findViewById(R.id.mute_fl).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatCameraPreviewDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ChatCameraPreviewDialog.this.isCameraMute = !r2.isCameraMute;
                ChatCameraPreviewDialog chatCameraPreviewDialog = ChatCameraPreviewDialog.this;
                chatCameraPreviewDialog.updateMute(chatCameraPreviewDialog.isCameraMute);
            }
        });
        findViewById(R.id.flip_fl).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatCameraPreviewDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ChatCameraPreviewDialog.this.isCameraFlip = !r2.isCameraFlip;
                ChatCameraPreviewDialog chatCameraPreviewDialog = ChatCameraPreviewDialog.this;
                chatCameraPreviewDialog.updateFlip(chatCameraPreviewDialog.isCameraFlip);
            }
        });
        this.videoCameraPreviewView.setUser(ctx, this.user);
        updateMute(this.isCameraMute);
        updateFlip(this.isCameraFlip);
    }

    public final Function2<Boolean, Boolean, Unit> getPreviewFinishCallback() {
        return this.previewFinishCallback;
    }

    public final void setPreviewFinishCallback(Function2<? super Boolean, ? super Boolean, Unit> function2) {
        this.previewFinishCallback = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateMute(boolean z) throws IOException {
        if (z) {
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
        this.videoCameraPreviewView.cameraMute(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFlip(boolean z) throws IOException {
        if (z) {
            this.videoCameraPreviewView.useBackCamera();
        } else {
            this.videoCameraPreviewView.useFrontCamera();
        }
    }

    @Override // com.narvii.chat.BottomPopupDialog, com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() throws Resources.NotFoundException, IOException {
        super.dismiss();
        this.videoCameraPreviewView.cameraDestroy();
    }
}
