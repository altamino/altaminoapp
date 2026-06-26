.class public final Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;
.super Ljava/lang/Object;
.source "PreEditTimeLineComponent.kt"

# interfaces
.implements Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $frameDurationMs:J

.field final synthetic this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    iput-wide p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->$frameDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameBitmapLoaded(JLandroid/graphics/Bitmap;)V
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->$frameDurationMs:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 90
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    .line 91
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
