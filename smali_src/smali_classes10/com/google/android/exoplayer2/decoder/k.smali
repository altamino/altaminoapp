.class public Lcom/google/android/exoplayer2/decoder/k;
.super Lcom/google/android/exoplayer2/decoder/h;
.source "SourceFile"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public decoderPrivate:I

.field public format:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplayer2/decoder/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/h$a<",
            "Lcom/google/android/exoplayer2/decoder/k;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public yuvStrides:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/h$a<",
            "Lcom/google/android/exoplayer2/decoder/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/h;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/k;->owner:Lcom/google/android/exoplayer2/decoder/h$a;

    .line 6
    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/k;->owner:Lcom/google/android/exoplayer2/decoder/h$a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/h$a;->a(Lcom/google/android/exoplayer2/decoder/h;)V

    .line 6
    return-void
.end method
