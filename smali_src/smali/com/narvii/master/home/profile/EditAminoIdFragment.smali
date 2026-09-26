.class public final Lcom/narvii/master/home/profile/EditAminoIdFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_LENGTH:I = 0x19

.field public static final MIN_LENGTH:I = 0x3


# instance fields
.field private final account$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final comfirmDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editDelete$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final edtAminoId$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorDialog:Lcom/narvii/widget/ACMAlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final inputHint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final limitAlert$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->Companion:Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$account$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$account$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->account$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$api$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$api$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->api$delegate:Lw7/m;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a04b4

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lw7/m;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->edtAminoId$delegate:Lw7/m;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a04b9

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lw7/m;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->editDelete$delegate:Lw7/m;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a07e3

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lw7/m;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->limitAlert$delegate:Lw7/m;

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0729

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lw7/m;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->inputHint$delegate:Lw7/m;

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->comfirmDialog$delegate:Lw7/m;

    .line 73
    return-void
.end method

.method public static final synthetic access$createComfirmDialog(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->createComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAccount(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getAccount()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->errorDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->errorDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    return-void
.end method

.method public static final synthetic access$updateView(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->updateView()V

    .line 4
    return-void
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/home/profile/EditAminoIdFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final createComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120171

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f12043c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f1201e2

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/master/home/profile/b;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/b;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 34
    .line 35
    .line 36
    const v2, 0x7f1212a7

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    return-object v0
.end method

.method private static final createComfirmDialog$lambda$0(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit()V

    .line 9
    return-void
.end method

.method private final getAccount()Lcom/narvii/account/AccountService;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->account$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    return-object v0
.end method

.method private final getApi()Lcom/narvii/util/http/ApiService;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method private final getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->comfirmDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    return-object v0
.end method

.method private final getEditDelete()Landroid/widget/ImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->editDelete$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method private final getEdtAminoId()Landroid/widget/EditText;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->edtAminoId$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
    return-object v0
.end method

.method private final getInputHint()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->inputHint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getLimitAlert()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->limitAlert$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit$lambda$2(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->createComfirmDialog$lambda$0(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onActivityCreated$lambda$1(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

.method public static synthetic p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->onActivityCreated$lambda$1(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/view/View;)V

    return-void
.end method

.method private final submit()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/master/home/profile/c;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/c;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "aminoId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "/account/change-amino-id"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;

    .line 77
    .line 78
    const-class v3, Lcom/narvii/model/api/EditAminoIdResponse;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
    return-void
.end method

.method private static final submit$lambda$2(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 19
    :cond_0
    return-void
.end method

.method private final updateAminoId()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 18
    :cond_0
    return-void
.end method

.method private final updateView()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/CheckAminoIdUtils;->Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

    .line 15
    .line 16
    const/16 v2, 0x19

    .line 17
    const/4 v3, 0x3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/CheckAminoIdUtils$Companion;->validateAminoId(Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, 0x1

    .line 26
    .line 27
    if-eq v0, v5, :cond_3

    .line 28
    const/4 v6, 0x2

    .line 29
    .line 30
    .line 31
    const v7, -0xffb3

    .line 32
    const/4 v8, 0x0

    .line 33
    .line 34
    if-eq v0, v6, :cond_2

    .line 35
    .line 36
    if-eq v0, v3, :cond_1

    .line 37
    const/4 v2, 0x4

    .line 38
    .line 39
    if-eq v0, v2, :cond_0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    new-array v1, v5, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    aput-object v2, v1, v8

    .line 82
    .line 83
    .line 84
    const v2, 0x7f120140

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    const v1, 0x7f12013f

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :goto_0
    return-void
.end method

.method private final validatePass()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/CheckAminoIdUtils;->Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

    .line 15
    .line 16
    const/16 v2, 0x19

    .line 17
    const/4 v3, 0x3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/CheckAminoIdUtils$Companion;->validateAminoId(Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1
.end method


# virtual methods
.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEditDelete()Landroid/widget/ImageView;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/master/home/profile/a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/a;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f080369

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f12043a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 35
    const/4 p1, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
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
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f121173

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v8, Lcom/narvii/util/ActionBarIcon;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    const v1, 0x7f12052e

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    const v4, 0x3f59999a    # 0.85f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    const v5, 0x7f0604b1

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 45
    move-result v5

    .line 46
    .line 47
    const/16 v6, 0x7f

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v1, v8

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 61
    .line 62
    .line 63
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02c6

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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
    const v1, 0x7f121173

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->updateAminoId()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 11
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 20
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "menu"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v2, 0x7f121173

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->validatePass()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    const v4, 0x7f0604b1

    .line 27
    .line 28
    .line 29
    const v5, 0x7f12052e

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v7

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    .line 43
    .line 44
    const v9, 0x3f59999a    # 0.85f

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 52
    move-result v10

    .line 53
    .line 54
    const/16 v11, 0xff

    .line 55
    const/4 v12, 0x0

    .line 56
    move-object v6, v3

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v6 .. v12}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v14

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v15

    .line 71
    .line 72
    .line 73
    const v16, 0x3f59999a    # 0.85f

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 81
    move-result v17

    .line 82
    .line 83
    const/16 v18, 0x80

    .line 84
    .line 85
    const/16 v19, 0x0

    .line 86
    move-object v13, v3

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v13 .. v19}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 96
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    const-string/jumbo v0, "view"

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
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getAccount()Lcom/narvii/account/AccountService;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getInputHint()Landroid/widget/TextView;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    new-array p2, p2, [Ljava/lang/Object;

    .line 31
    const/4 v0, 0x3

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    aput-object v0, p2, v1

    .line 39
    .line 40
    const/16 v0, 0x19

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    aput-object v0, p2, v1

    .line 48
    .line 49
    .line 50
    const v0, 0x7f12043b

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
