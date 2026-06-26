.class public Lcom/meishe/cafconvertor/webpcoder/FrameSequence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nvs-webp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    return-void
.end method

.method static synthetic a(JILandroid/graphics/Bitmap;I)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->nativeGetFrame(JILandroid/graphics/Bitmap;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->nativeDestroyState(J)V

    return-void
.end method

.method public static decodeByteArray([B)Lcom/meishe/cafconvertor/webpcoder/FrameSequence;
    .locals 3

    new-instance v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->nativeDecodeByteArray([BII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;-><init>(J)V

    return-object v0
.end method

.method private static native getFrameCount(J)I
.end method

.method private static native getHeight(J)I
.end method

.method private static native getWidth(J)I
.end method

.method private static native isOpaque(J)Z
.end method

.method private static native nativeCreateState(J)J
.end method

.method private static native nativeDecodeByteArray([BII)J
.end method

.method public static native nativeDestroyFrameSequence(J)V
.end method

.method private static native nativeDestroyState(J)V
.end method

.method private static native nativeGetFrame(JILandroid/graphics/Bitmap;I)J
.end method


# virtual methods
.method a()Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;
    .locals 5

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->nativeCreateState(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    invoke-direct {v2, v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to use incorrectly built FrameSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize: mNativeFrameSequence is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameSequence"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->nativeDestroyFrameSequence(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDefaultLoopCount()I
    .locals 1

    iget v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->b:I

    return v0
.end method

.method public getFrameCount()I
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getFrameCount(J)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getWidth(J)I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a:J

    invoke-static {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->isOpaque(J)Z

    move-result v0

    return v0
.end method

.method public setDefaultLoopCount(I)V
    .locals 0

    iput p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->b:I

    return-void
.end method
