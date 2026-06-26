.class Lcom/narvii/util/CheckEligibleHelper$1;
.super Ljava/lang/Object;
.source "CheckEligibleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/CheckEligibleHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/CheckEligibleHelper;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    iget-object v0, p1, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p1, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 41
    iget-object v0, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    iget-object v0, v0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
