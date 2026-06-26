.class Lcom/narvii/comment/CommentDetailFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "CommentDetailFragment.java"


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

    .line 171
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$1;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->access$000(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    move-result v0

    return v0
.end method
