.class Lcom/narvii/prompt/OptinAdsPromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/OptinAdsPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/OptinAdsPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/OptinAdsPromptHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/OptinAdsPromptHelper$1;->this$0:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/optinads/OptinAdsPopupDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/OptinAdsPromptHelper$1;->this$0:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/narvii/wallet/optinads/OptinAdsPopupDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/prompt/OptinAdsPromptHelper$1;->this$0:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "ads"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/prompt/AccountPopUpUtils;->reportPopUpShown(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/prompt/OptinAdsPromptHelper$1;->this$0:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "ads_pop_up_last_shown_time"

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v2

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    return-void
.end method
