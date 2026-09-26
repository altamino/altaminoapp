.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$c;,
        Landroid/support/v4/media/session/PlaybackStateCompat$b;,
        Landroid/support/v4/media/session/PlaybackStateCompat$d;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_PREPARE:J = 0x4000L

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:J = 0x8000L

.field public static final ACTION_PREPARE_FROM_SEARCH:J = 0x10000L

.field public static final ACTION_PREPARE_FROM_URI:J = 0x20000L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_CAPTIONING_ENABLED:J = 0x100000L

.field public static final ACTION_SET_PLAYBACK_SPEED:J = 0x400000L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SET_REPEAT_MODE:J = 0x40000L

.field public static final ACTION_SET_SHUFFLE_MODE:J = 0x200000L

.field public static final ACTION_SET_SHUFFLE_MODE_ENABLED:J = 0x80000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x0

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_GROUP:I = 0x3

.field public static final REPEAT_MODE_INVALID:I = -0x1

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_INVALID:I = -0x1

.field public static final SHUFFLE_MODE_NONE:I = 0x0

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1


# instance fields
.field final mActions:J

.field final mActiveItemId:J

.field final mBufferedPosition:J

.field mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field final mErrorCode:I

.field final mErrorMessage:Ljava/lang/CharSequence;

.field final mExtras:Landroid/os/Bundle;

.field final mPosition:J

.field final mSpeed:F

.field final mState:I

.field private mStateFwk:Landroid/media/session/PlaybackState;

.field final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move-wide v1, p2

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-wide v1, p4

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move v1, p6

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move-wide v1, p7

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move v1, p9

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    move-object v1, p10

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-wide v1, p11

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 10
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 11
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    check-cast v1, Landroid/media/session/PlaybackState;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->j(Landroid/media/session/PlaybackState;)Ljava/util/List;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    move-object/from16 v17, v0

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->a(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    .line 50
    move-result-object v20

    .line 51
    .line 52
    .line 53
    invoke-static/range {v20 .. v20}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 54
    .line 55
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 56
    move-object v4, v0

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->r(Landroid/media/session/PlaybackState;)I

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->q(Landroid/media/session/PlaybackState;)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->i(Landroid/media/session/PlaybackState;)J

    .line 68
    move-result-wide v8

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->p(Landroid/media/session/PlaybackState;)F

    .line 72
    move-result v10

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->g(Landroid/media/session/PlaybackState;)J

    .line 76
    move-result-wide v11

    .line 77
    const/4 v13, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->k(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    .line 81
    move-result-object v14

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->n(Landroid/media/session/PlaybackState;)J

    .line 85
    move-result-wide v15

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->h(Landroid/media/session/PlaybackState;)J

    .line 89
    move-result-wide v18

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v4 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 93
    .line 94
    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    .line 95
    :cond_1
    return-object v0
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    return-wide v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    return v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "PlaybackState {"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "state="

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ", position="

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ", buffered position="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, ", speed="

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, ", updated="

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, ", actions="

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, ", error code="

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, ", error message="

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, ", custom actions="

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, ", active item id="

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, "}"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    .line 12
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    .line 22
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    .line 27
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    .line 32
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 36
    .line 37
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 41
    .line 42
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    .line 47
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 51
    .line 52
    iget p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
