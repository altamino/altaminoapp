.class Lcom/narvii/media/online/audio/MusicPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->b(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->c(Lcom/narvii/media/online/audio/MusicPlayer;)I

    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x2

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->c(Lcom/narvii/media/online/audio/MusicPlayer;)I

    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x4

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 34
    const/4 v0, 0x5

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->g(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$4;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->h(Lcom/narvii/media/online/audio/MusicPlayer;)V

    .line 44
    :goto_1
    return-void
.end method
