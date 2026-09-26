.class public final Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/theme/MasterThemeService;->sendMasterThemeRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/MasterAppearanceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/theme/MasterThemeService;


# direct methods
.method constructor <init>(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/theme/MasterThemeService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/MasterAppearanceResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/MasterAppearance;Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->onFinish$lambda$1$lambda$0(Lcom/narvii/master/MasterAppearance;Lcom/narvii/master/theme/MasterThemeListener;)V

    return-void
.end method

.method private static final onFinish$lambda$1$lambda$0(Lcom/narvii/master/MasterAppearance;Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$it"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/MasterAppearance;->backgroundMediaList:Ljava/util/List;

    .line 8
    .line 9
    iget p0, p0, Lcom/narvii/master/MasterAppearance;->primaryColor:I

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, p0}, Lcom/narvii/master/theme/MasterThemeListener;->onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/MasterAppearanceResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/MasterAppearanceResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setRequesting$p(Lcom/narvii/master/theme/MasterThemeService;Z)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p2, Lcom/narvii/master/MasterAppearanceResponse;->appearanceSettings:Lcom/narvii/master/MasterAppearance;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    .line 5
    iget-object v0, p1, Lcom/narvii/master/MasterAppearance;->backgroundMediaList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setBackgroundMediaList$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/util/List;)V

    .line 6
    iget v0, p1, Lcom/narvii/master/MasterAppearance;->primaryColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setPrimaryColor$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeService;->access$getEventDispatcher$p(Lcom/narvii/master/theme/MasterThemeService;)Lcom/narvii/util/EventDispatcher;

    move-result-object p2

    new-instance v0, Lcom/narvii/master/theme/c;

    invoke-direct {v0, p1}, Lcom/narvii/master/theme/c;-><init>(Lcom/narvii/master/MasterAppearance;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/master/MasterAppearanceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/MasterAppearanceResponse;)V

    return-void
.end method
