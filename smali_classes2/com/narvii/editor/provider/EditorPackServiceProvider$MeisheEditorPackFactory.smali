.class public final Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorPackFactory;
.super Ljava/lang/Object;
.source "EditorPackServiceProvider.kt"

# interfaces
.implements Lcom/narvii/video/services/IEditorPackFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/provider/EditorPackServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeisheEditorPackFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIEditorDelegate(Lcom/narvii/app/NVContext;)Lffmpeg/base/IEditor;
    .locals 5

    const-string v0, "nvcontext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "nvcontext.getService(\"prefs\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    .line 57
    sget-object v1, Lcom/narvii/editor/provider/MeisheEditorDelegate;->Companion:Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "nvcontext.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "nvcontext.context.filesDir"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v3, "nvcontext.context.cacheDir"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v0}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;->getInstance(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;)Lcom/narvii/editor/provider/MeisheEditorDelegate;

    move-result-object p1

    return-object p1
.end method

.method public getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/narvii/editor/player/MeiShePreviewPlayer;

    invoke-direct {v0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;
    .locals 1

    .line 52
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;->getInstance()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;
    .locals 1

    .line 48
    sget-object v0, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;->Companion:Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler$Companion;->getInstance()Lcom/narvii/editor/provider/EditorPackServiceProvider$MeisheEditorRecycler;

    move-result-object v0

    return-object v0
.end method
