.class final Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field private owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
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
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 6
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroidx/media3/decoder/DecoderOutputBuffer$Owner;->a(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    .line 6
    return-void
.end method
