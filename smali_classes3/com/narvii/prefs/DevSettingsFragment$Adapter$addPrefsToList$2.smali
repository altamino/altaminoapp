.class final Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;
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
        "Lcom/narvii/list/prefs/PrefsEntry;",
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

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->$option:Lcom/narvii/prefs/model/DevOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 154
    :cond_0
    const-class p1, Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->$group:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->$option:Lcom/narvii/prefs/model/DevOption;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "option"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->$option:Lcom/narvii/prefs/model/DevOption;

    iget-object v0, v0, Lcom/narvii/prefs/model/DevOption;->type:Ljava/lang/String;

    const-string v1, "single-selection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "singleSelection"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    const v1, 0xfd31

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;->call(Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
