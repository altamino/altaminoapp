.class public final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/callback/SceneMediaPickerCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/narvii/app/NVActivity;

.field final synthetic $draftPath:Ljava/lang/String;

.field final synthetic $finishActivity:Z

.field final synthetic $sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private final errorDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$finishActivity:Z

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$draftPath:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    new-instance p3, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/scene/template/SceneTemplateHelper;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->progressDialog$delegate:Lw7/m;

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p1}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->errorDialog$delegate:Lw7/m;

    .line 34
    return-void
.end method

.method private final isDestroy()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final sendNotification(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/scene/notification/CloseSceneTemplateObject;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;->id:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 12
    .line 13
    const-string v1, "new"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->errorDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->progressDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    return-object v0
.end method

.method public onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->isDestroy()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getErrorDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    :cond_2
    return-void
.end method

.method public onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V
    .locals 6
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/videotemplate/Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "template"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "videoFilePath"

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p1, "videoStreamInfo"

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->isDestroy()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    return-void

    .line 53
    .line 54
    :cond_2
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 58
    .line 59
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v0, Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    iput-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 73
    const/4 p3, 0x0

    .line 74
    .line 75
    iput p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 76
    .line 77
    iget p4, p4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 81
    move-result v0

    .line 82
    .line 83
    .line 84
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 85
    move-result p4

    .line 86
    .line 87
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 88
    .line 89
    const/16 p4, 0x10

    .line 90
    .line 91
    iput p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 92
    .line 93
    iget-object p4, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 94
    const/4 v0, 0x1

    .line 95
    .line 96
    new-array v0, v0, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 97
    .line 98
    aput-object p1, v0, p3

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iput-object p1, p4, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 107
    .line 108
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 109
    .line 110
    iget-boolean p2, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$finishActivity:Z

    .line 111
    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    const-string p2, "$sceneInfo"

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->sendNotification(Lcom/narvii/scene/model/SceneInfo;)V

    .line 121
    .line 122
    new-instance v0, Lcom/narvii/scene/helper/SceneListHelper;

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 130
    const/4 v2, 0x0

    .line 131
    .line 132
    iget-object v3, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$draftPath:Ljava/lang/String;

    .line 133
    const/4 v4, 0x3

    .line 134
    .line 135
    const-string v5, ""

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;ILjava/lang/String;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 144
    :cond_3
    return-void
.end method

.method public onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    .line 13
    return-void
.end method

.method public onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "helper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/scene/view/ProgressRingDialog;->show()V

    .line 13
    return-void
.end method
