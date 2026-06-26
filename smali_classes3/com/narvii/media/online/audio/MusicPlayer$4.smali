.class Lcom/narvii/media/online/audio/MusicPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/MusicPlayer;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/MusicPlayer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$000(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$700(Lcom/narvii/media/online/audio/MusicPlayer;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$700(Lcom/narvii/media/online/audio/MusicPlayer;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$600(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$200(Lcom/narvii/media/online/audio/MusicPlayer;)V

    :goto_1
    return-void
.end method
