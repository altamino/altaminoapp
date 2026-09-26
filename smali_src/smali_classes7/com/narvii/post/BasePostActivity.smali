.class public abstract Lcom/narvii/post/BasePostActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;,
        Lcom/narvii/post/BasePostActivity$BaseImgCallback;,
        Lcom/narvii/post/BasePostActivity$HideHintWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/narvii/post/PostObject;",
        ">",
        "Lcom/narvii/app/NVActivity;",
        "Lcom/narvii/post/PostListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnResultListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;"
    }
.end annotation


# static fields
.field public static final POST_FAIL_FANS_CLUB_CLOSED:I = 0x12c1

.field private static final TYPEFACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected discardDraft:Z

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field protected ndcSubmitToken:Ljava/lang/String;

.field protected progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "^((?:\\[[BCIUS]+\\])+).*$"

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/post/BasePostActivity;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 7
    return-void
.end method

.method private synthetic lambda$onLoginResult$0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->checkEligible()V

    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/narvii/post/BasePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;->lambda$onLoginResult$0()V

    return-void
.end method

.method static bridge synthetic t()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/post/BasePostActivity;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected checkActivation()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    sget v1, Lcom/narvii/lib/R$string;->post_not_eligible:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account_first:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 36
    .line 37
    const/high16 v1, 0x1040000

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    .line 44
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account:I

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/post/BasePostActivity$6;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/narvii/post/BasePostActivity$6;-><init>(Lcom/narvii/post/BasePostActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/post/BasePostActivity$7;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/post/BasePostActivity$7;-><init>(Lcom/narvii/post/BasePostActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 64
    const/4 v0, 0x0

    .line 65
    return v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 67
    return v0
.end method

.method protected checkEligible()V
    .locals 0

    .line 1
    return-void
.end method

.method protected checkEligible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "account"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/compose-eligible-check"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "objectType"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "objectSubtype"

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p2, "api"

    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 9
    new-instance v0, Lcom/narvii/post/BasePostActivity$4;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/post/BasePostActivity$4;-><init>(Lcom/narvii/post/BasePostActivity;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createPreviewOption(Landroid/view/Menu;)V
    .locals 5

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$string;->compose_preview:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    sget v3, Lcom/narvii/lib/R$string;->ion_eye:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    const v4, 0x3f59999a    # 0.85f

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 34
    return-void
.end method

.method protected createSubmitButton(Landroid/view/Menu;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sget v1, Lcom/narvii/lib/R$string;->post_submit:I

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$string;->fa_check:I

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 27
    return-void
.end method

.method protected abstract doPost(Lcom/narvii/post/PostObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected eligibleFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9
    .line 10
    sget p1, Lcom/narvii/lib/R$string;->close:I

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/post/BasePostActivity$5;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/post/BasePostActivity$5;-><init>(Lcom/narvii/post/BasePostActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 27
    return-void
.end method

.method protected fanClubClosedHintStrId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->fans_club_closed:I

    return v0
.end method

.method protected getNdcSubmitToken()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public abstract isEdit()Z
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logPageViewEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const-string v0, "ndcSubmitToken"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    :goto_0
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "mediaPicker"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 63
    .line 64
    iput-object p0, p1, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->supportPreview()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->createPreviewOption(Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->showSubmitButton()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->createSubmitButton(Landroid/view/Menu;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "loginAhead"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/post/a;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/post/a;-><init>(Lcom/narvii/post/BasePostActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    .line 34
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$string;->post_submit:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPost()V

    .line 13
    return v2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/lib/R$string;->compose_preview:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPreview()V

    .line 25
    return v2

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public onPickColorResult(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v0, "loginAhead"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 4
    move-result p4

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p4, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result p4

    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    iget-object p4, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 23
    .line 24
    :cond_1
    iget-object p4, p1, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    .line 25
    .line 26
    instance-of p4, p4, Lcom/narvii/influencer/FansOnlyPost;

    .line 27
    .line 28
    if-eqz p4, :cond_2

    .line 29
    .line 30
    const/16 p4, 0x12c1

    .line 31
    .line 32
    if-ne p2, p4, :cond_2

    .line 33
    .line 34
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->fanClubClosedHintStrId()I

    .line 45
    move-result p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 49
    .line 50
    sget p3, Lcom/narvii/lib/R$string;->cancel:I

    .line 51
    const/4 p4, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 55
    .line 56
    sget p3, Lcom/narvii/lib/R$string;->post_submit:I

    .line 57
    .line 58
    new-instance p4, Lcom/narvii/post/BasePostActivity$3;

    .line 59
    .line 60
    .line 61
    invoke-direct {p4, p0, p1}, Lcom/narvii/post/BasePostActivity$3;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/narvii/post/BasePostActivity;->showErrorMsg(ILjava/lang/String;)V

    .line 72
    :goto_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    instance-of v0, p2, Lcom/narvii/model/api/ObjectResponse;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p2

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v1, "object"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2, v0}, Lcom/narvii/post/BasePostActivity;->sendNotification(Lcom/narvii/model/api/ApiResponse;Lcom/narvii/model/NVObject;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    return-void

    .line 38
    .line 39
    :cond_1
    const-string p2, "community"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    const-class v0, Lcom/narvii/model/Community;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    check-cast p2, Lcom/narvii/model/Community;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    const-string v0, "cid"

    .line 62
    .line 63
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    :cond_2
    const/4 p2, -0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 89
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(II)V

    .line 22
    :cond_0
    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/post/BasePostActivity$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/narvii/post/BasePostActivity$2;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    .line 24
    const-string v0, "fail to show progress dialog"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "ndcSubmitToken"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public abstract postClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract savePost()Lcom/narvii/post/PostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected sendNotification(Lcom/narvii/model/api/ApiResponse;Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "edit"

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-string v0, "new"

    .line 12
    .line 13
    :goto_0
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 17
    .line 18
    iput-object p1, v1, Lcom/narvii/notification/Notification;->response:Lcom/narvii/model/api/ApiResponse;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 22
    return-void
.end method

.method protected showAlert(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected showErrorMsg(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xe6

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-lez p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const p2, 0x104000a

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p2, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 52
    :goto_0
    return-void
.end method

.method protected showSubmitButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startPost()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->doPost(Lcom/narvii/post/PostObject;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/high16 v1, 0x1040000

    .line 42
    .line 43
    sget-object v3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    sget v1, Lcom/narvii/lib/R$string;->continue_:I

    .line 49
    .line 50
    new-instance v3, Lcom/narvii/post/BasePostActivity$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, p0, v0}, Lcom/narvii/post/BasePostActivity$1;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostObject;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method protected startPreview()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->doPreview(Lcom/narvii/post/PostObject;)V

    .line 17
    .line 18
    const-string v0, "statistics"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 25
    .line 26
    const-string v1, "Preview Post"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "Preview Post Total"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "select_post"

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trimMediaList(Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;II)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-le v2, p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, v3

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-array v1, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    aput-object p2, v1, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 45
    :cond_1
    return-void
.end method

.method protected updateView(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected validateEditTextMax(Landroid/widget/EditText;II)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-le v1, p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 19
    const/4 p1, 0x2

    .line 20
    .line 21
    new-array p1, p1, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p2

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    aput-object p2, p1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    aput-object p2, p1, v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    .line 46
    return v1

    .line 47
    :cond_0
    return v2
.end method

.method protected validateEditTextNotEmpty(Landroid/widget/EditText;I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "\\u200D"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    new-instance p2, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p1}, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;-><init>(Landroid/widget/TextView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :cond_0
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method protected validateMediaListMax(Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;II)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result p1

    .line 8
    .line 9
    if-le p1, p2, :cond_0

    .line 10
    .line 11
    new-array p1, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    aput-object p2, p1, v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    .line 26
    :cond_0
    return v0
.end method

.method protected validateMediaListNotEmpty(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
