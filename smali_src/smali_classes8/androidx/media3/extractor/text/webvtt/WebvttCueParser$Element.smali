.class Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final BY_START_POSITION_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endPosition:I

.field private final startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/extractor/text/webvtt/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iput p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;ILandroidx/media3/extractor/text/webvtt/WebvttCueParser$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->e(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    .line 3
    return p0
.end method

.method private static synthetic e(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 3
    .line 4
    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 7
    .line 8
    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method
