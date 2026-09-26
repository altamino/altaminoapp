.class Lcom/narvii/chat/audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 6
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "mediaPlayer"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    .line 26
    .line 27
    iget v1, v1, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 28
    int-to-float v1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 32
    move-result v3

    .line 33
    int-to-float v3, v3

    .line 34
    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    mul-float/2addr v3, v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 40
    move-result p1

    .line 41
    int-to-float p1, p1

    .line 42
    div-float/2addr v3, p1

    .line 43
    mul-float/2addr v1, v3

    .line 44
    float-to-int p1, v1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer$1;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V

    .line 50
    return-void
.end method
