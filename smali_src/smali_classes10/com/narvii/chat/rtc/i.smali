.class public final synthetic Lcom/narvii/chat/rtc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public synthetic constructor <init>(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/chat/rtc/i;->a:I

    iput-object p2, p0, Lcom/narvii/chat/rtc/i;->b:[B

    iput-object p3, p0, Lcom/narvii/chat/rtc/i;->c:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/narvii/chat/rtc/i;->a:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/i;->b:[B

    iget-object v2, p0, Lcom/narvii/chat/rtc/i;->c:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    check-cast p1, Lcom/narvii/chat/rtc/DataStreamListener;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->k(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/chat/rtc/DataStreamListener;)V

    return-void
.end method
