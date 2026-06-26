.class public final Lcom/narvii/master/home/profile/EditUsernameFragment;
.super Lcom/narvii/master/home/profile/BaseSingleEditFragment;
.source "EditUsernameFragment.kt"

# interfaces
.implements Lcom/narvii/post/PostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;,
        Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditUsernameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditUsernameFragment.kt\ncom/narvii/master/home/profile/EditUsernameFragment\n*L\n1#1,135:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

.field public static final MAX_LENGTH:I = 0x32


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private final editDelete$delegate:Lkotlin/Lazy;

.field private final editUsername$delegate:Lkotlin/Lazy;

.field private final inputHint$delegate:Lkotlin/Lazy;

.field public post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

.field private final postHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editUsername"

    const-string v4, "getEditUsername()Landroid/widget/EditText;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editDelete"

    const-string v4, "getEditDelete()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "inputHint"

    const-string v4, "getInputHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "postHelper"

    const-string v4, "getPostHelper()Lcom/narvii/post/PostHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/home/profile/EditUsernameFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditUsernameFragment;->Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;-><init>()V

    const v0, 0x7f0903d2

    .line 31
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editUsername$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903c2

    .line 32
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editDelete$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905ab

    .line 33
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->inputHint$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->postHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEditUsername$p(Lcom/narvii/master/home/profile/EditUsernameFragment;)Landroid/widget/EditText;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPostHelper$p(Lcom/narvii/master/home/profile/EditUsernameFragment;)Lcom/narvii/post/PostHelper;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    move-result-object p0

    return-object p0
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 133
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/master/home/profile/EditUsernameFragment$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getEditDelete()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editDelete$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditUsernameFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getEditUsername()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editUsername$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditUsernameFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final getInputHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->inputHint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditUsernameFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->postHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditUsernameFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/PostHelper;

    return-object v0
.end method

.method private final savePost()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "post"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPost()Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "post"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public layoutId()I
    .locals 1

    const v0, 0x7f0b029c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<AccountService>(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "post"

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const-string v1, "accountService.userProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;-><init>(Lcom/narvii/model/User;)V

    :goto_0
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    return-void

    :cond_1
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    .line 99
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    if-eqz p1, :cond_1

    .line 100
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/UserResponse;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 109
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 1

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to show progress dialog"

    .line 92
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->observeTextChanged(Landroid/widget/EditText;)V

    .line 54
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditDelete()Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/home/profile/EditUsernameFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "post"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public passValidate()Z
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x32

    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setPost(Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    return-void
.end method

.method protected submit()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/home/profile/EditUsernameFragment$submit$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$submit$1;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 70
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 74
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->savePost()V

    .line 75
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void

    :cond_0
    const-string v0, "post"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v0, "accountService"

    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public title()I
    .locals 1

    const v0, 0x7f0f03e4

    return v0
.end method

.method protected updateView()V
    .locals 3

    .line 79
    invoke-super {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->updateView()V

    .line 80
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 81
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getInputHint()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/50"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
