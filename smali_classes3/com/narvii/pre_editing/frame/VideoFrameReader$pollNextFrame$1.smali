.class final Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;
.super Ljava/lang/Object;
.source "VideoFrameReader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/frame/VideoFrameReader;->pollNextFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $curFrameInfo:Lkotlin/Pair;


# direct methods
.method constructor <init>(Lkotlin/Pair;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;->$curFrameInfo:Lkotlin/Pair;

    iput-object p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;->$curFrameInfo:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;->$curFrameInfo:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    iget-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$pollNextFrame$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;->onFrameBitmapLoaded(JLandroid/graphics/Bitmap;)V

    return-void
.end method
