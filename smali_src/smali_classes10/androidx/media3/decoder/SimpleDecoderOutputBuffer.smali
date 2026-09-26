.class public Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/SimpleDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/SimpleDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/decoder/Buffer;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroidx/media3/decoder/DecoderOutputBuffer$Owner;->a(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    .line 6
    return-void
.end method
