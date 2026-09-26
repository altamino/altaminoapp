.class public abstract Lcom/narvii/user/profile/adapter/CommentAddAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field private show:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "CommentBar"

    return-object v0
.end method

.method protected getCommentBackgroundRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080287

    goto :goto_0

    :cond_0
    const p1, 0x7f080289

    :goto_0
    return p1
.end method

.method protected getCommentTextColor(Z)I
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    const-string p1, "#FF888888"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v0, "COMMENT_ADD"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0154

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0099

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->getCommentTextColor(Z)I

    .line 27
    move-result p3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->getCommentBackgroundRes(Z)I

    .line 36
    move-result p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    const-string p2, "account"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    const p3, 0x7f0a0f36

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 64
    .line 65
    const-string p2, "apply(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-object p1
.end method

.method public abstract onCommentNew()V
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->onCommentNew()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final setVisibleInList(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
