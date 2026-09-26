.class public final Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;
.super Lcom/narvii/master/home/profile/BaseImageEditActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;,
        Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;
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
    value = "SMAP\nEditGlobalBackgroundActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditGlobalBackgroundActivity.kt\ncom/narvii/master/home/profile/EditGlobalBackgroundActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
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

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;

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
.method protected doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;)V
    .locals 4
    .param p1    # Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

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
    check-cast p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
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
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

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
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->postClazz()Ljava/lang/Class;

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
    check-cast v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    .line 42
    .line 43
    const-string v0, "medias"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-class v1, Lcom/narvii/model/Media;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "readListAs(...)"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 69
    move-object v0, v1

    .line 70
    .line 71
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    .line 72
    .line 73
    const-string v2, "backgroundMedias"

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 79
    move-object p1, v1

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 90
    move-object p1, v1

    .line 91
    .line 92
    :cond_2
    check-cast p1, Ljava/util/Collection;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 96
    move-result p1

    .line 97
    .line 98
    xor-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseImageEditActivity;->getImage()Lcom/narvii/widget/NVImageView;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->backgroundMedias:Ljava/util/List;

    .line 107
    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    move-object v1, v0

    .line 114
    :goto_0
    const/4 v0, 0x0

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Lcom/narvii/model/Media;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 124
    :cond_4
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
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->accountService:Lcom/narvii/account/AccountService;

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
            "Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->post:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

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
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->savePost()Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    move-result-object v0

    return-object v0
.end method
