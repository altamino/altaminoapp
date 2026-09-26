.class public final Landroidx/media3/common/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private albumArtist:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private albumTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private artist:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private artworkData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private artworkDataType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private artworkUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compilation:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private composer:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private conductor:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private description:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private discNumber:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private displayTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private folderType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private genre:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isBrowsable:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isPlayable:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private overallRating:Landroidx/media3/common/Rating;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private recordingDay:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private recordingMonth:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private recordingYear:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private releaseDay:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private releaseMonth:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private releaseYear:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private station:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private subtitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private totalDiscCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private totalTrackCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private trackNumber:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userRating:Landroidx/media3/common/Rating;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private writer:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 6
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 11
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    .line 12
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    .line 13
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 14
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 15
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 16
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 17
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 18
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 19
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    .line 20
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 21
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 22
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 24
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 25
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 26
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 27
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 30
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 32
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 33
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 34
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    .line 35
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    .line 36
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaMetadata$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    .line 3
    return-object p0
.end method

.method static synthetic B(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic C(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic D(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic E(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic F(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic G(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic a(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/common/MediaMetadata$Builder;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method static synthetic k(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic l(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic n(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic o(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic p(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic q(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic r(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic s(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic t(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic u(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic w(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic y(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic z(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method


# virtual methods
.method public H()Landroidx/media3/common/MediaMetadata;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/MediaMetadata;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;Landroidx/media3/common/MediaMetadata$1;)V

    .line 7
    return-object v0
.end method

.method public I([BI)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, [B

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 46
    :cond_1
    return-object p0
.end method

.method public J(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2
    .param p1    # Landroidx/media3/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->m0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 11
    .line 12
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->O(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 18
    .line 19
    :cond_2
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->N(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 25
    .line 26
    :cond_3
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->M(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 32
    .line 33
    :cond_4
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->W(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 39
    .line 40
    :cond_5
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->l0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 46
    .line 47
    :cond_6
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->U(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 53
    .line 54
    :cond_7
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    .line 55
    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->q0(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 60
    .line 61
    :cond_8
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->d0(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 67
    .line 68
    :cond_9
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 69
    .line 70
    if-eqz v0, :cond_a

    .line 71
    .line 72
    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->P([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 76
    .line 77
    :cond_a
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 78
    .line 79
    if-eqz v0, :cond_b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->Q(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 83
    .line 84
    :cond_b
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz v0, :cond_c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->p0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 90
    .line 91
    :cond_c
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz v0, :cond_d

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->o0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 97
    .line 98
    :cond_d
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v0, :cond_e

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->Y(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 104
    .line 105
    :cond_e
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v0, :cond_f

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->a0(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 111
    .line 112
    :cond_f
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 113
    .line 114
    if-eqz v0, :cond_10

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->b0(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 118
    .line 119
    :cond_10
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    .line 120
    .line 121
    if-eqz v0, :cond_11

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->g0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 125
    .line 126
    :cond_11
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 127
    .line 128
    if-eqz v0, :cond_12

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->g0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 132
    .line 133
    :cond_12
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 134
    .line 135
    if-eqz v0, :cond_13

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->f0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 139
    .line 140
    :cond_13
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz v0, :cond_14

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->e0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 146
    .line 147
    :cond_14
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 148
    .line 149
    if-eqz v0, :cond_15

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->j0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 153
    .line 154
    :cond_15
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v0, :cond_16

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->i0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 160
    .line 161
    :cond_16
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 162
    .line 163
    if-eqz v0, :cond_17

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->h0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 167
    .line 168
    :cond_17
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 169
    .line 170
    if-eqz v0, :cond_18

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->r0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 174
    .line 175
    :cond_18
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 176
    .line 177
    if-eqz v0, :cond_19

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->S(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 181
    .line 182
    :cond_19
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 183
    .line 184
    if-eqz v0, :cond_1a

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->T(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 188
    .line 189
    :cond_1a
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 190
    .line 191
    if-eqz v0, :cond_1b

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->V(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 195
    .line 196
    :cond_1b
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 197
    .line 198
    if-eqz v0, :cond_1c

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->n0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 202
    .line 203
    :cond_1c
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 204
    .line 205
    if-eqz v0, :cond_1d

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->Z(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 209
    .line 210
    :cond_1d
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 211
    .line 212
    if-eqz v0, :cond_1e

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->R(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 216
    .line 217
    :cond_1e
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 218
    .line 219
    if-eqz v0, :cond_1f

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->k0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 223
    .line 224
    :cond_1f
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 225
    .line 226
    if-eqz v0, :cond_20

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Landroidx/media3/common/MediaMetadata$Builder;->c0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 230
    .line 231
    :cond_20
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    .line 232
    .line 233
    if-eqz p1, :cond_21

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaMetadata$Builder;->X(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 237
    :cond_21
    return-object p0
.end method

.method public K(Landroidx/media3/common/Metadata;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->h()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p0}, Landroidx/media3/common/Metadata$Entry;->k0(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0
.end method

.method public L(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 5
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata;",
            ">;)",
            "Landroidx/media3/common/MediaMetadata$Builder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/common/Metadata;

    .line 15
    move v3, v0

    .line 16
    .line 17
    .line 18
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->h()I

    .line 19
    move-result v4

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, p0}, Landroidx/media3/common/Metadata$Entry;->k0(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0
.end method

.method public M(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public N(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public O(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public P([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, [B

    .line 11
    .line 12
    :goto_0
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 15
    return-object p0
.end method

.method public Q(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public R(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public S(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public T(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public U(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public V(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public W(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public X(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public Y(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public Z(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a0(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b0(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public d0(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/Rating;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method public e0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public f0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public g0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public h0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public i0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public j0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public k0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public m0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public o0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public p0(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public q0(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/Rating;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    return-object p0
.end method

.method public r0(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method
