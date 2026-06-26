.class public final Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;
.super Ljava/lang/Object;
.source "NVEditorPreviewVideoVIew.kt"


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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initPlayer(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;Lcom/narvii/app/NVContext;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 2

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nvContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorPackFactory"

    .line 17
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/services/IEditorPackFactory;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "videoView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/narvii/video/services/IEditorPackFactory;->getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->bindPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V

    return-object p2
.end method
