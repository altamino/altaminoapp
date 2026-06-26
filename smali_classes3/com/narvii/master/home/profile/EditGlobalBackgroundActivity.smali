.class public final Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;
.super Lcom/narvii/master/home/profile/BaseImageEditActivity;
.source "EditGlobalBackgroundActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;,
        Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/master/home/profile/BaseImageEditActivity<",
        "Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditGlobalBackgroundActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalBackgroundActivity.kt\ncom/narvii/master/home/profile/EditGlobalBackgroundActivity\n*L\n1#1,95:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountService:Lcom/narvii/account/AccountService;

.field private backgroundMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;)V
    .locals 3

    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

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

    .line 57
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 59
    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void

    :cond_0
    const-string p1, "accountService"

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "post"

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->postClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "JacksonUtils.readAs(getS\u2026ram(\"post\"), postClazz())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    const-string v0, "medias"

    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "JacksonUtils.readListAs(\u2026ias\"), Media::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    const-string v2, "backgroundMedias"

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->getImage()Lcom/narvii/widget/NVImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 63
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 64
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, -0x1

    .line 72
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "__finish"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_3

    const-string p2, "progressDialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 77
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
            "Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;",
            ">;"
        }
    .end annotation

    .line 51
    const-class v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

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

    .line 21
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->savePost()Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    move-result-object v0

    return-object v0
.end method
