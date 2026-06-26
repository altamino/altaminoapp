.class final Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;
.super Ljava/lang/Object;
.source "VideoResolutionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    iput p2, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    iget-object p1, p1, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->getCurrentCond()I

    move-result p1

    iget v0, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->$position:I

    if-eq p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    iget-object p1, p1, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->setCurrentCond(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move-result-object p1

    const-string v0, "NVExoPlayer.getInstance(NVApplication.instance())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getVideoPreloadDelegate()Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter$getView$1;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    iget-object v0, v0, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;->this$0:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;->getCurrentCond()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->setForceVideoRes(I)V

    :cond_0
    return-void
.end method
