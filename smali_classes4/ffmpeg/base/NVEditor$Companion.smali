.class public final Lffmpeg/base/NVEditor$Companion;
.super Ljava/lang/Object;
.source "NVEditor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/base/NVEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lffmpeg/base/NVEditor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNVEditor(Lcom/narvii/app/NVContext;)Lffmpeg/base/IEditor;
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorPackFactory"

    .line 34
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    .line 35
    invoke-interface {v0, p1}, Lcom/narvii/video/services/IEditorPackFactory;->getIEditorDelegate(Lcom/narvii/app/NVContext;)Lffmpeg/base/IEditor;

    move-result-object p1

    return-object p1
.end method

.method public final getSoftwareNVEditor(Landroid/content/Context;)Lffmpeg/base/IEditor;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "context.filesDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance(Ljava/io/File;)Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object p1

    return-object p1
.end method
