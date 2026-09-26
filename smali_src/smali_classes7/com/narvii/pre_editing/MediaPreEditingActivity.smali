.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;


# instance fields
.field private binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

.field private final dialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private doFakeTrim:Z

.field private inputMedia:Lcom/narvii/model/Media;

.field private outputPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

.field private preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

.field private trimVideoAuto:Z

.field private final trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private youtubeService:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->dialog$delegate:Lw7/m;

    .line 33
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDialog(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrimVideoAuto$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getTrimVideoGenerator$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/TrimVideoGenerator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/bean/PreEditVideoUrl;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 3
    return-void
.end method

.method public static final synthetic access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V

    .line 4
    return-void
.end method

.method public static final synthetic access$updatePlayState(Lcom/narvii/pre_editing/MediaPreEditingActivity;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->updatePlayState(Z)V

    .line 4
    return-void
.end method

.method private final formatCropInterval(J)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0x3e8

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    rem-long v2, p1, v0

    .line 6
    .line 7
    const/16 v4, 0x64

    .line 8
    int-to-long v4, v4

    .line 9
    div-long/2addr v2, v4

    .line 10
    div-long/2addr p1, v0

    .line 11
    .line 12
    sget v0, Lcom/narvii/mediaeditor/R$string;->trim_selected_time:I

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    new-array v4, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v5, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 18
    .line 19
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    const/4 v6, 0x2

    .line 21
    .line 22
    new-array v7, v6, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    aput-object p1, v7, p2

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    aput-object p1, v7, v1

    .line 36
    .line 37
    .line 38
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v1, "%01d.%1d"

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v1, "format(...)"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    aput-object p1, v4, p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string p2, "getString(...)"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    return-object p1
.end method

.method private final getDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->dialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method public static synthetic s(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError$lambda$0(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/view/View;)V

    return-void
.end method

.method private final showError(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    sget v0, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/pre_editing/a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/a;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    .line 27
    .line 28
    .line 29
    const v1, 0x104000a

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 40
    return-void
.end method

.method private static final showError$lambda$0(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    .line 13
    return-void
.end method

.method private final startParseUrl(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "binding"

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    move-object p1, v3

    .line 23
    .line 24
    :cond_0
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoProgressView:Lcom/narvii/widget/SpinningView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    const-string p1, "youtubeService"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object p1, v3

    .line 38
    .line 39
    :cond_1
    new-instance v1, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v3, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    new-instance v0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 49
    .line 50
    const-string v1, "http"

    .line 51
    const/4 v4, 0x2

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v2, v4, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    const-string v1, "photoManager"

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 68
    move-object v1, v3

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p1}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    .line 94
    const-string p1, "inputMedia"

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v3, p1

    .line 100
    .line 101
    :goto_1
    iget-wide v0, v3, Lcom/narvii/model/Media;->duration:J

    .line 102
    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_6
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 110
    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    const-string p1, "player"

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 117
    move-object p1, v3

    .line 118
    .line 119
    :cond_7
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getVideoUrl()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-virtual {p1, v3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->prepare(Ljava/lang/String;)V

    .line 129
    :goto_2
    return-void
.end method

.method private final startTrimVideo(JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-wide v5, p1

    .line 3
    move-wide v7, p3

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    const-string v2, "trimStartTime"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 18
    .line 19
    const-string v2, "trimEndTime"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    const-string v3, "index"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3, v2}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const/4 v2, -0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_0
    sub-long v1, v7, v5

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    sget v9, Lcom/narvii/mediaeditor/R$string;->importing:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object v3, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    const-string v3, "player"

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    .line 77
    .line 78
    :cond_1
    const/16 v4, 0x28

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 82
    .line 83
    iget-object v3, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v9, "ytb_"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const/16 v9, 0x5f

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    move-result-wide v9

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v9, ".mp4"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    iget-object v9, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getDownloadUrl()Lw7/u;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    iget-object v10, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v11, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;

    .line 136
    .line 137
    .line 138
    invoke-direct {v11, p0, v1, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$1$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;J)V

    .line 139
    move-object v1, v9

    .line 140
    move-object v2, v3

    .line 141
    move-object v3, v10

    .line 142
    move-wide v5, p1

    .line 143
    move-wide v7, p3

    .line 144
    move-object v9, v11

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lw7/u;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 148
    :cond_2
    return-void
.end method

.method private final updatePlayState(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "binding"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->playerButton:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 15
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "inflate(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 19
    .line 20
    const-string v0, "binding"

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object p1, v1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    move-object p1, v1

    .line 43
    .line 44
    :cond_1
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoTimeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 45
    .line 46
    const-string v2, "videoTimeLineComponent"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    move-object p1, v1

    .line 60
    .line 61
    :cond_2
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 62
    .line 63
    sget v2, Lcom/narvii/mediaeditor/R$string;->trim:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    const-string v3, "getString(...)"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    new-instance v3, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    .line 78
    const/4 v4, 0x1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v4, v2, v3}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 82
    .line 83
    const-string p1, "youtube"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    const-string v2, "getService(...)"

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 97
    .line 98
    const-string p1, "photo"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 110
    .line 111
    new-instance p1, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 114
    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 119
    move-object v2, v1

    .line 120
    .line 121
    :cond_3
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoViewPlayer:Lcom/narvii/nvplayerview/NVVideoView;

    .line 122
    .line 123
    const-string v3, "videoViewPlayer"

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p0, v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V

    .line 130
    .line 131
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 132
    .line 133
    new-instance v2, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setPlayStateCallback(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V

    .line 140
    .line 141
    const-string p1, "media"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    const-class v2, Lcom/narvii/model/Media;

    .line 148
    .line 149
    .line 150
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    const-string v2, "readAs(...)"

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    check-cast p1, Lcom/narvii/model/Media;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    .line 161
    .line 162
    const-string p1, "outputPath"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    const-string v2, ""

    .line 169
    .line 170
    if-nez p1, :cond_4

    .line 171
    move-object p1, v2

    .line 172
    .line 173
    :cond_4
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 174
    .line 175
    const-string p1, "fakeTrim"

    .line 176
    const/4 v3, 0x0

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 180
    move-result p1

    .line 181
    .line 182
    iput-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    .line 183
    .line 184
    if-nez p1, :cond_5

    .line 185
    .line 186
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result p1

    .line 191
    .line 192
    if-eqz p1, :cond_5

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError(Ljava/lang/String;)V

    .line 196
    return-void

    .line 197
    .line 198
    :cond_5
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    .line 199
    .line 200
    const-string v2, "inputMedia"

    .line 201
    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 206
    move-object p1, v1

    .line 207
    .line 208
    :cond_6
    iget-wide v5, p1, Lcom/narvii/model/Media;->duration:J

    .line 209
    .line 210
    const-wide/16 v7, 0x1

    .line 211
    .line 212
    cmp-long p1, v7, v5

    .line 213
    .line 214
    if-gtz p1, :cond_7

    .line 215
    .line 216
    .line 217
    const-wide/32 v7, 0xee48

    .line 218
    .line 219
    cmp-long p1, v5, v7

    .line 220
    .line 221
    if-gez p1, :cond_7

    .line 222
    .line 223
    iget-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    .line 224
    .line 225
    if-nez p1, :cond_7

    .line 226
    goto :goto_0

    .line 227
    :cond_7
    move v4, v3

    .line 228
    .line 229
    :goto_0
    iput-boolean v4, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    .line 230
    .line 231
    if-eqz v4, :cond_a

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 234
    .line 235
    if-nez p1, :cond_8

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 239
    move-object p1, v1

    .line 240
    .line 241
    :cond_8
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoViewPlayer:Lcom/narvii/nvplayerview/NVVideoView;

    .line 242
    const/4 v3, 0x4

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 248
    .line 249
    if-nez p1, :cond_9

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 253
    move-object p1, v1

    .line 254
    .line 255
    :cond_9
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->contentRl:Landroid/widget/RelativeLayout;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 266
    .line 267
    .line 268
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    sget v3, Lcom/narvii/mediaeditor/R$string;->verifying:I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 283
    .line 284
    :cond_a
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    .line 285
    .line 286
    if-nez p1, :cond_b

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 290
    goto :goto_1

    .line 291
    :cond_b
    move-object v1, p1

    .line 292
    .line 293
    .line 294
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    const-string v0, "getMediaUrl(...)"

    .line 298
    .line 299
    .line 300
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startParseUrl(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "player"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->release()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->release()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->releaseExecutor()V

    .line 27
    return-void
.end method

.method public onFrameLocatedDuringMove(JJZZ)V
    .locals 4

    .line 1
    .line 2
    sub-long v0, p3, p1

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->binding:Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "binding"

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    move-object v2, v3

    .line 20
    .line 21
    :cond_0
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->timeLineControllerLength:Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->formatCropInterval(J)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 31
    .line 32
    const-string v1, "player"

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    move-object v0, v3

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setReplayTime(JJ)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object v0, v3

    .line 50
    .line 51
    :cond_3
    xor-int/lit8 v2, p6, 0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setInContinuousSeekingMode(Z)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 68
    move-object v0, v3

    .line 69
    .line 70
    :cond_4
    if-eqz p5, :cond_5

    .line 71
    move-wide p1, p3

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {v0, p1, p2, p6}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_6
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 78
    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 83
    move-object v0, v3

    .line 84
    .line 85
    :cond_7
    if-eqz p5, :cond_8

    .line 86
    goto :goto_0

    .line 87
    :cond_8
    move-wide p1, p3

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v0, p1, p2, p6}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    .line 91
    .line 92
    :goto_1
    const/16 p1, 0x1e

    .line 93
    .line 94
    if-eqz p6, :cond_a

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 97
    .line 98
    if-nez p2, :cond_9

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 102
    goto :goto_2

    .line 103
    :cond_9
    move-object v3, p2

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {v3, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :cond_a
    iget-object p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 110
    .line 111
    if-nez p2, :cond_b

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 115
    goto :goto_3

    .line 116
    :cond_b
    move-object v3, p2

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-virtual {v3, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 120
    :goto_4
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "player"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->handlePause()V

    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "player"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->handleResume()V

    .line 17
    return-void
.end method
