.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;
.super Lcom/narvii/model/NVObject;
.source "CommentDetailFragment.java"


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

    .line 570
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$1200(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$1300(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)I

    move-result v0

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
