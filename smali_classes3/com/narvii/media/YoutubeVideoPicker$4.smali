.class Lcom/narvii/media/YoutubeVideoPicker$4;
.super Ljava/lang/Thread;
.source "YoutubeVideoPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubeVideoPicker;->fillAdditionalMediaInfo(Lcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errorCode:I

.field errorMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/media/YoutubeVideoPicker;

.field final synthetic val$media:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iput-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->val$media:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 254
    iput p1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorCode:I

    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->val$media:Lcom/narvii/model/Media;

    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iget-object v1, v1, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoLength(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$4$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 268
    :try_start_1
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorCode:I

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$4$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x3

    .line 265
    :try_start_2
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorCode:I

    .line 266
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$4$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v1, 0x2

    .line 262
    :try_start_3
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorCode:I

    .line 263
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$4$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V

    :goto_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    new-instance v1, Lcom/narvii/media/YoutubeVideoPicker$4$1;

    invoke-direct {v1, p0}, Lcom/narvii/media/YoutubeVideoPicker$4$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 281
    throw v0
.end method
