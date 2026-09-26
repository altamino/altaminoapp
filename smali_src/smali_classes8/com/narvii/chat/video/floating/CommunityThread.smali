.class public Lcom/narvii/chat/video/floating/CommunityThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chatThread:Lcom/narvii/model/ChatThread;

.field public ndcId:I


# direct methods
.method public constructor <init>(ILcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    return-void
.end method
