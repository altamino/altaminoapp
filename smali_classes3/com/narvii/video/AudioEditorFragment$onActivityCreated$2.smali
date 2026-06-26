.class final Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 147
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 149
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getMediaPickerFragment$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/media/MediaPickerFragment;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x4206

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    return-void
.end method
