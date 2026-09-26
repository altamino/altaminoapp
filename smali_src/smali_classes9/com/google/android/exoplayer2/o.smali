.class public final Lcom/google/android/exoplayer2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_VOLUME:I = 0x2

.field private static final FIELD_MIN_VOLUME:I = 0x1

.field private static final FIELD_PLAYBACK_TYPE:I = 0x0

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/o;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/o;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/o;-><init>(III)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/o;->UNKNOWN:Lcom/google/android/exoplayer2/o;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/n;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/exoplayer2/n;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lcom/google/android/exoplayer2/o;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 16
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/o;->playbackType:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/o;->minVolume:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/o;->maxVolume:I

    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/o;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
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

.method private static synthetic c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result p0

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/o;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/o;-><init>(III)V

    .line 33
    return-object v0
.end method


# virtual methods
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
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/o;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/o;

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/o;->playbackType:I

    .line 15
    .line 16
    iget v3, p1, Lcom/google/android/exoplayer2/o;->playbackType:I

    .line 17
    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/exoplayer2/o;->minVolume:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/o;->minVolume:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    iget v1, p0, Lcom/google/android/exoplayer2/o;->maxVolume:I

    .line 27
    .line 28
    iget p1, p1, Lcom/google/android/exoplayer2/o;->maxVolume:I

    .line 29
    .line 30
    if-ne v1, p1, :cond_2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lcom/google/android/exoplayer2/o;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/o;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/o;->maxVolume:I

    add-int/2addr v0, v1

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/o;->playbackType:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/o;->minVolume:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->b(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/exoplayer2/o;->maxVolume:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    return-object v0
.end method
