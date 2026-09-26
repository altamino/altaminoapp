.class public final Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/incubator/ContentLanguagePickHelper;->showLanguagePickerDialog(Lcom/narvii/app/NVActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/explorer/SupportLanguageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcom/narvii/app/NVActivity;

.field final synthetic $contentLanguage:Ljava/lang/String;

.field final synthetic $languageService:Lcom/narvii/language/ContentLanguageService;

.field final synthetic $progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/app/NVActivity;Ljava/lang/String;Lcom/narvii/language/ContentLanguageService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/app/NVActivity;",
            "Ljava/lang/String;",
            "Lcom/narvii/language/ContentLanguageService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/explorer/SupportLanguageResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$activity:Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$contentLanguage:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$languageService:Lcom/narvii/language/ContentLanguageService;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;Lcom/narvii/language/LanguageSpec;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->onFinish$lambda$0(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;Lcom/narvii/language/LanguageSpec;)V

    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;Lcom/narvii/language/LanguageSpec;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    iget-object v0, p2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$activity:Lcom/narvii/app/NVActivity;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 31
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/explorer/SupportLanguageResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 5
    :cond_0
    new-instance p1, Lcom/narvii/incubator/LanguageChooseDialog;

    iget-object v0, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$activity:Lcom/narvii/app/NVActivity;

    iget-object p2, p2, Lcom/narvii/master/explorer/SupportLanguageResponse;->supportedLanguages:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$contentLanguage:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v1}, Lcom/narvii/incubator/LanguageChooseDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$languageService:Lcom/narvii/language/ContentLanguageService;

    .line 6
    new-instance v0, Lcom/narvii/incubator/a;

    invoke-direct {v0, p1, p2}, Lcom/narvii/incubator/a;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Lcom/narvii/language/ContentLanguageService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/incubator/LanguageChooseDialog;->setOnItemClickListener(Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V

    return-void
.end method
