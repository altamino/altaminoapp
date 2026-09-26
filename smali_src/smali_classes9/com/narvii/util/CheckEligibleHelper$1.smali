.class Lcom/narvii/util/CheckEligibleHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v0, "api"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/CheckEligibleHelper$1;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 24
    :cond_0
    return-void
.end method
