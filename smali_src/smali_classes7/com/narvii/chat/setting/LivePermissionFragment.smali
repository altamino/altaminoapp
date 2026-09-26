.class public final Lcom/narvii/chat/setting/LivePermissionFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initvvChatJoinType:I

.field private loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private ndcId:I

.field private threadId:Ljava/lang/String;

.field private vvChatJoinType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/chat/setting/LivePermissionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/chat/setting/LivePermissionFragment$binding$2;->INSTANCE:Lcom/narvii/chat/setting/LivePermissionFragment$binding$2;

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->binding$delegate:Lkotlin/properties/d;

    .line 19
    return-void
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNdcId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getThreadId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVvChatJoinType$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 3
    return p0
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/setting/LivePermissionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 14
    return-object v0
.end method

.method private final updateLivePermission()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "loadingDialog"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    move-object v0, v1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string v2, "threadId"

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v1, v2

    .line 45
    .line 46
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "/chat/thread/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "/vvchat-permission"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const-string v2, "vvChatJoinType"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v1, "api"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 95
    .line 96
    const-string v2, "rtc"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    .line 103
    .line 104
    new-instance v3, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;

    .line 105
    .line 106
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, p0, v2, v4}, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;-><init>(Lcom/narvii/chat/setting/LivePermissionFragment;Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Class;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    return-void
.end method

.method private final updateViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    const/4 v2, 0x3

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->freeTalkBtn:Lcom/narvii/widget/TintButton;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->requireApprovalBtn:Lcom/narvii/widget/TintButton;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->inviteOnlyBtn:Lcom/narvii/widget/TintButton;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->freeTalkBtn:Lcom/narvii/widget/TintButton;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->requireApprovalBtn:Lcom/narvii/widget/TintButton;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->inviteOnlyBtn:Lcom/narvii/widget/TintButton;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->freeTalkBtn:Lcom/narvii/widget/TintButton;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->requireApprovalBtn:Lcom/narvii/widget/TintButton;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->inviteOnlyBtn:Lcom/narvii/widget/TintButton;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_0
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0600a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string p1, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "getStringParam(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->threadId:Ljava/lang/String;

    .line 22
    .line 23
    const-string p1, "vvChatJoinType"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 30
    .line 31
    const-string p1, "ndcId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->ndcId:I

    .line 38
    .line 39
    iget p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->initvvChatJoinType:I

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0605

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 28
    goto :goto_3

    .line 29
    .line 30
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 31
    goto :goto_2

    .line 32
    .line 33
    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a0c2a

    .line 39
    .line 40
    if-ne v0, v1, :cond_4

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 47
    goto :goto_3

    .line 48
    .line 49
    .line 50
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0746

    .line 55
    .line 56
    if-ne p1, v0, :cond_6

    .line 57
    const/4 p1, 0x3

    .line 58
    .line 59
    iput p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->vvChatJoinType:I

    .line 60
    .line 61
    .line 62
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateViews()V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f120bb0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 14
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    const v0, 0x104000a

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    const v1, 0x7f12052e

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    const/4 p2, 0x2

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x104000a

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateLivePermission()V

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->freeTalkLayout:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->requireApprovalLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLivePermissionBinding;->inviteOnlyLayout:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/setting/LivePermissionFragment;->updateViews()V

    .line 39
    .line 40
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 50
    return-void
.end method
