.class Lcom/narvii/chat/audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioPlayer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioPlayer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 104
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "mediaPlayer"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 105
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    iget-object v2, v1, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    iget v1, v1, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    mul-float v1, v1, v3

    float-to-int p1, v1

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V

    return-void
.end method
