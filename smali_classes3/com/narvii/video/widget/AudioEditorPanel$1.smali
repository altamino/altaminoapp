.class final Lcom/narvii/video/widget/AudioEditorPanel$1;
.super Ljava/lang/Object;
.source "AudioEditorPanel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/AudioEditorPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorPanel.kt\ncom/narvii/video/widget/AudioEditorPanel$1\n*L\n1#1,157:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/AudioEditorPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    sget v2, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {v1, v2}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->getCurrentPositionInTimeLine()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updatePlaybackTime(J)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getMainHandler$p(Lcom/narvii/video/widget/AudioEditorPanel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getPlaybackTimer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
