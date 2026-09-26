.class public final Landroid/support/v4/media/session/PlaybackStateCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mCustomActions:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActiveItemId:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mCustomActions:Ljava/util/List;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActiveItemId:J

    .line 5
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mState:I

    .line 6
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mPosition:J

    .line 7
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mRate:F

    .line 8
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mUpdateTime:J

    .line 9
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mBufferedPosition:J

    .line 10
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActions:J

    .line 11
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mErrorCode:I

    .line 12
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mErrorMessage:Ljava/lang/CharSequence;

    .line 13
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActiveItemId:J

    .line 16
    iget-object p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v18, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 5
    .line 6
    move-object/from16 v1, v18

    .line 7
    .line 8
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mState:I

    .line 9
    .line 10
    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mPosition:J

    .line 11
    .line 12
    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mBufferedPosition:J

    .line 13
    .line 14
    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mRate:F

    .line 15
    .line 16
    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActions:J

    .line 17
    .line 18
    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mErrorCode:I

    .line 19
    .line 20
    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mErrorMessage:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mUpdateTime:J

    .line 23
    .line 24
    iget-object v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mCustomActions:Ljava/util/List;

    .line 25
    .line 26
    move-object/from16 v19, v1

    .line 27
    .line 28
    move/from16 v20, v2

    .line 29
    .line 30
    iget-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mActiveItemId:J

    .line 31
    move-wide v15, v1

    .line 32
    .line 33
    iget-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mExtras:Landroid/os/Bundle;

    .line 34
    .line 35
    move-object/from16 v17, v1

    .line 36
    .line 37
    move-object/from16 v1, v19

    .line 38
    .line 39
    move/from16 v2, v20

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 43
    return-object v18
.end method

.method public b(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$d;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mState:I

    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mPosition:J

    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mUpdateTime:J

    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->mRate:F

    return-object p0
.end method
