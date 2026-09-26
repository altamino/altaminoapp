.class public final Lcom/narvii/video/services/FrameRetrieverManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->dispatchBitmap$lambda$0(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final dispatchBitmap$lambda$0(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$input"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager;->dispatchBitmapResult(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/video/services/e;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/video/services/e;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public final getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieverManagerInstance$cp()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final pollNextTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->pollNextRetrieveTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return-object p1
.end method

.method public final setFrameRetrieverManagerInstance(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0
    .param p1    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$setFrameRetrieverManagerInstance$cp(Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 4
    return-void
.end method
