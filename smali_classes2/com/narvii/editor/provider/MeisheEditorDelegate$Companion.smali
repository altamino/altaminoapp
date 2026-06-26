.class public final Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;
.super Ljava/lang/Object;
.source "MeisheEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/provider/MeisheEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheEditorDelegate.kt\ncom/narvii/editor/provider/MeisheEditorDelegate$Companion\n*L\n1#1,343:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/narvii/editor/provider/MeisheEditorDelegate;
    .locals 1

    .line 46
    invoke-static {}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getInstance$cp()Lcom/narvii/editor/provider/MeisheEditorDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;)Lcom/narvii/editor/provider/MeisheEditorDelegate;
    .locals 4

    const-string v0, "localFileDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localCacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;->getInstance()Lcom/narvii/editor/provider/MeisheEditorDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/narvii/editor/provider/MeisheEditorDelegate;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v2, Lcom/narvii/editor/provider/MeisheEditorDelegate;->Companion:Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

    invoke-virtual {v2}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;->getInstance()Lcom/narvii/editor/provider/MeisheEditorDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    sget-object v2, Lcom/narvii/editor/provider/MeisheEditorDelegate;->Companion:Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

    new-instance v3, Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;-><init>(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v3}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;->setInstance(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V

    .line 54
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;->getInstance()Lcom/narvii/editor/provider/MeisheEditorDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final setInstance(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$setInstance$cp(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V

    return-void
.end method
