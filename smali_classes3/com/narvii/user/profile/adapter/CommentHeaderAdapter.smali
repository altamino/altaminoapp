.class public abstract Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentHeaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentHeaderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentHeaderAdapter.kt\ncom/narvii/user/profile/adapter/CommentHeaderAdapter\n*L\n1#1,116:1\n*E\n"
.end annotation


# instance fields
.field private commentCount:I

.field private curSort:I

.field private final isMe:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-boolean p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    return-void
.end method

.method public static final synthetic access$setCommentSort(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->setCommentSort(I)V

    return-void
.end method

.method private final setCommentSort(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    .line 105
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onCommentSort(I)V

    return-void
.end method


# virtual methods
.method protected getBackgroundColorRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0600ed

    goto :goto_0

    :cond_0
    const p1, 0x7f0600ef

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getItem(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p1, 0x7f0b0137

    .line 36
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_0

    const-string p3, "#FF888888"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    const v0, 0x7f090b5b

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090290

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->showCommentTitle()Z

    move-result v2

    const-string v3, "countTV"

    const-string v4, "commentsTV"

    if-eqz v2, :cond_2

    .line 44
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f02ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget v0, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->commentCount:I

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->commentCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v0, 0x7f090299

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TintButton>(R.id.comment_slides)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const v0, 0x7f090c16

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<TintButton>\u2026.id.user_comment_setting)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/TintButton;

    invoke-virtual {v1, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v1, "findViewById<View>(R.id.user_comment_setting)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901b9

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getBackgroundColorRes(Z)I

    move-result v0

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "createView<View>(R.layou\u2026wClickListener)\n        }"

    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isMe()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    return v0
.end method

.method public abstract onCommentRefresh()V
.end method

.method public abstract onCommentSort(I)V
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    if-eqz p5, :cond_0

    .line 73
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090299

    if-nez v0, :cond_1

    goto :goto_4

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 75
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f02aa

    .line 76
    iget p3, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    const/4 p4, 0x2

    const/4 p5, 0x4

    const/16 v0, 0x8

    if-ne p3, p4, :cond_2

    const/4 p3, 0x4

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const p2, 0x7f0f02a8

    .line 77
    iget p3, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    if-nez p3, :cond_3

    const/4 p3, 0x4

    goto :goto_2

    :cond_3
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const p2, 0x7f0f02a9

    .line 78
    iget p3, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_4

    goto :goto_3

    :cond_4
    const/16 p5, 0x8

    :goto_3
    invoke-virtual {p1, p2, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const p2, 0x7f0f0ea7

    const/4 p3, 0x0

    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 80
    new-instance p2, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;

    invoke-direct {p2, p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;-><init>(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return p4

    :cond_5
    :goto_4
    const v1, 0x7f090c16

    if-nez v0, :cond_6

    goto :goto_5

    .line 91
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 92
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f02a1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privilegeKey"

    const-string v2, "privilegeOfCommentOnUserProfile"

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->userProfilePrivilegeFragmentIsDarkTheme()Z

    move-result v1

    const-string v2, "isDarkTheme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 100
    :cond_7
    :goto_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setCommentCount(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->commentCount:I

    .line 110
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showCommentTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected userProfilePrivilegeFragmentIsDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
