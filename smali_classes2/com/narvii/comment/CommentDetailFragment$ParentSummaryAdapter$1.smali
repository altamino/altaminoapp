.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;
.super Lcom/narvii/model/User;
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

    .line 348
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-direct {p0}, Lcom/narvii/model/User;-><init>()V

    return-void
.end method


# virtual methods
.method public nickname()Ljava/lang/String;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    iget-object v0, v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const v1, 0x7f0f0eae

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
