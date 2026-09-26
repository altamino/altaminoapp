.class public final Lcom/narvii/master/theme/MasterThemeService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private backgroundMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final eventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/master/theme/MasterThemeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRequesting:Z

.field private languageChangeListener:Lcom/narvii/language/LanguageChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final languageService:Lcom/narvii/language/ContentLanguageService;

.field private primaryColor:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    const-string v0, "content_language"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 19
    .line 20
    const-string v1, "api"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/master/theme/b;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/narvii/master/theme/b;-><init>(Lcom/narvii/master/theme/MasterThemeService;)V

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->languageChangeListener:Lcom/narvii/language/LanguageChangeListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/theme/MasterThemeService;->languageChangeListener$lambda$0(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getEventDispatcher$p(Lcom/narvii/master/theme/MasterThemeService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setBackgroundMediaList$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static final synthetic access$setPrimaryColor$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->primaryColor:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/narvii/master/theme/MasterThemeService;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    .line 3
    return-void
.end method

.method private static final languageChangeListener$lambda$0(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/master/theme/MasterThemeService;->sendMasterThemeRequest(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method private final sendMasterThemeRequest(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "/client-config/appearance-settings"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v1, "getRequestPrefLanguageWithLocalAsDefault(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    :cond_0
    const-string v1, "language"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;

    .line 49
    .line 50
    const-class v2, Lcom/narvii/master/MasterAppearanceResponse;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0, v2}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;-><init>(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final registerListener(Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 2
    .param p1    # Lcom/narvii/master/theme/MasterThemeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "l"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeService;->primaryColor:Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lcom/narvii/master/theme/MasterThemeListener;->onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/master/theme/MasterThemeService;->sendMasterThemeRequest(Ljava/lang/String;)V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterListener(Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/master/theme/MasterThemeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "l"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 11
    return-void
.end method
