.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1, p3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 4

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    new-instance v0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    invoke-direct {v0, p2}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;-><init>(Lcom/narvii/youtube/YoutubeVideoList;)V

    invoke-static {p1, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$setPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/bean/PreEditVideoUrl;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTrimVideoAuto$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    sget p2, Lcom/narvii/mediaeditor/R$id;->video_progress_view:I

    invoke-virtual {p1, p2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    const-string p2, "video_progress_view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object p2

    iget-wide v2, p2, Lcom/narvii/model/Media;->duration:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V

    goto :goto_1

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->prepare(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
