.class Lcom/narvii/media/MediaPlayerManager$4$2;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPlayerManager$4;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaPlayerManager$4;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager$4;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$2;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$2;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$600(Lcom/narvii/media/MediaPlayerManager;)V

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "play audio error "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "play"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
