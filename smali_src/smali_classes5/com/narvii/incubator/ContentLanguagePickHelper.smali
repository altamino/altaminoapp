.class public final Lcom/narvii/incubator/ContentLanguagePickHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final showLanguagePickerDialog(Lcom/narvii/app/NVActivity;)V
    .locals 9
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 23
    .line 24
    const-string v1, "community-collection/supported-languages"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const-string v3, "start"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const/16 v1, 0x64

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v3, "size"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "content_language"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    move-object v5, v1

    .line 67
    .line 68
    check-cast v5, Lcom/narvii/language/ContentLanguageService;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    const-string v1, "getRequestPrefLanguageWithEnAsDefault(...)"

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    const-string v1, "api"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    move-object v7, v1

    .line 85
    .line 86
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 87
    .line 88
    .line 89
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    const-class v6, Lcom/narvii/master/explorer/SupportLanguageResponse;

    .line 92
    .line 93
    new-instance v8, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;

    .line 94
    move-object v1, v8

    .line 95
    move-object v3, p1

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/app/NVActivity;Ljava/lang/String;Lcom/narvii/language/ContentLanguageService;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 102
    return-void
.end method
