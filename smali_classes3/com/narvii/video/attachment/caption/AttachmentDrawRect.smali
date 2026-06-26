.class public Lcom/narvii/video/attachment/caption/AttachmentDrawRect;
.super Ljava/lang/Object;
.source "AttachmentDrawRect.java"


# instance fields
.field public attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

.field public mode:I

.field public pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/narvii/video/model/BaseAttachmentInfoPack;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    .line 18
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 19
    iput-object p3, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->pointList:Ljava/util/List;

    return-void
.end method
