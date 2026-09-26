.class public final synthetic Lcom/narvii/video/services/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/narvii/video/services/FrameRetrieverManager;

.field public final synthetic f:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/c;->a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p2, p0, Lcom/narvii/video/services/c;->b:I

    iput p3, p0, Lcom/narvii/video/services/c;->c:I

    iput-object p4, p0, Lcom/narvii/video/services/c;->d:Lcom/narvii/video/services/FrameRetrieverManager;

    iput-object p5, p0, Lcom/narvii/video/services/c;->f:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput p6, p0, Lcom/narvii/video/services/c;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/c;->a:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iget v1, p0, Lcom/narvii/video/services/c;->b:I

    iget v2, p0, Lcom/narvii/video/services/c;->c:I

    iget-object v3, p0, Lcom/narvii/video/services/c;->d:Lcom/narvii/video/services/FrameRetrieverManager;

    iget-object v4, p0, Lcom/narvii/video/services/c;->f:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iget v5, p0, Lcom/narvii/video/services/c;->g:I

    invoke-static/range {v0 .. v5}, Lcom/narvii/video/services/FrameRetrieverManager;->b(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V

    return-void
.end method
