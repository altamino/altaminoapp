.class Landroid/support/rastermill/FrameSequence$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private mNativeState:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/support/rastermill/FrameSequence;->a()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->b(J)V

    .line 20
    .line 21
    iput-wide v2, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    .line 22
    :cond_0
    return-void
.end method

.method public getFrame(ILandroid/graphics/Bitmap;I)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/support/rastermill/FrameSequence;->a()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-wide v1

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    if-ne v0, v3, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    .line 22
    .line 23
    cmp-long v0, v3, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4, p1, p2, p3}, Landroid/support/rastermill/FrameSequence;->c(JILandroid/graphics/Bitmap;I)J

    .line 29
    move-result-wide p1

    .line 30
    return-wide p1

    .line 31
    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p2, "attempted to draw destroyed FrameSequenceState"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1

    .line 39
    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Bitmap passed must be non-null and ARGB_8888"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method
