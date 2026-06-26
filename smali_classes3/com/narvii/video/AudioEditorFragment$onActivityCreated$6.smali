.class final Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;
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

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/AudioEditorFragment;->access$setVideoInputClipListVolume(Lcom/narvii/video/AudioEditorFragment;F)V

    .line 168
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$updateMuteIcon(Lcom/narvii/video/AudioEditorFragment;)V

    return-void
.end method
