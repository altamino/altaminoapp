.class public final Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;
.super Ljava/lang/Object;
.source "MediaTrimmingFragment.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaTrimmingFragment;->initOperationPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaTrimmingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 324
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 327
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 328
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionDone(I)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V

    .line 334
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 335
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 336
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$processMedia(Lcom/narvii/video/MediaTrimmingFragment;)V

    return-void
.end method
