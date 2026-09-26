.class public final Lcom/narvii/editors/NVEditorDelegate$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editors/NVEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/narvii/editors/NVEditorDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/narvii/editors/NVEditorDelegate;->access$getInstance$cp()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/io/File;)Lcom/narvii/editors/NVEditorDelegate;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "localFileDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/narvii/editors/NVEditorDelegate;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    invoke-virtual {v1}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/narvii/editors/NVEditorDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/narvii/editors/NVEditorDelegate;-><init>(Ljava/io/File;Lkotlin/jvm/internal/k;)V

    invoke-virtual {v1, v2}, Lcom/narvii/editors/NVEditorDelegate$Companion;->setInstance(Lcom/narvii/editors/NVEditorDelegate;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    .line 8
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance()Lcom/narvii/editors/NVEditorDelegate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setInstance(Lcom/narvii/editors/NVEditorDelegate;)V
    .locals 0
    .param p1    # Lcom/narvii/editors/NVEditorDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/editors/NVEditorDelegate;->access$setInstance$cp(Lcom/narvii/editors/NVEditorDelegate;)V

    .line 4
    return-void
.end method
