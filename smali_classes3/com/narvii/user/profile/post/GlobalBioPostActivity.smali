.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "GlobalBioPostActivity.kt"


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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalBioPostActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalBioPostActivity.kt\ncom/narvii/user/profile/post/GlobalBioPostActivity\n*L\n1#1,189:1\n*E\n"
.end annotation


# static fields
.field private static final BIO_MAX_CHARACTER:I = 0x1f4

.field private static final BIO_MAX_LINE:I = 0x14

.field public static final Companion:Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INSERT_IMG:I = 0x8


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

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

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->Companion:Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;
    .locals 1

    sget-object v0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->Companion:Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    return-object v0
.end method

.method public static final synthetic access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editContent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getInputHint$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->inputHint:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "inputHint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;Lcom/narvii/widget/EditTextLink;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    return-void
.end method

.method public static final synthetic access$setInputHint$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->inputHint:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 3

    .line 137
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/user-profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void

    :cond_0
    const-string p1, "accountService"

    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4

    if-eqz p1, :cond_4

    const-string v0, "uid"

    .line 150
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userProfile"

    .line 151
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 152
    invoke-virtual {p1, p0, v1, v0}, Lcom/narvii/user/profile/post/UserProfilePost;->getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    const/4 v2, 0x0

    const-string v3, "accountService"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_3
    :goto_0
    const-class v1, Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    .line 161
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "preview"

    .line 162
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "prefetch"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v0, "Profile"

    .line 164
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

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

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "refIdList"

    .line 113
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediaList"

    .line 114
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/Media;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p3

    .line 117
    iput-object p2, p3, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 118
    iput-object p3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 119
    iget-object p2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 120
    iget-object p2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "editContent"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-string p1, "post"

    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 186
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 187
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0320

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const-string p1, "account"

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 59
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "photo"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->photoDir:Ljava/io/File;

    .line 60
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->photoDir:Ljava/io/File;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    const-string p1, "post"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "JacksonUtils.readAs(getS\u2026rProfilePost::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    const/4 v0, 0x0

    const-string v2, "supportImage"

    .line 62
    invoke-virtual {p0, v2, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->supportImage:Z

    const v0, 0x7f0902d0

    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.content)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/EditTextLink;

    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    const v0, 0x7f0905ab

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.input_hint)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->inputHint:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080264

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0f03d4

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 70
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    const-string v2, "editContent"

    if-eqz v0, :cond_3

    new-instance v3, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;

    invoke-direct {v3, p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;-><init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    if-eqz v3, :cond_1

    iget-object p1, v3, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;-><init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "photoDir"

    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 178
    instance-of v0, p2, Lcom/narvii/model/api/UserResponse;

    if-eqz v0, :cond_1

    .line 179
    move-object v0, p2

    check-cast v0, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 182
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

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

    .line 125
    const-class v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method public bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/user/profile/post/UserProfilePost;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    const-string v1, "post"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->post:Lcom/narvii/user/profile/post/UserProfilePost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "editContent"

    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected supportPreview()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->supportImage:Z

    return v0
.end method

.method public bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4

    .line 170
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 172
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    const-string v3, "editContent"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->editContent:Lcom/narvii/widget/EditTextLink;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 172
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
