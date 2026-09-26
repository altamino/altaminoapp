.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-string p1, "Quick Reply"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->sourceComment:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 19
    .line 20
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 23
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendCommentRequest(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private addComment(Lcom/narvii/model/Comment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    .line 22
    return-void
.end method

.method private createFakeComment()Lcom/narvii/model/Comment;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$3;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/comment/CommentDetailFragment;->id()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 28
    .line 29
    .line 30
    const v2, 0x7f1202ea

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iput-object v1, v0, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/model/User;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 44
    return-object v0
.end method

.method private isCurrentComment(Lcom/narvii/model/Comment;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method private parentObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->y(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private parentObjectType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->B(Lcom/narvii/comment/CommentDetailFragment;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private sendAllCommentRequest()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->t(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 15
    .line 16
    const-class v2, Lcom/narvii/model/api/CommentResponse;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendCommentRequest(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 23
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 41
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->addComment(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Lcom/narvii/model/Comment;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->createFakeComment()Lcom/narvii/model/Comment;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->parentObjectType()I

    move-result p0

    return p0
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    instance-of p3, p1, Lcom/narvii/model/Comment;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0a09f9

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    instance-of v1, p2, Lcom/narvii/comment/list/CommentItem;

    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    move-object v1, p1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/Comment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->status()I

    .line 24
    move-result v1

    .line 25
    const/4 v4, -0x1

    .line 26
    .line 27
    if-ne v1, v4, :cond_1

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a1000

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a0ffe

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0a035f

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 74
    .line 75
    .line 76
    const v1, 0x7f0a0171

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    instance-of v4, v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    const/16 v4, 0xf

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    .line 100
    const/16 v4, 0x9

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 104
    .line 105
    const/16 v4, 0x14

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 109
    .line 110
    const/16 v4, 0xa

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 114
    :cond_0
    move-object v1, p2

    .line 115
    .line 116
    check-cast v1, Lcom/narvii/comment/list/CommentItem;

    .line 117
    const/4 v4, 0x0

    .line 118
    .line 119
    iput-object v4, v1, Lcom/narvii/comment/list/CommentItem;->voteCallback:Lcom/narvii/util/Callback;

    .line 120
    .line 121
    .line 122
    :cond_1
    const v1, 0x7f0a0717

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    check-cast p1, Lcom/narvii/model/Comment;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->isCurrentComment(Lcom/narvii/model/Comment;)Z

    .line 134
    move-result p1

    .line 135
    .line 136
    if-eqz p1, :cond_2

    .line 137
    move v2, v3

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    :cond_3
    if-eqz p3, :cond_4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    const/high16 v0, 0x41800000    # 16.0f

    .line 155
    .line 156
    .line 157
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 158
    move-result p3

    .line 159
    float-to-int p3, p3

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3}, Lcom/narvii/widget/NicknameView;->setTextSize(I)V

    .line 163
    :cond_4
    return-object p2
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)V

    .line 6
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Comment;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Comment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->status()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isEnabled(I)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method protected isQuestionAndAnswer()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->w(Lcom/narvii/comment/CommentDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->v(Lcom/narvii/comment/CommentDetailFragment;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
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

    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f1202e9

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailFragment;->showNotAvailableView(IZ)V

    .line 16
    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    .line 7
    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Comment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Comment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->status()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Comment;

    .line 7
    .line 8
    if-eqz v1, :cond_9

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Comment;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "new"

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-eqz v1, :cond_8

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v1, v1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v4, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-object v4, v0, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_8

    .line 64
    .line 65
    :cond_0
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_1
    const-string v4, "update"

    .line 76
    .line 77
    if-eq v1, v4, :cond_7

    .line 78
    .line 79
    const-string v4, "edit"

    .line 80
    .line 81
    if-ne v1, v4, :cond_2

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_2
    const-string v4, "delete"

    .line 86
    .line 87
    if-ne v1, v4, :cond_8

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 99
    move-result v1

    .line 100
    .line 101
    if-ltz v1, :cond_8

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    iget-object v5, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 108
    .line 109
    .line 110
    invoke-static {v5}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 111
    move-result-object v5

    .line 112
    const/4 v6, 0x0

    .line 113
    .line 114
    if-nez v5, :cond_3

    .line 115
    move-object v5, v6

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_3
    iget-object v5, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {v5}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    move-result v4

    .line 131
    const/4 v5, 0x0

    .line 132
    .line 133
    if-nez v4, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 151
    move-result v4

    .line 152
    .line 153
    if-lt v4, v3, :cond_4

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    check-cast v4, Lcom/narvii/model/Comment;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 167
    move-result-object v6

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-eqz v0, :cond_5

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :cond_5
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 183
    goto :goto_3

    .line 184
    .line 185
    :cond_6
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 193
    .line 194
    .line 195
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->createFakeComment()Lcom/narvii/model/Comment;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1}, Lcom/narvii/comment/CommentDetailFragment;->E(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V

    .line 200
    .line 201
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v3}, Lcom/narvii/comment/CommentDetailFragment;->F(Lcom/narvii/comment/CommentDetailFragment;Z)V

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 207
    .line 208
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v5}, Lcom/narvii/comment/CommentDetailFragment;->J(Lcom/narvii/comment/CommentDetailFragment;Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 224
    goto :goto_3

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list()Ljava/util/List;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 232
    move-result-object v4

    .line 233
    .line 234
    .line 235
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 236
    move-result v1

    .line 237
    .line 238
    if-ltz v1, :cond_8

    .line 239
    .line 240
    iget-object v4, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->list:Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 247
    .line 248
    :cond_8
    :goto_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 249
    .line 250
    if-ne v0, v2, :cond_9

    .line 251
    .line 252
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 255
    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 260
    move-result-object v0

    .line 261
    .line 262
    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    .line 263
    .line 264
    if-eqz v0, :cond_9

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 271
    .line 272
    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 273
    .line 274
    const-wide/16 v1, 0x190

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    .line 278
    :cond_9
    return-void
.end method

.method protected onReply()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->C(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    .line 10
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 13
    return-void
.end method

.method protected subCommentLayoutId()I
    .locals 1

    const v0, 0x7f0d03e0

    return v0
.end method
