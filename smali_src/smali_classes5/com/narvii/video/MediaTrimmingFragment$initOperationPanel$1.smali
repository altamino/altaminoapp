.class public final Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

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
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    :cond_0
    return-void
.end method

.method public onOptionDone(I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$processMedia(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 23
    return-void
.end method
