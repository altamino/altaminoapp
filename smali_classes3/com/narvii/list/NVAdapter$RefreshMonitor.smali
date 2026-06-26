.class Lcom/narvii/list/NVAdapter$RefreshMonitor;
.super Ljava/lang/Object;
.source "NVAdapter.java"

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

    .line 473
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 469
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    .line 470
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 471
    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 474
    iput-object p3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method private update()V
    .locals 4

    .line 539
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iput v2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 541
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 543
    iget v3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    if-lez v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 545
    :cond_0
    iget v3, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 548
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 551
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    if-ne v0, v2, :cond_4

    .line 552
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    invoke-static {v0}, Lcom/narvii/list/NVAdapter;->access$100(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter$RefreshMonitor;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->this$0:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/list/NVAdapter;->access$102(Lcom/narvii/list/NVAdapter;Lcom/narvii/list/NVAdapter$RefreshMonitor;)Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->api:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0, p0}, Lcom/narvii/util/http/ApiService;->removeSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 492
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 493
    iput v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 494
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    return-void
.end method

.method public end()V
    .locals 2

    .line 485
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    if-nez v0, :cond_0

    .line 486
    iput v1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 487
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    :cond_0
    return-void
.end method

.method public onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 2

    .line 530
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->abortCount:I

    .line 533
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    :cond_0
    return-void
.end method

.method public onNewRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 503
    iget v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

    .line 520
    iget p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 521
    iget-object p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 522
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->failCount:I

    .line 523
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    :cond_0
    return-void
.end method

.method public onRequestFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 510
    iget p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 511
    iget-object p2, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->requests:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 512
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->finishCount:I

    .line 513
    invoke-direct {p0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->update()V

    :cond_0
    return-void
.end method

.method public start(Lcom/narvii/util/http/ApiService;)V
    .locals 1

    const/4 v0, 0x0

    .line 478
    iput v0, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 479
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->api:Lcom/narvii/util/http/ApiService;

    .line 480
    invoke-virtual {p1, p0}, Lcom/narvii/util/http/ApiService;->addSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V

    .line 481
    iget p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/list/NVAdapter$RefreshMonitor;->startCount:I

    return-void
.end method
