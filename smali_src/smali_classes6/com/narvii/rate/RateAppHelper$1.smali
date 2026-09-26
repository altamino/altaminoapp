.class Lcom/narvii/rate/RateAppHelper$1;
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
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

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
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

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
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

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
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/rate/RateAppHelper$1;->this$0:Lcom/narvii/rate/RateAppHelper;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string v0, "rateAppRated"

    .line 58
    const/4 v1, 0x1

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method
