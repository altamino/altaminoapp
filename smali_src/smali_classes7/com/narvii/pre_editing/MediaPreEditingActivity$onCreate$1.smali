.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 4
    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    .line 12
    return-void
.end method

.method public onOptionDone(I)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "player"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object p1, v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "timeLineComponent"

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 36
    move-object v1, v0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterStartPosition()J

    .line 40
    move-result-wide v3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move-object v0, v1

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterEndPosition()J

    .line 57
    move-result-wide v0

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v3, v4, v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V

    .line 61
    return-void
.end method
