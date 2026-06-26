.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurCommentAdapter"
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 519
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 514
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    const-string p1, "Quick Reply"

    .line 520
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 521
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 522
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Ljava/lang/String;
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)I
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->addComment(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendCommentRequest(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Lcom/narvii/model/Comment;
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->createFakeComment()Lcom/narvii/model/Comment;

    move-result-object p0

    return-object p0
.end method

.method private addComment(Lcom/narvii/model/Comment;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private createFakeComment()Lcom/narvii/model/Comment;
    .locals 3

    .line 754
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)V

    .line 760
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 761
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    move-result v1

    iput v1, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 762
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    .line 763
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const v2, 0x7f0f029f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 764
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method private isCurrentComment(Lcom/narvii/model/Comment;)Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private parentObjectId()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$300(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parentObjectType()I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$400(Lcom/narvii/comment/CommentDetailFragment;)I

    move-result v0

    return v0
.end method

.method private sendAllCommentRequest()V
    .locals 3

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 690
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 691
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1500(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    const-class v2, Lcom/narvii/model/api/CommentResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendCommentRequest(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendCommentRequest(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    move-result v1

    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 748
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 749
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 750
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected allowViewStickerDetail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected focusComment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 617
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 618
    instance-of p3, p1, Lcom/narvii/model/Comment;

    const v0, 0x7f090764

    if-eqz p3, :cond_3

    .line 619
    instance-of v1, p2, Lcom/narvii/comment/list/CommentItem;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Comment;

    invoke-virtual {v1}, Lcom/narvii/model/Comment;->status()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const v1, 0x7f090cda

    .line 620
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090cd8

    .line 621
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090297

    .line 622
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 623
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 624
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0900e4

    .line 625
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 626
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 627
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 628
    instance-of v4, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 629
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 630
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    const/16 v4, 0x9

    .line 631
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0x14

    .line 632
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xa

    .line 633
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 637
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/narvii/comment/list/CommentItem;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/narvii/comment/list/CommentItem;->voteCallback:Lcom/narvii/util/Callback;

    :cond_1
    const v1, 0x7f090590

    .line 639
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 641
    check-cast p1, Lcom/narvii/model/Comment;

    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->isCurrentComment(Lcom/narvii/model/Comment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p3, :cond_4

    .line 645
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setTextSize(I)V

    :cond_4
    return-object p2
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 570
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 778
    invoke-virtual {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 779
    instance-of v1, v0, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/Comment;

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->status()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 782
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected isQuestionAndAnswer()Z
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$500(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1100(Lcom/narvii/comment/CommentDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 601
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 602
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    move-result v1

    const v2, 0x7f0f029e

    invoke-virtual {v0, v2, v1}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 527
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 528
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 683
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 684
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 770
    instance-of v0, p3, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Comment;

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->status()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 773
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 7

    if-eqz p1, :cond_a

    .line 787
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_a

    .line 788
    check-cast v0, Lcom/narvii/model/Comment;

    .line 789
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 790
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 791
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v4, "update"

    if-eq v1, v4, :cond_8

    const-string v4, "edit"

    if-ne v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "delete"

    if-ne v1, v4, :cond_9

    .line 802
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 804
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v5}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v5}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    .line 805
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_4

    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Comment;

    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 808
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->createFakeComment()Lcom/narvii/model/Comment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/comment/CommentDetailFragment;->access$1402(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;

    .line 809
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0, v3}, Lcom/narvii/comment/CommentDetailFragment;->access$1102(Lcom/narvii/comment/CommentDetailFragment;Z)Z

    .line 810
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0, v5}, Lcom/narvii/comment/CommentDetailFragment;->access$1902(Lcom/narvii/comment/CommentDetailFragment;Z)Z

    .line 812
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 814
    :cond_7
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 815
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 796
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 798
    iget-object v4, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 819
    :cond_9
    :goto_4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v2, :cond_a

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_a

    .line 820
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_a

    .line 821
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVListFragment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    :cond_a
    return-void
.end method

.method protected onReply()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->access$1000(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 545
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    .line 546
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected subCommentLayoutId()I
    .locals 1

    const v0, 0x7f0b03a9

    return v0
.end method
