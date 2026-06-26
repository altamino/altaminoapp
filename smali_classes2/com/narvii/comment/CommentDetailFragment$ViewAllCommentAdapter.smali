.class Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAllCommentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 832
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private parentId()Ljava/lang/String;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$300(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parentType()I
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$400(Lcom/narvii/comment/CommentDetailFragment;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$100(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b00ee

    .line 852
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 853
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 867
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c95

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 868
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 869
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/model/SharedFile;

    if-eqz p2, :cond_2

    .line 870
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$200(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/SharedFile;

    iget-object p2, p2, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    const-string p3, "shared-folder-image"

    invoke-virtual {p2, p3}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 872
    :cond_2
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$500(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->isQuestion(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 873
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->parentType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 874
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ViewAllCommentAdapter;->parentId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 875
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 876
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
