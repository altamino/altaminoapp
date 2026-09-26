.class public final Lcom/narvii/video/providers/EditorPackServiceProvider$ExoEditorPackFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/services/IEditorPackFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/providers/EditorPackServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoEditorPackFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getIEditorDelegate(Lcom/narvii/app/NVContext;)Lg7/a;
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "nvcontext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v1, "getFilesDir(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/narvii/editors/NVEditorDelegate$Companion;->getInstance(Ljava/io/File;)Lcom/narvii/editors/NVEditorDelegate;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;-><init>(Landroid/content/Context;)V

    .line 11
    return-object v0
.end method

.method public getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
