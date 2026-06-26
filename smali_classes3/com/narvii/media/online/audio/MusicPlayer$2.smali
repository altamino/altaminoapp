.class Lcom/narvii/media/online/audio/MusicPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 68
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$000(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 72
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$300(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$300(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$400(Lcom/narvii/media/online/audio/MusicPlayer;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$300(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->access$500(Lcom/narvii/media/online/audio/MusicPlayer;F)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$600(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    return-void
.end method
