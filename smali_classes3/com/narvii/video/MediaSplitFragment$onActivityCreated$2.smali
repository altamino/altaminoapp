.class final Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;
.super Ljava/lang/Object;
.source "MediaSplitFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSplitFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSplitFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSplitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/MediaSplitFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/video/MediaSplitFragment;->access$setPendingUndoSplit$p(Lcom/narvii/video/MediaSplitFragment;Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaSplitFragment;->access$undoSplit(Lcom/narvii/video/MediaSplitFragment;)V

    :goto_0
    return-void
.end method
