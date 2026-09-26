.class Lcom/narvii/youtube/YoutubeService$InitTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/youtube/YoutubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTask"
.end annotation


# instance fields
.field extractor:Lcom/narvii/youtube/Extractor;

.field result:Ljava/lang/Boolean;

.field tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/youtube/YoutubeService$Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 31
    .line 32
    if-ne v2, p3, :cond_0

    .line 33
    .line 34
    iget p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result p1

    .line 39
    .line 40
    iput p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 41
    return-void

    .line 42
    .line 43
    :cond_1
    new-instance v0, Lcom/narvii/youtube/YoutubeService$Task;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/narvii/youtube/YoutubeService$Task;-><init>()V

    .line 47
    .line 48
    iput-object p1, v0, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p3, v0, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 51
    .line 52
    iput-object p2, v0, Lcom/narvii/youtube/YoutubeService$Task;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 53
    .line 54
    iput p4, v0, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 31
    .line 32
    if-ne v2, p2, :cond_0

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    iput-object p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 36
    .line 37
    iget p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->result:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/youtube/Extractor;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/youtube/Extractor;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->extractor:Lcom/narvii/youtube/Extractor;

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->result:Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/narvii/youtube/YoutubeService;->inited:Z

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->extractor:Lcom/narvii/youtube/Extractor;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, v1, Lcom/narvii/youtube/YoutubeService$Task;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 58
    .line 59
    iget-object v5, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 60
    .line 61
    iget v1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method
