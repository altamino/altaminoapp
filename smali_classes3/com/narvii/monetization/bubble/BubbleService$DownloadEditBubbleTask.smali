.class Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;
.super Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;
.source "BubbleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadEditBubbleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleService;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 805
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected check()Z
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->access$1000(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->downloadingBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

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
