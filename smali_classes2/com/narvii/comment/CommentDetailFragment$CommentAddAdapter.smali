.class Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAddAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 885
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$100(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1900(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 895
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b0136

    .line 905
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090061

    .line 906
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const v0, 0x7f0f0ede

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "account"

    .line 908
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 909
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    const p3, 0x7f090c10

    .line 910
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CommentAddAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/comment/CommentDetailFragment;->access$2100(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V

    .line 917
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
