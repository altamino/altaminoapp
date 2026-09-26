.class Lcom/narvii/media/YoutubeVideoPicker$3;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorMsg:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubeVideoPicker$3;->lambda$run$0(Lcom/narvii/model/Media;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/narvii/model/Media;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/media/YoutubeVideoPicker;->w(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 12
    .line 13
    const-string v0, "statistics"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 20
    .line 21
    const-string v0, "youtubeApiError"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "code"

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "message"

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorMsg:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoLength(Ljava/lang/String;)J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/media/m;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/m;-><init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 23
    goto :goto_4

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_5

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_1
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :catch_2
    move-exception v0

    .line 31
    goto :goto_3

    .line 32
    :goto_1
    const/4 v1, 0x1

    .line 33
    .line 34
    :try_start_1
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/media/m;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/m;-><init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    .line 48
    goto :goto_0

    .line 49
    :goto_2
    const/4 v1, 0x3

    .line 50
    .line 51
    :try_start_2
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/media/m;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/m;-><init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    .line 65
    goto :goto_0

    .line 66
    :goto_3
    const/4 v1, 0x2

    .line 67
    .line 68
    :try_start_3
    iput v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorCode:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->errorMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 77
    .line 78
    new-instance v1, Lcom/narvii/media/m;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/m;-><init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    .line 82
    goto :goto_0

    .line 83
    :goto_4
    return-void

    .line 84
    .line 85
    :goto_5
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$media:Lcom/narvii/model/Media;

    .line 86
    .line 87
    new-instance v2, Lcom/narvii/media/m;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, p0, v1}, Lcom/narvii/media/m;-><init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 94
    throw v0
.end method
