.class public Lcom/narvii/chat/video/floating/CommunityThread;
.super Ljava/lang/Object;
.source "CommunityThread.java"


# instance fields
.field public chatThread:Lcom/narvii/model/ChatThread;

.field public ndcId:I


# direct methods
.method public constructor <init>(ILcom/narvii/model/ChatThread;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    .line 11
    iput-object p2, p0, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method
