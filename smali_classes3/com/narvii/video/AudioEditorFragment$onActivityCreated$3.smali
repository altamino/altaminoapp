.class final Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;
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

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 152
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 154
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string p1, "targetOnlineAudioTabName"

    const-string v0, "SFX"

    .line 155
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getMediaPickerFragment$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/media/MediaPickerFragment;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v4, 0x4206

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    return-void
.end method
