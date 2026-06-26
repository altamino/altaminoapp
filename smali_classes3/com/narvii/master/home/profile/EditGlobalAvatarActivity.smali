.class public final Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;
.super Lcom/narvii/master/home/profile/BaseImageEditActivity;
.source "EditGlobalAvatarActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;,
        Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/master/home/profile/BaseImageEditActivity<",
        "Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditGlobalAvatarActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalAvatarActivity.kt\ncom/narvii/master/home/profile/EditGlobalAvatarActivity\n*L\n1#1,84:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountService:Lcom/narvii/account/AccountService;

.field private post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected doPost(Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;)V
    .locals 3

    .line 51
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 54
    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void

    :cond_0
    const-string p1, "accountService"

    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->doPost(Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "post"

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->postClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "JacksonUtils.readAs(getS\u2026ram(\"post\"), postClazz())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    .line 39
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->getImage()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 58
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 59
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object p1

    .line 60
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, -0x1

    .line 67
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "__finish"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_3

    const-string p2, "progressDialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "post"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->savePost()Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    move-result-object v0

    return-object v0
.end method
