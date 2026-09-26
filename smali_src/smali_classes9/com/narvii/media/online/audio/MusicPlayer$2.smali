.class Lcom/narvii/media/online/audio/MusicPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->b(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->a(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->a(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->d(Lcom/narvii/media/online/audio/MusicPlayer;)Ljava/util/HashMap;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->a(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Ljava/lang/Float;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->f(Lcom/narvii/media/online/audio/MusicPlayer;F)V

    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$2;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->g(Lcom/narvii/media/online/audio/MusicPlayer;I)V

    .line 69
    return-void
.end method
