.class public final Landroidx/media3/common/FrameInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private height:I

.field private offsetToAddUs:J

.field private pixelWidthHeightRatio:F

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/FrameInfo$Builder;->width:I

    iput p2, p0, Landroidx/media3/common/FrameInfo$Builder;->height:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/FrameInfo;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Landroidx/media3/common/FrameInfo;->width:I

    iput v0, p0, Landroidx/media3/common/FrameInfo$Builder;->width:I

    .line 4
    iget v0, p1, Landroidx/media3/common/FrameInfo;->height:I

    iput v0, p0, Landroidx/media3/common/FrameInfo$Builder;->height:I

    .line 5
    iget v0, p1, Landroidx/media3/common/FrameInfo;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 6
    iget-wide v0, p1, Landroidx/media3/common/FrameInfo;->offsetToAddUs:J

    iput-wide v0, p0, Landroidx/media3/common/FrameInfo$Builder;->offsetToAddUs:J

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/FrameInfo;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroidx/media3/common/FrameInfo;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/common/FrameInfo$Builder;->width:I

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/common/FrameInfo$Builder;->height:I

    .line 7
    .line 8
    iget v3, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 9
    .line 10
    iget-wide v4, p0, Landroidx/media3/common/FrameInfo$Builder;->offsetToAddUs:J

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/FrameInfo;-><init>(IIFJLandroidx/media3/common/FrameInfo$1;)V

    .line 16
    return-object v7
.end method

.method public b(F)Landroidx/media3/common/FrameInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/FrameInfo$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method
