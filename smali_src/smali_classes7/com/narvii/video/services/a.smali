.class public final synthetic Lcom/narvii/video/services/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/a;->a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p2, p0, Lcom/narvii/video/services/a;->b:I

    iput p3, p0, Lcom/narvii/video/services/a;->c:I

    iput-object p4, p0, Lcom/narvii/video/services/a;->d:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/a;->a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iget v1, p0, Lcom/narvii/video/services/a;->b:I

    iget v2, p0, Lcom/narvii/video/services/a;->c:I

    iget-object v3, p0, Lcom/narvii/video/services/a;->d:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->d(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V

    return-void
.end method
