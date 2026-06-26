.class Lcom/narvii/rate/RateAppHelper$2;
.super Ljava/lang/Object;
.source "RateAppHelper.java"

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

    .line 68
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;->onCall()V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->access$000(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->access$000(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 77
    :cond_1
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object v0, v0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 78
    invoke-virtual {p1}, Lcom/narvii/master/CommunityHelper;->getFeedBackIntent()Landroid/content/Intent;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper$2;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object v0, v0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
