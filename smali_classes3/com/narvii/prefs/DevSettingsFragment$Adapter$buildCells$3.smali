.class final Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;
.super Ljava/lang/Object;
.source "DevSettingsFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSettingsFragment$Adapter;->buildCells(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const-string v2, "VideoStrategyInfo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    sput-boolean p1, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
