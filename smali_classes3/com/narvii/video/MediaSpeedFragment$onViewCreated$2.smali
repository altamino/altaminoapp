.class final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaSpeedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSpeedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSpeedFragment.kt\ncom/narvii/video/MediaSpeedFragment$onViewCreated$2\n*L\n1#1,181:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->invoke(D)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(D)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment;->access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iput-wide p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 108
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateClipSpeed(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 109
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 p2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    :cond_0
    return-void
.end method
