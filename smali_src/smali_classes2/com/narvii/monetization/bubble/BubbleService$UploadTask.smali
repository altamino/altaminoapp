.class Lcom/narvii/monetization/bubble/BubbleService$UploadTask;
.super Lcom/narvii/monetization/bubble/service/BubbleUploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleService;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;-><init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected check()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->f(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-ne v0, p0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method
