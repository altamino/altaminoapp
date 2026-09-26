.class public Lcom/narvii/chat/util/ChatMessageDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chatMessage:Lcom/narvii/model/ChatMessage;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/ChatMessage;
    .end annotation
.end field

.field public membershipStatus:I

.field public ndcId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
