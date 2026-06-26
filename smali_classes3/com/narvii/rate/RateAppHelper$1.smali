.class Lcom/narvii/rate/RateAppHelper$1;
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

    .line 54
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;->onCall()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->access$000(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    invoke-static {p1}, Lcom/narvii/rate/RateAppHelper;->access$000(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object v0, p1, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "rateAppRated"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
