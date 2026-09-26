.class public final Lcom/google/android/exoplayer2/d3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/d3$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_GROUP_INDEX:I = 0x5

.field private static final FIELD_AD_INDEX_IN_AD_GROUP:I = 0x6

.field private static final FIELD_CONTENT_POSITION_MS:I = 0x4

.field private static final FIELD_MEDIA_ITEM:I = 0x1

.field private static final FIELD_MEDIA_ITEM_INDEX:I = 0x0

.field private static final FIELD_PERIOD_INDEX:I = 0x2

.field private static final FIELD_POSITION_MS:I = 0x3


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Lcom/google/android/exoplayer2/i2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final positionMs:J

.field public final windowIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final windowUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/g3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/g3;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/d3$e;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/i2;Ljava/lang/Object;IJJII)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/d3$e;->windowUid:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/exoplayer2/d3$e;->windowIndex:I

    iput p2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItemIndex:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    iput-object p4, p0, Lcom/google/android/exoplayer2/d3$e;->periodUid:Ljava/lang/Object;

    iput p5, p0, Lcom/google/android/exoplayer2/d3$e;->periodIndex:I

    iput-wide p6, p0, Lcom/google/android/exoplayer2/d3$e;->positionMs:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/d3$e;->contentPositionMs:J

    iput p10, p0, Lcom/google/android/exoplayer2/d3$e;->adGroupIndex:I

    iput p11, p0, Lcom/google/android/exoplayer2/d3$e;->adIndexInAdGroup:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v3, Lcom/google/android/exoplayer2/i2;->EMPTY:Lcom/google/android/exoplayer2/i2;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/d3$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/i2;Ljava/lang/Object;IJJII)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/d3$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/d3$e;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/d3$e;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/d3$e;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result v4

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    move-object v5, v0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/i2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/exoplayer2/i2;

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    const/4 v0, 0x2

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 42
    move-result v7

    .line 43
    const/4 v0, 0x3

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 56
    move-result-wide v8

    .line 57
    const/4 v0, 0x4

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 65
    move-result-wide v10

    .line 66
    const/4 v0, 0x5

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 74
    move-result v12

    .line 75
    const/4 v0, 0x6

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 83
    move-result v13

    .line 84
    .line 85
    new-instance p0, Lcom/google/android/exoplayer2/d3$e;

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    move-object v2, p0

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/d3$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/i2;Ljava/lang/Object;IJJII)V

    .line 92
    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
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
.method public equals(Ljava/lang/Object;)Z
    .locals 6
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
    const-class v3, Lcom/google/android/exoplayer2/d3$e;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/d3$e;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItemIndex:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/d3$e;->mediaItemIndex:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->periodIndex:I

    .line 27
    .line 28
    iget v3, p1, Lcom/google/android/exoplayer2/d3$e;->periodIndex:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/google/android/exoplayer2/d3$e;->positionMs:J

    .line 33
    .line 34
    iget-wide v4, p1, Lcom/google/android/exoplayer2/d3$e;->positionMs:J

    .line 35
    .line 36
    cmp-long v2, v2, v4

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-wide v2, p0, Lcom/google/android/exoplayer2/d3$e;->contentPositionMs:J

    .line 41
    .line 42
    iget-wide v4, p1, Lcom/google/android/exoplayer2/d3$e;->contentPositionMs:J

    .line 43
    .line 44
    cmp-long v2, v2, v4

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->adGroupIndex:I

    .line 49
    .line 50
    iget v3, p1, Lcom/google/android/exoplayer2/d3$e;->adGroupIndex:I

    .line 51
    .line 52
    if-ne v2, v3, :cond_2

    .line 53
    .line 54
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->adIndexInAdGroup:I

    .line 55
    .line 56
    iget v3, p1, Lcom/google/android/exoplayer2/d3$e;->adIndexInAdGroup:I

    .line 57
    .line 58
    if-ne v2, v3, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->windowUid:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/google/android/exoplayer2/d3$e;->windowUid:Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->periodUid:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/google/android/exoplayer2/d3$e;->periodUid:Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 83
    .line 84
    .line 85
    invoke-static {v2, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 92
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->windowUid:Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItemIndex:I

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    aput-object v1, v0, v2

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x3

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->periodUid:Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/exoplayer2/d3$e;->periodIndex:I

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x4

    .line 36
    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    iget-wide v1, p0, Lcom/google/android/exoplayer2/d3$e;->positionMs:J

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x5

    .line 45
    .line 46
    aput-object v1, v0, v2

    .line 47
    .line 48
    iget-wide v1, p0, Lcom/google/android/exoplayer2/d3$e;->contentPositionMs:J

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x6

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    iget v1, p0, Lcom/google/android/exoplayer2/d3$e;->adGroupIndex:I

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x7

    .line 63
    .line 64
    aput-object v1, v0, v2

    .line 65
    .line 66
    iget v1, p0, Lcom/google/android/exoplayer2/d3$e;->adIndexInAdGroup:I

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    const/16 v2, 0x8

    .line 73
    .line 74
    aput-object v1, v0, v2

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 78
    move-result v0

    .line 79
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItemIndex:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/d3$e;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2;->toBundle()Landroid/os/Bundle;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :cond_0
    const/4 v1, 0x2

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->periodIndex:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const/4 v1, 0x3

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-wide v2, p0, Lcom/google/android/exoplayer2/d3$e;->positionMs:J

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 54
    const/4 v1, 0x4

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/google/android/exoplayer2/d3$e;->contentPositionMs:J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 64
    const/4 v1, 0x5

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->adGroupIndex:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const/4 v1, 0x6

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/google/android/exoplayer2/d3$e;->c(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    iget v2, p0, Lcom/google/android/exoplayer2/d3$e;->adIndexInAdGroup:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    return-object v0
.end method
