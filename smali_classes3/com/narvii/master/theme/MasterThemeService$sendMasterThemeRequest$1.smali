.class public final Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MasterThemeService.kt"


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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasterThemeService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MasterThemeService.kt\ncom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1\n*L\n1#1,73:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/theme/MasterThemeService;


# direct methods
.method constructor <init>(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/MasterAppearanceResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setRequesting$p(Lcom/narvii/master/theme/MasterThemeService;Z)V

    if-eqz p2, :cond_0

    .line 46
    iget-object p1, p2, Lcom/narvii/master/MasterAppearanceResponse;->appearanceSettings:Lcom/narvii/master/MasterAppearance;

    if-eqz p1, :cond_0

    .line 47
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    iget-object v0, p1, Lcom/narvii/master/MasterAppearance;->backgroundMediaList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setBackgroundMediaList$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/util/List;)V

    .line 48
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    iget v0, p1, Lcom/narvii/master/MasterAppearance;->primaryColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/master/theme/MasterThemeService;->access$setPrimaryColor$p(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/Integer;)V

    .line 49
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeService;->access$getEventDispatcher$p(Lcom/narvii/master/theme/MasterThemeService;)Lcom/narvii/util/EventDispatcher;

    move-result-object p2

    new-instance v0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;

    invoke-direct {v0, p1}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;-><init>(Lcom/narvii/master/MasterAppearance;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/narvii/master/MasterAppearanceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/MasterAppearanceResponse;)V

    return-void
.end method
