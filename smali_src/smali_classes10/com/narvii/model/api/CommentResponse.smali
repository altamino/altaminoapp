.class public Lcom/narvii/model/api/CommentResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field public comment:Lcom/narvii/model/Comment;

.field public reply:Lcom/narvii/model/Comment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/Comment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/api/CommentResponse;->reply:Lcom/narvii/model/Comment;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/api/CommentResponse;->object()Lcom/narvii/model/Comment;

    move-result-object v0

    return-object v0
.end method
