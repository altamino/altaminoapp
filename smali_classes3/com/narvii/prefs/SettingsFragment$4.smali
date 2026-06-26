.class Lcom/narvii/prefs/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$4;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 2

    .line 238
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f0e19

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$4;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const-string v1, "returnToSendChat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/SettingsFragment$4;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
