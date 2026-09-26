.class Lcom/narvii/rate/RateAppHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/rate/RateAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/rate/RateAppHelper;


# direct methods
.method constructor <init>(Lcom/narvii/rate/RateAppHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;->onCall()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->a(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->a(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 31
    .line 32
    :cond_1
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/master/CommunityHelper;->getFeedBackIntent()Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/narvii/rate/RateAppHelper$2;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 51
    return-void
.end method
