.class final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSpeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Double;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->invoke(D)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(D)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    iput-wide p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 4
    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateClipSpeed(Lcom/narvii/video/model/AVClipInfoPack;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v0, v2, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    :cond_0
    return-void
.end method
