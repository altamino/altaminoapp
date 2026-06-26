.class final Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;
.super Ljava/lang/Object;
.source "MediaTrimmingFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaTrimmingFragment$progress$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTrimmingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment$progress$2$1\n*L\n1#1,459:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaTrimmingFragment$progress$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 218
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V

    .line 219
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$getInProcessTrimTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object v0, v0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$getInProcessCoverImageTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object v0, v0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getTasksTouchDown()Z

    move-result p1

    if-nez p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v2, v0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$progress$2$1;->this$0:Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/MediaTrimmingFragment$progress$2;->this$0:Lcom/narvii/video/MediaTrimmingFragment;

    invoke-virtual {p1, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    :cond_3
    return-void
.end method
