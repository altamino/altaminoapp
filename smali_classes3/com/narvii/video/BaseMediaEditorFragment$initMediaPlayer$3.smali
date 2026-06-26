.class final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 461
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result p1

    if-nez p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 463
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    :cond_0
    return-void
.end method
