.class Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PsshAtom"
.end annotation


# instance fields
.field private final schemeData:[B

.field private final uuid:Ljava/util/UUID;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    .line 10
    return-void
.end method

.method static synthetic a(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    .line 3
    return-object p0
.end method
