.class Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;
.super Ljava/lang/Object;
.source "DeprecatedStandalonePromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 50
    new-instance v0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog;

    iget-object v1, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    iget-object v1, v1, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/amino/DeprecatedGuideToMasterDialog;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1$1;-><init>(Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 58
    iget-object v0, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "deprecatedStandaloneShownCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 59
    iget-object v2, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;->this$0:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    iget-object v2, v2, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "deprecatedStandaloneTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
