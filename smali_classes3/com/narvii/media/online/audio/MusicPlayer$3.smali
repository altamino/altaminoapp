.class Lcom/narvii/media/online/audio/MusicPlayer$3;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

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

    .line 84
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    const/16 p3, 0x2bd

    if-ne p2, p3, :cond_0

    .line 90
    iget-object p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p2}, Lcom/narvii/media/online/audio/MusicPlayer;->access$700(Lcom/narvii/media/online/audio/MusicPlayer;)I

    move-result p2

    iput p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->originalStatus:I

    .line 91
    iget-object p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p2, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$600(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x2be

    if-ne p2, p3, :cond_1

    .line 93
    iget-object p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p2}, Lcom/narvii/media/online/audio/MusicPlayer;->access$700(Lcom/narvii/media/online/audio/MusicPlayer;)I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    iget p2, p0, Lcom/narvii/media/online/audio/MusicPlayer$3;->originalStatus:I

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/MusicPlayer;->access$600(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
