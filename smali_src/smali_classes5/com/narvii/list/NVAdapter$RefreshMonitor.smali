.class Lcom/narvii/list/NVAdapter$RefreshMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/http/ApiSessionMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshMonitor"
.end annotation


# instance fields
.field abortCount:I

.field api:Lcom/narvii/util/http/ApiService;

.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field failCount:I

.field finishCount:I

.field requests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field startCount:I

.field status:I

.field final synthetic this$0:Lcom/narvii/list/NVAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVAdapter;ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 20
    .line 21
    iput-object p3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    .line 22
    return-void
.end method

.method private update()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v2, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iput v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 23
    .line 24
    if-lez v3, :cond_0

    .line 25
    move v2, v1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget v3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 29
    .line 30
    if-lez v3, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/list/NVAdapter;->c(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-ne v0, p0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    .line 54
    const/4 v1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/narvii/list/NVAdapter;->d(Lcom/narvii/list/NVAdapter;Lcom/narvii/list/NVAdapter$RefreshMonitor;)V

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->api:Lcom/narvii/util/http/ApiService;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/narvii/util/http/ApiService;->removeSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V

    .line 63
    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    .line 22
    return-void
.end method

.method public end()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    .line 18
    :cond_0
    return-void
.end method

.method public onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 16
    add-int/2addr p1, v1

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    .line 22
    :cond_0
    return-void
.end method

.method public onNewRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public onRequestFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    const/4 p3, 0x1

    .line 4
    .line 5
    if-ne p2, p3, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 16
    add-int/2addr p1, p3

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    .line 22
    :cond_0
    return-void
.end method

.method public onRequestFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    .line 16
    add-int/2addr p1, v0

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    .line 22
    :cond_0
    return-void
.end method

.method public start(Lcom/narvii/util/http/ApiService;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->api:Lcom/narvii/util/http/ApiService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/narvii/util/http/ApiService;->addSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    .line 15
    return-void
.end method
