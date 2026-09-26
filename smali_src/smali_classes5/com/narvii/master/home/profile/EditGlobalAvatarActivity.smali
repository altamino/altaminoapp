.class public final Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;
.super Lcom/narvii/master/home/profile/BaseImageEditActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;,
        Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;
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
    value = "SMAP\nEditGlobalAvatarActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalAvatarActivity.kt\ncom/narvii/master/home/profile/EditGlobalAvatarActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected doPost(Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;)V
    .locals 4
    .param p1    # Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    if-nez v1, :cond_0

    const-string v1, "accountService"

    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v2, Lcom/narvii/model/api/UserResponse;

    .line 5
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->doPost(Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    const-string p1, "post"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->postClazz()Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "readAs(...)"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->getImage()Lcom/narvii/widget/NVImageView;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    :cond_0
    iget-object p1, v1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 59
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "accountService"

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    :cond_0
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    const-string p2, "__finish"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 46
    const/4 p2, -0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 68
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->post:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    if-nez v0, :cond_0

    const-string v0, "post"

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->savePost()Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$UserAvatarPost;

    move-result-object v0

    return-object v0
.end method
