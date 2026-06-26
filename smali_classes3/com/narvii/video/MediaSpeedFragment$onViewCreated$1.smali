.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "MediaSpeedFragment.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 100
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onOptionDone(I)V
    .locals 4

    .line 84
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getMinOutputLengthMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 85
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 86
    sget v0, Lcom/narvii/mediaeditor/R$string;->speed_clip_too_short_hint:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 88
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 91
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clipInfoPack"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveIndex$p(Lcom/narvii/video/MediaSpeedFragment;)I

    move-result v0

    const-string v1, "currentActiveIndex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
