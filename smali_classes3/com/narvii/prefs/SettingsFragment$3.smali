.class Lcom/narvii/prefs/SettingsFragment$3;
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
        "Lcom/narvii/list/prefs/PrefsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 1

    .line 228
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v0, 0x7f0f0e14

    if-ne p1, v0, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->about()V

    .line 230
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$3;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/prefs/SettingsFragment;->abted:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/SettingsFragment$3;->call(Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
