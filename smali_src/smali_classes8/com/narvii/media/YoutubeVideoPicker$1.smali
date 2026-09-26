.class Lcom/narvii/media/YoutubeVideoPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/YoutubeVideoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prev:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/media/YoutubeVideoPicker;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$000(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$100(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->prev:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/narvii/media/YoutubeVideoPicker;->setVideoId(Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 39
    .line 40
    iget-boolean v3, v2, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    .line 41
    const/4 v4, 0x1

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v3, "."

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, ".google."

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    xor-int/2addr v4, v1

    .line 76
    .line 77
    :catch_0
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Lcom/narvii/media/YoutubeVideoPicker;->setShowCheckButton(Z)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v1

    .line 86
    xor-int/2addr v1, v4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/narvii/media/YoutubeVideoPicker;->setShowCheckButton(Z)V

    .line 90
    .line 91
    :goto_0
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->prev:Ljava/lang/String;

    .line 92
    .line 93
    :cond_2
    const-wide/16 v0, 0xc8

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 97
    return-void
.end method
