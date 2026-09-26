.class public final synthetic Lcom/narvii/video/services/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/services/FrameRetrieverManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/d;->a:Lcom/narvii/video/services/FrameRetrieverManager;

    iput-object p2, p0, Lcom/narvii/video/services/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/video/services/d;->c:I

    iput-object p4, p0, Lcom/narvii/video/services/d;->d:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p5, p0, Lcom/narvii/video/services/d;->f:I

    iput p6, p0, Lcom/narvii/video/services/d;->g:I

    iput-object p7, p0, Lcom/narvii/video/services/d;->h:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/d;->a:Lcom/narvii/video/services/FrameRetrieverManager;

    iget-object v1, p0, Lcom/narvii/video/services/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/video/services/d;->c:I

    iget-object v3, p0, Lcom/narvii/video/services/d;->d:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iget v4, p0, Lcom/narvii/video/services/d;->f:I

    iget v5, p0, Lcom/narvii/video/services/d;->g:I

    iget-object v6, p0, Lcom/narvii/video/services/d;->h:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-static/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->c(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    return-void
.end method
