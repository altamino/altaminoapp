.class Lcom/narvii/monetization/bubble/BubbleService$UploadTask;
.super Lcom/narvii/monetization/bubble/service/BubbleUploadTask;
.source "BubbleService.java"


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

    .line 840
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 841
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;-><init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    return-void
.end method


# virtual methods
.method protected check()Z
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$1100(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
