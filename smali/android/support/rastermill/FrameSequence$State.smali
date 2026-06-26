.class Landroid/support/rastermill/FrameSequence$State;
.super Ljava/lang/Object;
.source "FrameSequence.java"


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

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 172
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/support/rastermill/FrameSequence;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->access$100(J)V

    .line 174
    iput-wide v2, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    :cond_0
    return-void
.end method

.method public getFrame(ILandroid/graphics/Bitmap;I)J
    .locals 5

    .line 180
    invoke-static {}, Landroid/support/rastermill/FrameSequence;->access$000()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-eqz p2, :cond_2

    .line 183
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_2

    .line 186
    iget-wide v3, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 189
    invoke-static {v3, v4, p1, p2, p3}, Landroid/support/rastermill/FrameSequence;->access$200(JILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    return-wide p1

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempted to draw destroyed FrameSequenceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap passed must be non-null and ARGB_8888"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
