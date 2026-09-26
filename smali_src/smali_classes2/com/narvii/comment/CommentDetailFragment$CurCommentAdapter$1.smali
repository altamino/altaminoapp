.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->getParent()Lcom/narvii/model/NVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->y(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public objectType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->z(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
