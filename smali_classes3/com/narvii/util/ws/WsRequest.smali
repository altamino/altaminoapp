.class public Lcom/narvii/util/ws/WsRequest;
.super Lcom/narvii/util/ws/WsMessage;
.source "WsRequest.java"


# instance fields
.field public callback:Lcom/narvii/util/Callback;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public startTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/util/ws/WsMessage;-><init>()V

    return-void
.end method
