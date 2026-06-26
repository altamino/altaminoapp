.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;
.super Lcom/narvii/model/Blog;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->createUnVisiableObject()Lcom/narvii/model/NVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-direct {p0}, Lcom/narvii/model/Blog;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->access$600(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->access$700(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)I

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

    const/4 v0, -0x1

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    iget-object v0, v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const v1, 0x7f0f0eae

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
