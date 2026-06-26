.class public final Lcom/narvii/chat/setting/LivePermissionFragment;
.super Lcom/narvii/app/NVFragment;
.source "LivePermissionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private initvvChatJoinType:I

.field private loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private ndcId:I

.field private threadId:Ljava/lang/String;

.field private vvChatJoinType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 29
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    .line 30
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    return-void
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "loadingDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getNdcId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    return p0
.end method

.method public static final synthetic access$getThreadId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "threadId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getVvChatJoinType$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    return p0
.end method

.method public static final synthetic access$setLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setNdcId$p(Lcom/narvii/chat/setting/LivePermissionFragment;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    return-void
.end method

.method public static final synthetic access$setThreadId$p(Lcom/narvii/chat/setting/LivePermissionFragment;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVvChatJoinType$p(Lcom/narvii/chat/setting/LivePermissionFragment;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    return-void
.end method

.method private final updateLivePermission()V
    .locals 5

    .line 116
    iget v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    iget v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 121
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/vvchat-permission"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vvChatJoinType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 122
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    const-string v2, "rtc"

    .line 123
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    .line 124
    new-instance v3, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v2, v4}, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;-><init>(Lcom/narvii/chat/setting/LivePermissionFragment;Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_1
    const-string v0, "threadId"

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "loadingDialog"

    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateViews()V
    .locals 7

    .line 96
    iget v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    const/4 v1, 0x1

    const-string v2, "invite_only_btn"

    const-string v3, "require_approval_btn"

    const/4 v4, 0x0

    const-string v5, "free_talk_btn"

    const/16 v6, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->free_talk_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    sget v0, Lcom/narvii/amino/R$id;->require_approval_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    sget v0, Lcom/narvii/amino/R$id;->invite_only_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_1
    sget v0, Lcom/narvii/amino/R$id;->free_talk_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    sget v0, Lcom/narvii/amino/R$id;->require_approval_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    sget v0, Lcom/narvii/amino/R$id;->invite_only_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_2
    sget v0, Lcom/narvii/amino/R$id;->free_talk_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    sget v0, Lcom/narvii/amino/R$id;->require_approval_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    sget v0, Lcom/narvii/amino/R$id;->invite_only_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "NVApplication.instance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "id"

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringParam(\"id\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    const-string/jumbo p1, "vvChatJoinType"

    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    const-string p1, "ndcId"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    .line 43
    iget p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    sget v0, Lcom/narvii/amino/R$id;->free_talk_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 83
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->require_approval_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 86
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    goto :goto_0

    .line 88
    :cond_1
    sget v0, Lcom/narvii/amino/R$id;->invite_only_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 89
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 92
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f0b02

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 68
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-eqz p1, :cond_0

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 69
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02b4

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateLivePermission()V

    const/4 p1, 0x1

    return p1

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    sget p1, Lcom/narvii/amino/R$id;->free_talk_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcom/narvii/amino/R$id;->require_approval_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p1, Lcom/narvii/amino/R$id;->invite_only_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateViews()V

    .line 64
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method
