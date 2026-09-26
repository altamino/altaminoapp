.class Lcom/narvii/prefs/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
        "Lcom/narvii/list/prefs/PrefsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 3

    .line 2
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v0, 0x7f120f3f

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 3
    iget v0, p1, Lcom/narvii/prefs/SettingsFragment;->firebaseIdCounter:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "push"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "gcmToken"

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207c6

    invoke-static {v0, p1, v1}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 7
    iput v0, p1, Lcom/narvii/prefs/SettingsFragment;->firebaseIdCounter:I

    .line 8
    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->about()V

    :goto_0
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 9
    iput-boolean v2, p1, Lcom/narvii/prefs/SettingsFragment;->abted:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/SettingsFragment$3;->call(Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
