.class Lcom/narvii/comment/CommentDetailFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->A(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getCount()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    .line 31
    move-result v0

    .line 32
    return v0
.end method
