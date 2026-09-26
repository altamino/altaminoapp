.class public final Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method constructor <init>(JLcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->$frameDurationMs:J

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFrameBitmapLoaded(JLandroid/graphics/Bitmap;)V
    .locals 2
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->$frameDurationMs:J

    .line 3
    div-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result p2

    .line 17
    .line 18
    if-ge p1, p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    :cond_0
    return-void
.end method
