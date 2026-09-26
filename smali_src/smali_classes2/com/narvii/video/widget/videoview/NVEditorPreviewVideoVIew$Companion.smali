.class public final Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
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
    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initPlayer(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;Lcom/narvii/app/NVContext;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 2
    .param p1    # Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoView"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "nvContext"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "editorPackFactory"

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "getContext(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lcom/narvii/video/services/IEditorPackFactory;->getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->bindPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V

    .line 36
    return-object p2
.end method
