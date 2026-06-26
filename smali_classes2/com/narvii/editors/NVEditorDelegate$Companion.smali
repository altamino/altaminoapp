.class public final Lcom/narvii/editors/NVEditorDelegate$Companion;
.super Ljava/lang/Object;
.source "NVEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editors/NVEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNVEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NVEditorDelegate.kt\ncom/narvii/editors/NVEditorDelegate$Companion\n*L\n1#1,50:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/narvii/editors/NVEditorDelegate;
    .locals 1

    .line 19
    invoke-static {}, Lcom/narvii/editors/NVEditorDelegate;->access$getInstance$cp()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/io/File;)Lcom/narvii/editors/NVEditorDelegate;
    .locals 4

    const-string v0, "localFileDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/narvii/editors/NVEditorDelegate;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v2, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    invoke-virtual {v2}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 25
    sget-object v2, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    new-instance v3, Lcom/narvii/editors/NVEditorDelegate;

    invoke-direct {v3, p1, v1}, Lcom/narvii/editors/NVEditorDelegate;-><init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v3}, Lcom/narvii/editors/NVEditorDelegate$Companion;->setInstance(Lcom/narvii/editors/NVEditorDelegate;)V

    .line 27
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final setInstance(Lcom/narvii/editors/NVEditorDelegate;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/narvii/editors/NVEditorDelegate;->access$setInstance$cp(Lcom/narvii/editors/NVEditorDelegate;)V

    return-void
.end method
