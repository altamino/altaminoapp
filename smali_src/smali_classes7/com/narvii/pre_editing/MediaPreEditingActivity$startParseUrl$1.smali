.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->startParseUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/youtube/YoutubeVideoList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p2}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;-><init>(Lcom/narvii/youtube/YoutubeVideoList;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$setPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/bean/PreEditVideoUrl;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTrimVideoAuto$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Z

    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getBinding$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p1, "binding"

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    move-object p1, p2

    .line 39
    .line 40
    :cond_0
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoProgressView:Lcom/narvii/widget/SpinningView;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    const-string v0, "inputMedia"

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object p2, v0

    .line 61
    .line 62
    :goto_0
    iget-wide v0, p2, Lcom/narvii/model/Media;->duration:J

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2, v3, v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    const-string p1, "player"

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 82
    move-object p1, p2

    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getVideoUrl()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->prepare(Ljava/lang/String;)V

    .line 98
    :goto_1
    return-void
.end method
