.class public abstract Lcom/narvii/user/profile/adapter/CommentAddAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentAddAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentAddAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentAddAdapter.kt\ncom/narvii/user/profile/adapter/CommentAddAdapter\n*L\n1#1,67:1\n*E\n"
.end annotation


# instance fields
.field private show:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentBar"

    return-object v0
.end method

.method protected getCommentBackgroundRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0801fb

    goto :goto_0

    :cond_0
    const p1, 0x7f0801fd

    :goto_0
    return p1
.end method

.method protected getCommentTextColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const-string p1, "#FF888888"

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v0, "DetailAdapter.COMMENT_ADD"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0135

    .line 28
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090061

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 30
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->getCommentTextColor(Z)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->getCommentBackgroundRes(Z)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p2, "account"

    .line 34
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    .line 35
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    const p3, 0x7f090c10

    .line 36
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const-string p2, "createView<View>(R.layou\u2026out).setUser(u)\n        }"

    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract onCommentNew()V
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 46
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 47
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->onCommentNew()V

    .line 49
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setVisibleInList(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->show:Z

    .line 54
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
