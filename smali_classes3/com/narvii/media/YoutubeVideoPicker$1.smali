.class Lcom/narvii/media/YoutubeVideoPicker$1;
.super Ljava/lang/Object;
.source "YoutubeVideoPicker.java"

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

    .line 153
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-static {v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$000(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-static {v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$100(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->prev:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v2, v1}, Lcom/narvii/media/YoutubeVideoPicker;->setVideoId(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iget-boolean v3, v2, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 168
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".google."

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v1

    .line 173
    :catch_0
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v1, v4}, Lcom/narvii/media/YoutubeVideoPicker;->setShowCheckButton(Z)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/narvii/media/YoutubeVideoPicker;->setShowCheckButton(Z)V

    .line 178
    :goto_0
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$1;->prev:Ljava/lang/String;

    :cond_2
    const-wide/16 v0, 0xc8

    .line 180
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
