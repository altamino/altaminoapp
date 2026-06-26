.class Lcom/narvii/pushservice/GifDec$GifFrame;
.super Ljava/lang/Object;
.source "GifDec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/GifDec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrame"
.end annotation


# instance fields
.field public bufferFrameStart:I

.field public delay:I

.field public dispose:I

.field public ih:I

.field public interlace:Z

.field public iw:I

.field public ix:I

.field public iy:I

.field public lct:[I

.field public transIndex:I

.field public transparency:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/pushservice/GifDec$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/pushservice/GifDec$GifFrame;-><init>()V

    return-void
.end method
