.class final Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;
.super Ljava/lang/Object;
.source "MasterThemeService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/MasterAppearanceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/master/theme/MasterThemeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/master/MasterAppearance;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterAppearance;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;->$it:Lcom/narvii/master/MasterAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/master/theme/MasterThemeListener;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;->$it:Lcom/narvii/master/MasterAppearance;

    iget-object v1, v0, Lcom/narvii/master/MasterAppearance;->backgroundMediaList:Ljava/util/List;

    iget v0, v0, Lcom/narvii/master/MasterAppearance;->primaryColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/narvii/master/theme/MasterThemeListener;->onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/master/theme/MasterThemeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1;->call(Lcom/narvii/master/theme/MasterThemeListener;)V

    return-void
.end method
