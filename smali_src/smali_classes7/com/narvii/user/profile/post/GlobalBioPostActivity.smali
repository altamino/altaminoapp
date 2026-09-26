.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/user/profile/post/UserProfilePost;",
        ">;"
    }
.end annotation


# static fields
.field private static final BIO_MAX_CHARACTER:I = 0x1f4

.field private static final BIO_MAX_LINE:I = 0x14

.field private static final Companion:Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INSERT_IMG:I = 0x8


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private editContent:Lcom/narvii/widget/EditTextLink;

.field private inputHint:Landroid/widget/TextView;

.field private photoDir:Ljava/io/File;

.field private post:Lcom/narvii/user/profile/post/UserProfilePost;

.field private supportImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->Companion:Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInputHint$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->inputHint:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 3
    .param p1    # Lcom/narvii/user/profile/post/UserProfilePost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    const-string v0, "accountService"

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4
    .param p1    # Lcom/narvii/user/profile/post/UserProfilePost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    const-string/jumbo v0, "uid"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userProfile"

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 4
    invoke-virtual {p1, p0, v1, v0}, Lcom/narvii/user/profile/post/UserProfilePost;->getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    const/4 v2, 0x0

    const-string v3, "accountService"

    if-nez v1, :cond_0

    .line 6
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    if-nez v1, :cond_1

    .line 7
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-class v1, Lcom/narvii/user/profile/BioDetailFragment;

    .line 8
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "preview"

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "prefetch"

    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v0, "Profile"

    .line 12
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p0, v1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEdit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const-string p1, "refIdList"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string p2, "mediaList"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    const-class p3, Lcom/narvii/model/Media;

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p3

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    iput-object p2, p3, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    const-string p2, "editContent"

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    const/4 p2, 0x0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d0352

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 13
    .line 14
    const-string p1, "account"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "getService(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    new-instance p1, Ljava/io/File;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "photo"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->photoDir:Ljava/io/File;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 51
    .line 52
    const-string p1, "post"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-class v1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v1, "readAs(...)"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v0, "supportImage"

    .line 75
    const/4 v1, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->supportImage:Z

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a039d

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v1, "findViewById(...)"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    check-cast v0, Lcom/narvii/widget/EditTextLink;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a0729

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    check-cast v0, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->inputHint:Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    const v1, 0x7f080369

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    const v0, 0x7f12043f

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 134
    .line 135
    const-string v1, "editContent"

    .line 136
    const/4 v2, 0x0

    .line 137
    .line 138
    if-nez v0, :cond_0

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 142
    move-object v0, v2

    .line 143
    .line 144
    :cond_0
    new-instance v3, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;

    .line 145
    .line 146
    .line 147
    invoke-direct {v3, p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;-><init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    .line 152
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 153
    .line 154
    if-nez v0, :cond_1

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 158
    move-object v0, v2

    .line 159
    .line 160
    :cond_1
    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 161
    .line 162
    if-nez v3, :cond_2

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 166
    move-object v3, v2

    .line 167
    .line 168
    :cond_2
    iget-object p1, v3, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    .line 174
    .line 175
    if-nez p1, :cond_3

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    move-object v2, p1

    .line 181
    .line 182
    :goto_0
    new-instance p1, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;-><init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
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
    instance-of v0, p2, Lcom/narvii/model/api/UserResponse;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "accountService"

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1, v0, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 31
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/user/profile/post/UserProfilePost;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method public bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/user/profile/post/UserProfilePost;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    const-string v1, "post"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-nez v3, :cond_1

    const-string v3, "editContent"

    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    if-nez v0, :cond_2

    .line 3
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method protected supportPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->supportImage:Z

    return v0
.end method

.method public bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4
    .param p1    # Lcom/narvii/user/profile/post/UserProfilePost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    const-string v3, "editContent"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-nez v1, :cond_2

    .line 4
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
