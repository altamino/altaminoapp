.class public final Lcom/google/android/exoplayer2/n2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

.field private isPlayable:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private overallRating:Lcom/google/android/exoplayer2/k3;
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

.field private userRating:Lcom/google/android/exoplayer2/k3;
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

.method private constructor <init>(Lcom/google/android/exoplayer2/n2;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->title:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artist:Ljava/lang/CharSequence;

    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->albumTitle:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->albumArtist:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->displayTitle:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->subtitle:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->description:Ljava/lang/CharSequence;

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 13
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkData:[B

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkDataType:Ljava/lang/Integer;

    .line 15
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkUri:Landroid/net/Uri;

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->trackNumber:Ljava/lang/Integer;

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->totalTrackCount:Ljava/lang/Integer;

    .line 18
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->folderType:Ljava/lang/Integer;

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->isPlayable:Ljava/lang/Boolean;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingYear:Ljava/lang/Integer;

    .line 21
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingMonth:Ljava/lang/Integer;

    .line 22
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingDay:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseYear:Ljava/lang/Integer;

    .line 24
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseMonth:Ljava/lang/Integer;

    .line 25
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseDay:Ljava/lang/Integer;

    .line 26
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->writer:Ljava/lang/CharSequence;

    .line 27
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->composer:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->conductor:Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->discNumber:Ljava/lang/Integer;

    .line 30
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->totalDiscCount:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->genre:Ljava/lang/CharSequence;

    .line 32
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->compilation:Ljava/lang/CharSequence;

    .line 33
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->station:Ljava/lang/CharSequence;

    .line 34
    iget-object p1, p1, Lcom/google/android/exoplayer2/n2;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/n2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n2$b;-><init>(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->displayTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->subtitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->description:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/n2$b;)Lcom/google/android/exoplayer2/k3;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 3
    return-object p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/n2$b;)Lcom/google/android/exoplayer2/k3;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 3
    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->title:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/n2$b;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkData:[B

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkDataType:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/n2$b;)Landroid/net/Uri;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->trackNumber:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->totalTrackCount:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->folderType:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->isPlayable:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingYear:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingMonth:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->recordingDay:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->artist:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseYear:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseMonth:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->releaseDay:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->writer:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->composer:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->conductor:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->discNumber:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->totalDiscCount:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->genre:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->compilation:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->albumTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->station:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/n2$b;)Landroid/os/Bundle;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->extras:Landroid/os/Bundle;

    .line 3
    return-object p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/n2$b;->albumArtist:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method


# virtual methods
.method public F()Lcom/google/android/exoplayer2/n2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/n2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n2;-><init>(Lcom/google/android/exoplayer2/n2$b;Lcom/google/android/exoplayer2/n2$a;)V

    .line 7
    return-object v0
.end method

.method public G([BI)Lcom/google/android/exoplayer2/n2$b;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkData:[B

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
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2$b;->artworkDataType:Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->artworkData:[B

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->artworkDataType:Ljava/lang/Integer;

    .line 46
    :cond_1
    return-object p0
.end method

.method public H(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2$b;
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/n2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 11
    .line 12
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 18
    .line 19
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 25
    .line 26
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 32
    .line 33
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 39
    .line 40
    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 46
    .line 47
    :cond_6
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 53
    .line 54
    :cond_7
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 55
    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->m0(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;

    .line 60
    .line 61
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->Z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;

    .line 67
    .line 68
    :cond_9
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 69
    .line 70
    if-eqz v0, :cond_a

    .line 71
    .line 72
    iget-object v1, p1, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/n2$b;->N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 76
    .line 77
    :cond_a
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 78
    .line 79
    if-eqz v0, :cond_b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n2$b;

    .line 83
    .line 84
    :cond_b
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz v0, :cond_c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 90
    .line 91
    :cond_c
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz v0, :cond_d

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 97
    .line 98
    :cond_d
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v0, :cond_e

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 104
    .line 105
    :cond_e
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v0, :cond_f

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/n2$b;

    .line 111
    .line 112
    :cond_f
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->year:Ljava/lang/Integer;

    .line 113
    .line 114
    if-eqz v0, :cond_10

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 118
    .line 119
    :cond_10
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 120
    .line 121
    if-eqz v0, :cond_11

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 125
    .line 126
    :cond_11
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 127
    .line 128
    if-eqz v0, :cond_12

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 132
    .line 133
    :cond_12
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 134
    .line 135
    if-eqz v0, :cond_13

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 139
    .line 140
    :cond_13
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz v0, :cond_14

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 146
    .line 147
    :cond_14
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 148
    .line 149
    if-eqz v0, :cond_15

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 153
    .line 154
    :cond_15
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v0, :cond_16

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 160
    .line 161
    :cond_16
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 162
    .line 163
    if-eqz v0, :cond_17

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 167
    .line 168
    :cond_17
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 169
    .line 170
    if-eqz v0, :cond_18

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 174
    .line 175
    :cond_18
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 176
    .line 177
    if-eqz v0, :cond_19

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 181
    .line 182
    :cond_19
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 183
    .line 184
    if-eqz v0, :cond_1a

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 188
    .line 189
    :cond_1a
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 190
    .line 191
    if-eqz v0, :cond_1b

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 195
    .line 196
    :cond_1b
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 197
    .line 198
    if-eqz v0, :cond_1c

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 202
    .line 203
    :cond_1c
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 204
    .line 205
    if-eqz v0, :cond_1d

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 209
    .line 210
    :cond_1d
    iget-object v0, p1, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 211
    .line 212
    if-eqz v0, :cond_1e

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/n2$b;->g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 216
    .line 217
    :cond_1e
    iget-object p1, p1, Lcom/google/android/exoplayer2/n2;->extras:Landroid/os/Bundle;

    .line 218
    .line 219
    if-eqz p1, :cond_1f

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/n2$b;->V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2$b;

    .line 223
    :cond_1f
    return-object p0
.end method

.method public I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/n2$b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->b(Lcom/google/android/exoplayer2/n2$b;)V

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0
.end method

.method public J(Ljava/util/List;)Lcom/google/android/exoplayer2/n2$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/n2$b;"
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
    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 15
    move v3, v0

    .line 16
    .line 17
    .line 18
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 19
    move-result v4

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->b(Lcom/google/android/exoplayer2/n2$b;)V

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

.method public K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->artworkData:[B

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/exoplayer2/n2$b;->artworkDataType:Ljava/lang/Integer;

    .line 15
    return-object p0
.end method

.method public O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public Z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/k3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->overallRating:Lcom/google/android/exoplayer2/k3;

    return-object p0
.end method

.method public a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public m0(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/k3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->userRating:Lcom/google/android/exoplayer2/k3;

    return-object p0
.end method

.method public n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$b;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method
