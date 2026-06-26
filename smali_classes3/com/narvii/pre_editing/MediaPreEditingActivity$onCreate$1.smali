.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 75
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 83
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    return-void
.end method

.method public onOptionDone(I)V
    .locals 4

    .line 77
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterStartPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterEndPosition()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V

    return-void
.end method
