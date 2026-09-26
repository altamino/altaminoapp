.class public final Lcom/narvii/chat/ChatCameraPreviewDialog;
.super Lcom/narvii/chat/BottomPopupDialog;
.source "SourceFile"


# instance fields
.field private final flipBtn:Lcom/narvii/widget/TintButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCameraFlip:Z

.field private isCameraMute:Z

.field private final muteBtn:Lcom/narvii/widget/TintButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previewFinishCallback:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final user:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "getUserProfile(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->user:Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0d00ac

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/chat/BottomPopupDialog;->setupView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0a09c5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "findViewById(...)"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0a05d7

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a0f78

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 78
    .line 79
    .line 80
    const v2, 0x7f0a0d8d

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    new-instance v3, Lcom/narvii/chat/e;

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, p0}, Lcom/narvii/chat/e;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    const v2, 0x7f0a09c7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    new-instance v3, Lcom/narvii/chat/f;

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, p0}, Lcom/narvii/chat/f;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    const v2, 0x7f0a05d8

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    new-instance v3, Lcom/narvii/chat/g;

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, p0}, Lcom/narvii/chat/g;-><init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->setUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 126
    .line 127
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateMute(Z)V

    .line 131
    .line 132
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateFlip(Z)V

    .line 136
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "StartButton"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->previewFinishCallback:Le8/p;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatCameraPreviewDialog;->dismiss()V

    .line 37
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraMute:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateMute(Z)V

    .line 15
    return-void
.end method

.method private static final _init_$lambda$2(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->isCameraFlip:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->updateFlip(Z)V

    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->_init_$lambda$0(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->_init_$lambda$2(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->_init_$lambda$1(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V

    return-void
.end method

.method private final updateFlip(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useBackCamera()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->useFrontCamera()V

    .line 14
    :goto_0
    return-void
.end method

.method private final updateMute(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a05d8

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    .line 8
    .line 9
    const-string v2, "#EA1212"

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0803d6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    .line 38
    .line 39
    const-string v1, "#BBffffff"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    .line 50
    const/4 v2, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->muteBtn:Lcom/narvii/widget/TintButton;

    .line 56
    .line 57
    .line 58
    const v3, 0x7f0803d7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 73
    .line 74
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->flipBtn:Lcom/narvii/widget/TintButton;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 78
    .line 79
    :goto_2
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraMute(Z)V

    .line 83
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->videoCameraPreviewView:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->cameraDestroy()V

    .line 9
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "camera_setting"

    return-object v0
.end method

.method public final getPreviewFinishCallback()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->previewFinishCallback:Le8/p;

    return-object v0
.end method

.method public final setPreviewFinishCallback(Le8/p;)V
    .locals 0
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatCameraPreviewDialog;->previewFinishCallback:Le8/p;

    return-void
.end method
