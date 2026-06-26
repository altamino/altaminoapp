.class public final Lcom/narvii/chat/ChatCameraPreviewDialog;
.super Lcom/narvii/chat/BottomPopupDialog;
.source "ChatCameraPreviewDialog.kt"


# instance fields
.field private final flipBtn:Lcom/narvii/widget/TintButton;

.field private isCameraFlip:Z

.field private isCameraMute:Z

.field private final muteBtn:Lcom/narvii/widget/TintButton;

.field private previewFinishCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Lcom/narvii/model/User;

.field private final videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "account"

    .line 27
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService<AccountService>(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const-string v1, "ctx.getService<AccountSe\u2026e>(\"account\").userProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->user:Lcom/narvii/model/User;

    const v0, 0x7f0b0096

    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/chat/BottomPopupDialog;->setupView(I)Landroid/view/View;

    const v0, 0x7f09073d

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.mute_btn)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090496

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flip_btn)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090c52

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.video_camera_preview_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    iput-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    const v0, 0x7f090a96

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/ChatCameraPreviewDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatCameraPreviewDialog$1;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09073f

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/ChatCameraPreviewDialog$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatCameraPreviewDialog$2;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090497

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/ChatCameraPreviewDialog$3;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatCameraPreviewDialog$3;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->setUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 50
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateMute(Z)V

    .line 51
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateFlip(Z)V

    return-void
.end method

.method public static final synthetic access$isCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    return p0
.end method

.method public static final synthetic access$isCameraMute$p(Lcom/narvii/chat/ChatCameraPreviewDialog;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    return p0
.end method

.method public static final synthetic access$setCameraFlip$p(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    return-void
.end method

.method public static final synthetic access$setCameraMute$p(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    return-void
.end method

.method public static final synthetic access$updateFlip(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateFlip(Z)V

    return-void
.end method

.method public static final synthetic access$updateMute(Lcom/narvii/chat/ChatCameraPreviewDialog;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateMute(Z)V

    return-void
.end method

.method private final updateFlip(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useBackCamera()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    :goto_0
    return-void
.end method

.method private final updateMute(Z)V
    .locals 4

    const v0, 0x7f090497

    if-eqz p1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    const-string v2, "#EA1212"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 61
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    const-string v1, "#BBffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 66
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    const v3, 0x7f0802cd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-virtual {v0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraDestroy()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraSetting"

    return-object v0
.end method

.method public final getPreviewFinishCallback()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->previewFinishCallback:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final setPreviewFinishCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->previewFinishCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method
