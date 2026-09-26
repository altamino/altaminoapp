.class Lcom/narvii/media/online/audio/MusicPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/MusicPlayer;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private originalStatus:I

.field final synthetic this$0:Lcom/narvii/media/online/audio/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/MusicPlayer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0x2bd

    .line 3
    const/4 p3, 0x3

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->c(Lcom/narvii/media/online/audio/MusicPlayer;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->originalStatus:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p3}, Lcom/narvii/media/online/audio/MusicPlayer;->g(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const/16 p1, 0x2be

    .line 22
    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->c(Lcom/narvii/media/online/audio/MusicPlayer;)I

    .line 29
    move-result p1

    .line 30
    .line 31
    if-ne p1, p3, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 34
    .line 35
    iget p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->originalStatus:I

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/MusicPlayer;->g(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 40
    return p1
.end method
