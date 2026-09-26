.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;
.super Lcom/narvii/model/User;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/model/User;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public nickname()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120fd0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
