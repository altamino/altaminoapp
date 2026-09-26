.class public Lcom/narvii/video/attachment/caption/AttachmentDrawRect;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->pointList:Ljava/util/List;

    .line 10
    return-void
.end method
