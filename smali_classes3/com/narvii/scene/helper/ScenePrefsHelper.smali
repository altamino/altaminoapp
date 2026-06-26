.class public final Lcom/narvii/scene/helper/ScenePrefsHelper;
.super Ljava/lang/Object;
.source "ScenePrefsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/ScenePrefsHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/helper/ScenePrefsHelper$Companion;

.field public static final KEY_FIRST_EDIT:Ljava/lang/String; = "first_edit"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "scene"


# instance fields
.field private sps:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/helper/ScenePrefsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/ScenePrefsHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/helper/ScenePrefsHelper;->Companion:Lcom/narvii/scene/helper/ScenePrefsHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "scene"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/helper/ScenePrefsHelper;->sps:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final isFirstEdit()Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/narvii/scene/helper/ScenePrefsHelper;->sps:Landroid/content/SharedPreferences;

    const-string v1, "first_edit"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/narvii/scene/helper/ScenePrefsHelper;->sps:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 21
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method
