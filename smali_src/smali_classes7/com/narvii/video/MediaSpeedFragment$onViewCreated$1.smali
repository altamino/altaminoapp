.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSpeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

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
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 12
    return-void
.end method

.method public onOptionDone(I)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getMinOutputLengthMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    sget v0, Lcom/narvii/mediaeditor/R$string;->speed_clip_too_short_hint:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x104000a

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "clipInfoPack"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveIndex$p(Lcom/narvii/video/MediaSpeedFragment;)I

    .line 69
    move-result v0

    .line 70
    .line 71
    const-string v1, "currentActiveIndex"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 77
    const/4 v1, -0x1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 86
    return-void
.end method
