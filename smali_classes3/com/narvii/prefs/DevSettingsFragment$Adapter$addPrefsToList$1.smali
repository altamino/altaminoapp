.class final Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;
.super Ljava/lang/Object;
.source "DevSettingsFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V
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
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $group:Ljava/lang/String;

.field final synthetic $option:Lcom/narvii/prefs/model/DevOption;

.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->$option:Lcom/narvii/prefs/model/DevOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 132
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/device/dev-options"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->$group:Ljava/lang/String;

    const-string v2, "group"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->$option:Lcom/narvii/prefs/model/DevOption;

    iget-object v1, v1, Lcom/narvii/prefs/model/DevOption;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 135
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getApi$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object v0

    new-instance v1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;

    const-class v2, Lcom/narvii/pushservice/DeviceResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
