.class final Lcom/narvii/prefs/GdprFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "GdprFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/GdprFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/narvii/prefs/GdprFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/GdprFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "nvContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->this$0:Lcom/narvii/prefs/GdprFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "prefs"

    .line 39
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v1, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->this$0:Lcom/narvii/prefs/GdprFragment;

    const v2, 0x7f0f0d4d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0d4c

    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "gdprOptout"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 44
    new-instance v1, Lcom/narvii/prefs/GdprFragment$Adapter$buildCells$1;

    invoke-direct {v1, p0}, Lcom/narvii/prefs/GdprFragment$Adapter$buildCells$1;-><init>(Lcom/narvii/prefs/GdprFragment$Adapter;)V

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/narvii/list/prefs/PrefsDescription;

    iget-object v1, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->this$0:Lcom/narvii/prefs/GdprFragment;

    const v2, 0x7f0f0d4e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsDescription;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/prefs/GdprFragment$Adapter;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
