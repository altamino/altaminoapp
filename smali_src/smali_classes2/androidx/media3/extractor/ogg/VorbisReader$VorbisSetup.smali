.class final Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

.field public final iLogModes:I

.field public final idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public final modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;Landroidx/media3/extractor/VorbisUtil$CommentHeader;[B[Landroidx/media3/extractor/VorbisUtil$Mode;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    .line 14
    return-void
.end method
