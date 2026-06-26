.class public final Lcom/narvii/video/services/FrameRetrieverManager$Companion;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/FrameRetrieverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1

    .line 59
    invoke-static {}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieverManagerInstance$cp()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    return-object v0
.end method

.method public final pollNextTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->pollNextRetrieveTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final setFrameRetrieverManagerInstance(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$setFrameRetrieverManagerInstance$cp(Lcom/narvii/video/services/FrameRetrieverManager;)V

    return-void
.end method
