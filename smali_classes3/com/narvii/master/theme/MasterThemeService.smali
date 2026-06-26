.class public final Lcom/narvii/master/theme/MasterThemeService;
.super Ljava/lang/Object;
.source "MasterThemeService.kt"


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
.end field

.field private final eventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/master/theme/MasterThemeListener;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesting:Z

.field private languageChangeListener:Lcom/narvii/language/LanguageChangeListener;

.field private final languageService:Lcom/narvii/language/ContentLanguageService;

.field private primaryColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content_language"

    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string v0, "api"

    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 20
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 26
    new-instance p1, Lcom/narvii/master/theme/MasterThemeService$languageChangeListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/theme/MasterThemeService$languageChangeListener$1;-><init>(Lcom/narvii/master/theme/MasterThemeService;)V

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->languageChangeListener:Lcom/narvii/language/LanguageChangeListener;

    .line 31
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->languageService:Lcom/narvii/language/ContentLanguageService;

    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->languageChangeListener:Lcom/narvii/language/LanguageChangeListener;

    invoke-virtual {p1, v0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getBackgroundMediaList$p(Lcom/narvii/master/theme/MasterThemeService;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getEventDispatcher$p(Lcom/narvii/master/theme/MasterThemeService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getPrimaryColor$p(Lcom/narvii/master/theme/MasterThemeService;)Ljava/lang/Integer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeService;->primaryColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$isRequesting$p(Lcom/narvii/master/theme/MasterThemeService;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    return p0
.end method

.method public static final synthetic access$sendMasterThemeRequest(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/master/theme/MasterThemeService;->sendMasterThemeRequest(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setBackgroundMediaList$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/util/List;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setPrimaryColor$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->primaryColor:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/narvii/master/theme/MasterThemeService;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    return-void
.end method

.method private final sendMasterThemeRequest(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/client-config/appearance-settings"

    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeService;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string v1, "languageService"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "language"

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v1, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;

    const-class v2, Lcom/narvii/master/MasterAppearanceResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;-><init>(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public final registerListener(Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 57
    iget-boolean v0, p0, Lcom/narvii/master/theme/MasterThemeService;->isRequesting:Z

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->backgroundMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeService;->primaryColor:Ljava/lang/Integer;

    invoke-interface {p1, v0, v1}, Lcom/narvii/master/theme/MasterThemeListener;->onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/master/theme/MasterThemeService;->sendMasterThemeRequest(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterListener(Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService;->eventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method
