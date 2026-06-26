.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;
.super Lcom/narvii/model/Comment;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->createFakeComment()Lcom/narvii/model/Comment;
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

    .line 754
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-direct {p0}, Lcom/narvii/model/Comment;-><init>()V

    return-void
.end method


# virtual methods
.method public status()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
