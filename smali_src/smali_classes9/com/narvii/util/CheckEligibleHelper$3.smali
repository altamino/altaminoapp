.class Lcom/narvii/util/CheckEligibleHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/CheckEligibleHelper;->checkActivation()Z
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
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$3;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string p2, "ndc://activation"

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const-string v0, "android.intent.action.VIEW"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/narvii/util/CheckEligibleHelper$3;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/narvii/util/CheckEligibleHelper$3;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    return-void
.end method
