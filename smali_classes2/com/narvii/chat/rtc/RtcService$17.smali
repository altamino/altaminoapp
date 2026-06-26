.class Lcom/narvii/chat/rtc/RtcService$17;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->onExtraCallback(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/rtc/DataStreamListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$bytes:[B

.field final synthetic val$fjson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$17;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$uid:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$bytes:[B

    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$fjson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/rtc/DataStreamListener;)V
    .locals 3

    .line 1407
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$uid:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$bytes:[B

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$17;->val$fjson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/rtc/DataStreamListener;->onDataStreamReceived(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1404
    check-cast p1, Lcom/narvii/chat/rtc/DataStreamListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$17;->call(Lcom/narvii/chat/rtc/DataStreamListener;)V

    return-void
.end method
