.class public final Lcom/google/android/exoplayer2/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n2$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/n2;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/n2;

.field private static final FIELD_ALBUM_ARTIST:I = 0x3

.field private static final FIELD_ALBUM_TITLE:I = 0x2

.field private static final FIELD_ARTIST:I = 0x1

.field private static final FIELD_ARTWORK_DATA:I = 0xa

.field private static final FIELD_ARTWORK_DATA_TYPE:I = 0x1d

.field private static final FIELD_ARTWORK_URI:I = 0xb

.field private static final FIELD_COMPILATION:I = 0x1c

.field private static final FIELD_COMPOSER:I = 0x17

.field private static final FIELD_CONDUCTOR:I = 0x18

.field private static final FIELD_DESCRIPTION:I = 0x6

.field private static final FIELD_DISC_NUMBER:I = 0x19

.field private static final FIELD_DISPLAY_TITLE:I = 0x4

.field private static final FIELD_EXTRAS:I = 0x3e8

.field private static final FIELD_FOLDER_TYPE:I = 0xe

.field private static final FIELD_GENRE:I = 0x1b

.field private static final FIELD_IS_PLAYABLE:I = 0xf

.field private static final FIELD_MEDIA_URI:I = 0x7

.field private static final FIELD_OVERALL_RATING:I = 0x9

.field private static final FIELD_RECORDING_DAY:I = 0x12

.field private static final FIELD_RECORDING_MONTH:I = 0x11

.field private static final FIELD_RECORDING_YEAR:I = 0x10

.field private static final FIELD_RELEASE_DAY:I = 0x15

.field private static final FIELD_RELEASE_MONTH:I = 0x14

.field private static final FIELD_RELEASE_YEAR:I = 0x13

.field private static final FIELD_STATION:I = 0x1e

.field private static final FIELD_SUBTITLE:I = 0x5

.field private static final FIELD_TITLE:I = 0x0

.field private static final FIELD_TOTAL_DISC_COUNT:I = 0x1a

.field private static final FIELD_TOTAL_TRACK_COUNT:I = 0xd

.field private static final FIELD_TRACK_NUMBER:I = 0xc

.field private static final FIELD_USER_RATING:I = 0x8

.field private static final FIELD_WRITER:I = 0x16

.field public static final FOLDER_TYPE_ALBUMS:I = 0x2

.field public static final FOLDER_TYPE_ARTISTS:I = 0x3

.field public static final FOLDER_TYPE_GENRES:I = 0x4

.field public static final FOLDER_TYPE_MIXED:I = 0x0

.field public static final FOLDER_TYPE_NONE:I = -0x1

.field public static final FOLDER_TYPE_PLAYLISTS:I = 0x5

.field public static final FOLDER_TYPE_TITLES:I = 0x1

.field public static final FOLDER_TYPE_YEARS:I = 0x6

.field public static final PICTURE_TYPE_ARTIST_PERFORMER:I = 0x8

.field public static final PICTURE_TYPE_A_BRIGHT_COLORED_FISH:I = 0x11

.field public static final PICTURE_TYPE_BACK_COVER:I = 0x4

.field public static final PICTURE_TYPE_BAND_ARTIST_LOGO:I = 0x13

.field public static final PICTURE_TYPE_BAND_ORCHESTRA:I = 0xa

.field public static final PICTURE_TYPE_COMPOSER:I = 0xb

.field public static final PICTURE_TYPE_CONDUCTOR:I = 0x9

.field public static final PICTURE_TYPE_DURING_PERFORMANCE:I = 0xf

.field public static final PICTURE_TYPE_DURING_RECORDING:I = 0xe

.field public static final PICTURE_TYPE_FILE_ICON:I = 0x1

.field public static final PICTURE_TYPE_FILE_ICON_OTHER:I = 0x2

.field public static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field public static final PICTURE_TYPE_ILLUSTRATION:I = 0x12

.field public static final PICTURE_TYPE_LEAD_ARTIST_PERFORMER:I = 0x7

.field public static final PICTURE_TYPE_LEAFLET_PAGE:I = 0x5

.field public static final PICTURE_TYPE_LYRICIST:I = 0xc

.field public static final PICTURE_TYPE_MEDIA:I = 0x6

.field public static final PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE:I = 0x10

.field public static final PICTURE_TYPE_OTHER:I = 0x0

.field public static final PICTURE_TYPE_PUBLISHER_STUDIO_LOGO:I = 0x14

.field public static final PICTURE_TYPE_RECORDING_LOCATION:I = 0xd


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final albumTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final artist:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final artworkData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final artworkDataType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final artworkUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final compilation:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final composer:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final conductor:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final description:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final discNumber:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final displayTitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final extras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final folderType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final genre:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final isPlayable:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final overallRating:Lcom/google/android/exoplayer2/k3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final recordingDay:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final recordingMonth:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final recordingYear:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final releaseDay:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final releaseMonth:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final releaseYear:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final station:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final subtitle:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final title:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final totalDiscCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final totalTrackCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final trackNumber:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final userRating:Lcom/google/android/exoplayer2/k3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final writer:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final year:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/n2$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/n2$b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2$b;->F()Lcom/google/android/exoplayer2/n2;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/n2;->EMPTY:Lcom/google/android/exoplayer2/n2;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/m2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/m2;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/n2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/n2$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->a(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->l(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->w(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->z(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->A(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->B(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->C(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->D(Lcom/google/android/exoplayer2/n2$b;)Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->E(Lcom/google/android/exoplayer2/n2$b;)Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->b(Lcom/google/android/exoplayer2/n2$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->c(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->d(Lcom/google/android/exoplayer2/n2$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->e(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->f(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->g(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->h(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->i(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->year:Ljava/lang/Integer;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->i(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->j(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->k(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->m(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->n(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->o(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->p(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->q(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->r(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->s(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->t(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->u(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->v(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->x(Lcom/google/android/exoplayer2/n2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/n2$b;->y(Lcom/google/android/exoplayer2/n2$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n2;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n2$b;Lcom/google/android/exoplayer2/n2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n2;-><init>(Lcom/google/android/exoplayer2/n2$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/n2;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/n2$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/n2$b;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x4

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x5

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x6

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 106
    move-result-object v2

    .line 107
    .line 108
    const/16 v3, 0x1d

    .line 109
    .line 110
    .line 111
    invoke-static {v3}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 116
    move-result v4

    .line 117
    .line 118
    if-eqz v4, :cond_0

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 126
    move-result v3

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v3

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 v3, 0x0

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/n2$b;->N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    const/16 v2, 0xb

    .line 139
    .line 140
    .line 141
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    check-cast v2, Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n2$b;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    const/16 v2, 0x16

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    const/16 v2, 0x17

    .line 169
    .line 170
    .line 171
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    const/16 v2, 0x18

    .line 183
    .line 184
    .line 185
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    const/16 v2, 0x1b

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    const/16 v2, 0x1c

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    const/16 v2, 0x1e

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/n2$b;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    const/16 v2, 0x3e8

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/n2$b;->V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n2$b;

    .line 250
    .line 251
    const/16 v1, 0x8

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 259
    move-result v2

    .line 260
    .line 261
    if-eqz v2, :cond_1

    .line 262
    .line 263
    .line 264
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 265
    move-result-object v1

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 269
    move-result-object v1

    .line 270
    .line 271
    if-eqz v1, :cond_1

    .line 272
    .line 273
    sget-object v2, Lcom/google/android/exoplayer2/k3;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 274
    .line 275
    .line 276
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    check-cast v1, Lcom/google/android/exoplayer2/k3;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->m0(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;

    .line 283
    .line 284
    :cond_1
    const/16 v1, 0x9

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 292
    move-result v2

    .line 293
    .line 294
    if-eqz v2, :cond_2

    .line 295
    .line 296
    .line 297
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 302
    move-result-object v1

    .line 303
    .line 304
    if-eqz v1, :cond_2

    .line 305
    .line 306
    sget-object v2, Lcom/google/android/exoplayer2/k3;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 307
    .line 308
    .line 309
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    check-cast v1, Lcom/google/android/exoplayer2/k3;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->Z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/n2$b;

    .line 316
    .line 317
    :cond_2
    const/16 v1, 0xc

    .line 318
    .line 319
    .line 320
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 325
    move-result v2

    .line 326
    .line 327
    if-eqz v2, :cond_3

    .line 328
    .line 329
    .line 330
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 335
    move-result v1

    .line 336
    .line 337
    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    move-result-object v1

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 343
    .line 344
    :cond_3
    const/16 v1, 0xd

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 352
    move-result v2

    .line 353
    .line 354
    if-eqz v2, :cond_4

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 362
    move-result v1

    .line 363
    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    move-result-object v1

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 370
    .line 371
    :cond_4
    const/16 v1, 0xe

    .line 372
    .line 373
    .line 374
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 375
    move-result-object v2

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 379
    move-result v2

    .line 380
    .line 381
    if-eqz v2, :cond_5

    .line 382
    .line 383
    .line 384
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 385
    move-result-object v1

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 389
    move-result v1

    .line 390
    .line 391
    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 397
    .line 398
    :cond_5
    const/16 v1, 0xf

    .line 399
    .line 400
    .line 401
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 402
    move-result-object v2

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 406
    move-result v2

    .line 407
    .line 408
    if-eqz v2, :cond_6

    .line 409
    .line 410
    .line 411
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 416
    move-result v1

    .line 417
    .line 418
    .line 419
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 420
    move-result-object v1

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/n2$b;

    .line 424
    .line 425
    :cond_6
    const/16 v1, 0x10

    .line 426
    .line 427
    .line 428
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 429
    move-result-object v2

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 433
    move-result v2

    .line 434
    .line 435
    if-eqz v2, :cond_7

    .line 436
    .line 437
    .line 438
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 439
    move-result-object v1

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 443
    move-result v1

    .line 444
    .line 445
    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    move-result-object v1

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 451
    .line 452
    :cond_7
    const/16 v1, 0x11

    .line 453
    .line 454
    .line 455
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 456
    move-result-object v2

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 460
    move-result v2

    .line 461
    .line 462
    if-eqz v2, :cond_8

    .line 463
    .line 464
    .line 465
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 466
    move-result-object v1

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 470
    move-result v1

    .line 471
    .line 472
    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    move-result-object v1

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 478
    .line 479
    :cond_8
    const/16 v1, 0x12

    .line 480
    .line 481
    .line 482
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 487
    move-result v2

    .line 488
    .line 489
    if-eqz v2, :cond_9

    .line 490
    .line 491
    .line 492
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 497
    move-result v1

    .line 498
    .line 499
    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    move-result-object v1

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 505
    .line 506
    :cond_9
    const/16 v1, 0x13

    .line 507
    .line 508
    .line 509
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 510
    move-result-object v2

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 514
    move-result v2

    .line 515
    .line 516
    if-eqz v2, :cond_a

    .line 517
    .line 518
    .line 519
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 520
    move-result-object v1

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 524
    move-result v1

    .line 525
    .line 526
    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    move-result-object v1

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 532
    .line 533
    :cond_a
    const/16 v1, 0x14

    .line 534
    .line 535
    .line 536
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 537
    move-result-object v2

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 541
    move-result v2

    .line 542
    .line 543
    if-eqz v2, :cond_b

    .line 544
    .line 545
    .line 546
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 547
    move-result-object v1

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 551
    move-result v1

    .line 552
    .line 553
    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    move-result-object v1

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 559
    .line 560
    :cond_b
    const/16 v1, 0x15

    .line 561
    .line 562
    .line 563
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 564
    move-result-object v2

    .line 565
    .line 566
    .line 567
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 568
    move-result v2

    .line 569
    .line 570
    if-eqz v2, :cond_c

    .line 571
    .line 572
    .line 573
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 574
    move-result-object v1

    .line 575
    .line 576
    .line 577
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 578
    move-result v1

    .line 579
    .line 580
    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    move-result-object v1

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 586
    .line 587
    :cond_c
    const/16 v1, 0x19

    .line 588
    .line 589
    .line 590
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 591
    move-result-object v2

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 595
    move-result v2

    .line 596
    .line 597
    if-eqz v2, :cond_d

    .line 598
    .line 599
    .line 600
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 601
    move-result-object v1

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 605
    move-result v1

    .line 606
    .line 607
    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    move-result-object v1

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n2$b;->T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 613
    .line 614
    :cond_d
    const/16 v1, 0x1a

    .line 615
    .line 616
    .line 617
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 618
    move-result-object v2

    .line 619
    .line 620
    .line 621
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 622
    move-result v2

    .line 623
    .line 624
    if-eqz v2, :cond_e

    .line 625
    .line 626
    .line 627
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 628
    move-result-object v1

    .line 629
    .line 630
    .line 631
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 632
    move-result p0

    .line 633
    .line 634
    .line 635
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    move-result-object p0

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/n2$b;->j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/n2$b;

    .line 640
    .line 641
    .line 642
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2$b;->F()Lcom/google/android/exoplayer2/n2;

    .line 643
    move-result-object p0

    .line 644
    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/n2$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/n2$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n2$b;-><init>(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/n2$a;)V

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lcom/google/android/exoplayer2/n2;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/n2;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 62
    .line 63
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 82
    .line 83
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 92
    .line 93
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    move-result v2

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 112
    .line 113
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 117
    move-result v2

    .line 118
    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 122
    .line 123
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 132
    .line 133
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    move-result v2

    .line 138
    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 142
    .line 143
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    move-result v2

    .line 148
    .line 149
    if-eqz v2, :cond_2

    .line 150
    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 152
    .line 153
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-eqz v2, :cond_2

    .line 160
    .line 161
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 162
    .line 163
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    move-result v2

    .line 168
    .line 169
    if-eqz v2, :cond_2

    .line 170
    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 172
    .line 173
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    move-result v2

    .line 178
    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 182
    .line 183
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    move-result v2

    .line 188
    .line 189
    if-eqz v2, :cond_2

    .line 190
    .line 191
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 192
    .line 193
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    move-result v2

    .line 198
    .line 199
    if-eqz v2, :cond_2

    .line 200
    .line 201
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 202
    .line 203
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    move-result v2

    .line 208
    .line 209
    if-eqz v2, :cond_2

    .line 210
    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 212
    .line 213
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 218
    .line 219
    if-eqz v2, :cond_2

    .line 220
    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 222
    .line 223
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    move-result v2

    .line 228
    .line 229
    if-eqz v2, :cond_2

    .line 230
    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 232
    .line 233
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    move-result v2

    .line 238
    .line 239
    if-eqz v2, :cond_2

    .line 240
    .line 241
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 242
    .line 243
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    move-result v2

    .line 248
    .line 249
    if-eqz v2, :cond_2

    .line 250
    .line 251
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 252
    .line 253
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    move-result v2

    .line 258
    .line 259
    if-eqz v2, :cond_2

    .line 260
    .line 261
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 262
    .line 263
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 264
    .line 265
    .line 266
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    move-result v2

    .line 268
    .line 269
    if-eqz v2, :cond_2

    .line 270
    .line 271
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 272
    .line 273
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    move-result v2

    .line 278
    .line 279
    if-eqz v2, :cond_2

    .line 280
    .line 281
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 282
    .line 283
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    move-result v2

    .line 288
    .line 289
    if-eqz v2, :cond_2

    .line 290
    .line 291
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 292
    .line 293
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 294
    .line 295
    .line 296
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    move-result v2

    .line 298
    .line 299
    if-eqz v2, :cond_2

    .line 300
    .line 301
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 302
    .line 303
    iget-object v3, p1, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 304
    .line 305
    .line 306
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    move-result v2

    .line 308
    .line 309
    if-eqz v2, :cond_2

    .line 310
    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 312
    .line 313
    iget-object p1, p1, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 314
    .line 315
    .line 316
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    move-result p1

    .line 318
    .line 319
    if-eqz p1, :cond_2

    .line 320
    goto :goto_0

    .line 321
    :cond_2
    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 323
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x4

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    const/4 v1, 0x5

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    const/4 v1, 0x6

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 38
    .line 39
    aput-object v2, v0, v1

    .line 40
    const/4 v1, 0x7

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 43
    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 49
    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    const/16 v2, 0x9

    .line 63
    .line 64
    aput-object v1, v0, v2

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 69
    .line 70
    aput-object v2, v0, v1

    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 75
    .line 76
    aput-object v2, v0, v1

    .line 77
    .line 78
    const/16 v1, 0xc

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 81
    .line 82
    aput-object v2, v0, v1

    .line 83
    .line 84
    const/16 v1, 0xd

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 87
    .line 88
    aput-object v2, v0, v1

    .line 89
    .line 90
    const/16 v1, 0xe

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 93
    .line 94
    aput-object v2, v0, v1

    .line 95
    .line 96
    const/16 v1, 0xf

    .line 97
    .line 98
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 99
    .line 100
    aput-object v2, v0, v1

    .line 101
    .line 102
    const/16 v1, 0x10

    .line 103
    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 105
    .line 106
    aput-object v2, v0, v1

    .line 107
    .line 108
    const/16 v1, 0x11

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 111
    .line 112
    aput-object v2, v0, v1

    .line 113
    .line 114
    const/16 v1, 0x12

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 117
    .line 118
    aput-object v2, v0, v1

    .line 119
    .line 120
    const/16 v1, 0x13

    .line 121
    .line 122
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 123
    .line 124
    aput-object v2, v0, v1

    .line 125
    .line 126
    const/16 v1, 0x14

    .line 127
    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 129
    .line 130
    aput-object v2, v0, v1

    .line 131
    .line 132
    const/16 v1, 0x15

    .line 133
    .line 134
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 135
    .line 136
    aput-object v2, v0, v1

    .line 137
    .line 138
    const/16 v1, 0x16

    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 141
    .line 142
    aput-object v2, v0, v1

    .line 143
    .line 144
    const/16 v1, 0x17

    .line 145
    .line 146
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 147
    .line 148
    aput-object v2, v0, v1

    .line 149
    .line 150
    const/16 v1, 0x18

    .line 151
    .line 152
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 153
    .line 154
    aput-object v2, v0, v1

    .line 155
    .line 156
    const/16 v1, 0x19

    .line 157
    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 159
    .line 160
    aput-object v2, v0, v1

    .line 161
    .line 162
    const/16 v1, 0x1a

    .line 163
    .line 164
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 165
    .line 166
    aput-object v2, v0, v1

    .line 167
    .line 168
    const/16 v1, 0x1b

    .line 169
    .line 170
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 171
    .line 172
    aput-object v2, v0, v1

    .line 173
    .line 174
    const/16 v1, 0x1c

    .line 175
    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 177
    .line 178
    aput-object v2, v0, v1

    .line 179
    .line 180
    const/16 v1, 0x1d

    .line 181
    .line 182
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 183
    .line 184
    aput-object v2, v0, v1

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 188
    move-result v0

    .line 189
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->title:Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artist:Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumTitle:Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 36
    const/4 v1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->albumArtist:Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 46
    const/4 v1, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->displayTitle:Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 56
    const/4 v1, 0x5

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->subtitle:Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 66
    const/4 v1, 0x6

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->description:Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    const/16 v1, 0xa

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkData:[B

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 87
    .line 88
    const/16 v1, 0xb

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkUri:Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    .line 99
    const/16 v1, 0x16

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->writer:Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    const/16 v1, 0x17

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->composer:Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    const/16 v1, 0x18

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->conductor:Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    const/16 v1, 0x1b

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->genre:Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    const/16 v1, 0x1c

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->compilation:Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    const/16 v1, 0x1e

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->station:Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 166
    .line 167
    if-eqz v1, :cond_0

    .line 168
    .line 169
    const/16 v1, 0x8

    .line 170
    .line 171
    .line 172
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->userRating:Lcom/google/android/exoplayer2/k3;

    .line 176
    .line 177
    .line 178
    invoke-interface {v2}, Lcom/google/android/exoplayer2/h;->toBundle()Landroid/os/Bundle;

    .line 179
    move-result-object v2

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    .line 184
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 185
    .line 186
    if-eqz v1, :cond_1

    .line 187
    .line 188
    const/16 v1, 0x9

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->overallRating:Lcom/google/android/exoplayer2/k3;

    .line 195
    .line 196
    .line 197
    invoke-interface {v2}, Lcom/google/android/exoplayer2/h;->toBundle()Landroid/os/Bundle;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    .line 203
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 204
    .line 205
    if-eqz v1, :cond_2

    .line 206
    .line 207
    const/16 v1, 0xc

    .line 208
    .line 209
    .line 210
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->trackNumber:Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 217
    move-result v2

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 221
    .line 222
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 223
    .line 224
    if-eqz v1, :cond_3

    .line 225
    .line 226
    const/16 v1, 0xd

    .line 227
    .line 228
    .line 229
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalTrackCount:Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 236
    move-result v2

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    .line 241
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 242
    .line 243
    if-eqz v1, :cond_4

    .line 244
    .line 245
    const/16 v1, 0xe

    .line 246
    .line 247
    .line 248
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->folderType:Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 255
    move-result v2

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 259
    .line 260
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 261
    .line 262
    if-eqz v1, :cond_5

    .line 263
    .line 264
    const/16 v1, 0xf

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->isPlayable:Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    move-result v2

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    .line 279
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 280
    .line 281
    if-eqz v1, :cond_6

    .line 282
    .line 283
    const/16 v1, 0x10

    .line 284
    .line 285
    .line 286
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingYear:Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 293
    move-result v2

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 297
    .line 298
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 299
    .line 300
    if-eqz v1, :cond_7

    .line 301
    .line 302
    const/16 v1, 0x11

    .line 303
    .line 304
    .line 305
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingMonth:Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 312
    move-result v2

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 316
    .line 317
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 318
    .line 319
    if-eqz v1, :cond_8

    .line 320
    .line 321
    const/16 v1, 0x12

    .line 322
    .line 323
    .line 324
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->recordingDay:Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v2

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 335
    .line 336
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 337
    .line 338
    if-eqz v1, :cond_9

    .line 339
    .line 340
    const/16 v1, 0x13

    .line 341
    .line 342
    .line 343
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 344
    move-result-object v1

    .line 345
    .line 346
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseYear:Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 350
    move-result v2

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 354
    .line 355
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 356
    .line 357
    if-eqz v1, :cond_a

    .line 358
    .line 359
    const/16 v1, 0x14

    .line 360
    .line 361
    .line 362
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 363
    move-result-object v1

    .line 364
    .line 365
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseMonth:Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 369
    move-result v2

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 373
    .line 374
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 375
    .line 376
    if-eqz v1, :cond_b

    .line 377
    .line 378
    const/16 v1, 0x15

    .line 379
    .line 380
    .line 381
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 383
    .line 384
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->releaseDay:Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 388
    move-result v2

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 392
    .line 393
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 394
    .line 395
    if-eqz v1, :cond_c

    .line 396
    .line 397
    const/16 v1, 0x19

    .line 398
    .line 399
    .line 400
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->discNumber:Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 407
    move-result v2

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 411
    .line 412
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 413
    .line 414
    if-eqz v1, :cond_d

    .line 415
    .line 416
    const/16 v1, 0x1a

    .line 417
    .line 418
    .line 419
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 421
    .line 422
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->totalDiscCount:Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 426
    move-result v2

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 430
    .line 431
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 432
    .line 433
    if-eqz v1, :cond_e

    .line 434
    .line 435
    const/16 v1, 0x1d

    .line 436
    .line 437
    .line 438
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 439
    move-result-object v1

    .line 440
    .line 441
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->artworkDataType:Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 445
    move-result v2

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 449
    .line 450
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->extras:Landroid/os/Bundle;

    .line 451
    .line 452
    if-eqz v1, :cond_f

    .line 453
    .line 454
    const/16 v1, 0x3e8

    .line 455
    .line 456
    .line 457
    invoke-static {v1}, Lcom/google/android/exoplayer2/n2;->d(I)Ljava/lang/String;

    .line 458
    move-result-object v1

    .line 459
    .line 460
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->extras:Landroid/os/Bundle;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 464
    :cond_f
    return-object v0
.end method
