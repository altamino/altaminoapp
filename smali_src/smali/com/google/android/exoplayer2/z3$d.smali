.class public final Lcom/google/android/exoplayer2/z3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/z3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/z3$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

.field private static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field private static final FIELD_DEFAULT_POSITION_US:I = 0x9

.field private static final FIELD_DURATION_US:I = 0xa

.field private static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:I = 0x4

.field private static final FIELD_FIRST_PERIOD_INDEX:I = 0xb

.field private static final FIELD_IS_DYNAMIC:I = 0x6

.field private static final FIELD_IS_PLACEHOLDER:I = 0x8

.field private static final FIELD_IS_SEEKABLE:I = 0x5

.field private static final FIELD_LAST_PERIOD_INDEX:I = 0xc

.field private static final FIELD_LIVE_CONFIGURATION:I = 0x7

.field private static final FIELD_MEDIA_ITEM:I = 0x1

.field private static final FIELD_POSITION_IN_FIRST_PERIOD_US:I = 0xd

.field private static final FIELD_PRESENTATION_START_TIME_MS:I = 0x2

.field private static final FIELD_WINDOW_START_TIME_MS:I = 0x3

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lcom/google/android/exoplayer2/i2$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mediaItem:Lcom/google/android/exoplayer2/i2;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/z3$d;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/android/exoplayer2/z3$d;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 20
    .line 21
    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i2$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i2$c;->g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/i2$c;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sput-object v0, Lcom/google/android/exoplayer2/z3$d;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/b4;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/android/exoplayer2/b4;-><init>()V

    .line 43
    .line 44
    sput-object v0, Lcom/google/android/exoplayer2/z3$d;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/z3$d;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/exoplayer2/z3$d;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/z3$d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/z3$d;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/z3$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/z3$d;Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z3$d;->l(Z)Landroid/os/Bundle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/z3$d;
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object v3, Lcom/google/android/exoplayer2/i2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/i2;

    .line 23
    move-object v5, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v5, v2

    .line 26
    :goto_0
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 39
    move-result-wide v7

    .line 40
    const/4 v1, 0x3

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 48
    move-result-wide v9

    .line 49
    const/4 v1, 0x4

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 57
    move-result-wide v11

    .line 58
    const/4 v1, 0x5

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    move-result v13

    .line 68
    const/4 v1, 0x6

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    move-result v14

    .line 77
    const/4 v1, 0x7

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    sget-object v2, Lcom/google/android/exoplayer2/i2$g;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 93
    move-result-object v1

    .line 94
    move-object v2, v1

    .line 95
    .line 96
    check-cast v2, Lcom/google/android/exoplayer2/i2$g;

    .line 97
    :cond_1
    move-object v15, v2

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    const/16 v2, 0x9

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    move-wide/from16 v24, v7

    .line 116
    .line 117
    const-wide/16 v6, 0x0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 121
    move-result-wide v16

    .line 122
    .line 123
    const/16 v2, 0xa

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 131
    move-result-wide v18

    .line 132
    .line 133
    const/16 v2, 0xb

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    const/4 v3, 0x0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 142
    move-result v20

    .line 143
    .line 144
    const/16 v2, 0xc

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 152
    move-result v21

    .line 153
    .line 154
    const/16 v2, 0xd

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 162
    move-result-wide v22

    .line 163
    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/z3$d;

    .line 165
    move-object v3, v0

    .line 166
    .line 167
    .line 168
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    .line 169
    .line 170
    sget-object v4, Lcom/google/android/exoplayer2/z3$d;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 171
    const/4 v6, 0x0

    .line 172
    .line 173
    move-wide/from16 v7, v24

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/z3$d;->k(Ljava/lang/Object;Lcom/google/android/exoplayer2/i2;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/i2$g;JJIIJ)Lcom/google/android/exoplayer2/z3$d;

    .line 177
    .line 178
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 179
    return-object v0
.end method

.method private static j(I)Ljava/lang/String;
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

.method private final l(Z)Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/google/android/exoplayer2/i2;->EMPTY:Lcom/google/android/exoplayer2/i2;

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2;->toBundle()Landroid/os/Bundle;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    const/4 p1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->presentationStartTimeMs:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    const/4 p1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    const/4 p1, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 56
    const/4 p1, 0x5

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/z3$d;->isSeekable:Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const/4 p1, 0x6

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    const/4 v1, 0x7

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$g;->toBundle()Landroid/os/Bundle;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .line 93
    :cond_1
    const/16 p1, 0x8

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    const/16 p1, 0x9

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 114
    .line 115
    const/16 p1, 0xa

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 125
    .line 126
    const/16 p1, 0xb

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    iget v1, p0, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    .line 137
    const/16 p1, 0xc

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    iget v1, p0, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    const/16 p1, 0xd

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/z3$d;->j(I)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    iget-wide v1, p0, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 158
    return-object v0
.end method


# virtual methods
.method public d()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->V(J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

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
    const-class v3, Lcom/google/android/exoplayer2/z3$d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/z3$d;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, p1, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/z3$d;->manifest:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/google/android/exoplayer2/z3$d;->manifest:Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->presentationStartTimeMs:J

    .line 66
    .line 67
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->presentationStartTimeMs:J

    .line 68
    .line 69
    cmp-long v2, v2, v4

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 74
    .line 75
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 76
    .line 77
    cmp-long v2, v2, v4

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 82
    .line 83
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 84
    .line 85
    cmp-long v2, v2, v4

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isSeekable:Z

    .line 90
    .line 91
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/z3$d;->isSeekable:Z

    .line 92
    .line 93
    if-ne v2, v3, :cond_2

    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 96
    .line 97
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 98
    .line 99
    if-ne v2, v3, :cond_2

    .line 100
    .line 101
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 102
    .line 103
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 104
    .line 105
    if-ne v2, v3, :cond_2

    .line 106
    .line 107
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 108
    .line 109
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 110
    .line 111
    cmp-long v2, v2, v4

    .line 112
    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 116
    .line 117
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 118
    .line 119
    cmp-long v2, v2, v4

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    iget v2, p0, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 124
    .line 125
    iget v3, p1, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 126
    .line 127
    if-ne v2, v3, :cond_2

    .line 128
    .line 129
    iget v2, p0, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 130
    .line 131
    iget v3, p1, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 132
    .line 133
    if-ne v2, v3, :cond_2

    .line 134
    .line 135
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    .line 136
    .line 137
    iget-wide v4, p1, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    .line 138
    .line 139
    cmp-long p1, v2, v4

    .line 140
    .line 141
    if-nez p1, :cond_2

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 145
    :cond_3
    :goto_1
    return v1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xd9

    .line 9
    add-int/2addr v1, v0

    .line 10
    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->hashCode()I

    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->manifest:Ljava/lang/Object;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    move-result v0

    .line 32
    :goto_0
    add-int/2addr v1, v0

    .line 33
    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$g;->hashCode()I

    .line 43
    move-result v2

    .line 44
    :goto_1
    add-int/2addr v1, v2

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->presentationStartTimeMs:J

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    ushr-long v4, v2, v0

    .line 53
    xor-long/2addr v2, v4

    .line 54
    long-to-int v2, v2

    .line 55
    add-int/2addr v1, v2

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 60
    .line 61
    ushr-long v4, v2, v0

    .line 62
    xor-long/2addr v2, v4

    .line 63
    long-to-int v2, v2

    .line 64
    add-int/2addr v1, v2

    .line 65
    .line 66
    mul-int/lit8 v1, v1, 0x1f

    .line 67
    .line 68
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 69
    .line 70
    ushr-long v4, v2, v0

    .line 71
    xor-long/2addr v2, v4

    .line 72
    long-to-int v2, v2

    .line 73
    add-int/2addr v1, v2

    .line 74
    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isSeekable:Z

    .line 78
    add-int/2addr v1, v2

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0x1f

    .line 81
    .line 82
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 83
    add-int/2addr v1, v2

    .line 84
    .line 85
    mul-int/lit8 v1, v1, 0x1f

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 88
    add-int/2addr v1, v2

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x1f

    .line 91
    .line 92
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 93
    .line 94
    ushr-long v4, v2, v0

    .line 95
    xor-long/2addr v2, v4

    .line 96
    long-to-int v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x1f

    .line 100
    .line 101
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 102
    .line 103
    ushr-long v4, v2, v0

    .line 104
    xor-long/2addr v2, v4

    .line 105
    long-to-int v2, v2

    .line 106
    add-int/2addr v1, v2

    .line 107
    .line 108
    mul-int/lit8 v1, v1, 0x1f

    .line 109
    .line 110
    iget v2, p0, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 111
    add-int/2addr v1, v2

    .line 112
    .line 113
    mul-int/lit8 v1, v1, 0x1f

    .line 114
    .line 115
    iget v2, p0, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 116
    add-int/2addr v1, v2

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x1f

    .line 119
    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    .line 121
    .line 122
    ushr-long v4, v2, v0

    .line 123
    xor-long/2addr v2, v4

    .line 124
    long-to-int v0, v2

    .line 125
    add-int/2addr v1, v0

    .line 126
    return v1
.end method

.method public i()Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/z3$d;->isLive:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    .line 13
    :goto_0
    if-ne v0, v1, :cond_1

    .line 14
    move v0, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, v2

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    move v2, v3

    .line 25
    :cond_2
    return v2
.end method

.method public k(Ljava/lang/Object;Lcom/google/android/exoplayer2/i2;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/i2$g;JJIIJ)Lcom/google/android/exoplayer2/z3$d;
    .locals 5
    .param p2    # Lcom/google/android/exoplayer2/i2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/exoplayer2/i2$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p12

    .line 5
    move-object v3, p1

    .line 6
    .line 7
    iput-object v3, v0, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    move-object v3, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/z3$d;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 14
    .line 15
    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v1, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    .line 27
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/z3$d;->tag:Ljava/lang/Object;

    .line 28
    move-object v1, p3

    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/android/exoplayer2/z3$d;->manifest:Ljava/lang/Object;

    .line 31
    move-wide v3, p4

    .line 32
    .line 33
    iput-wide v3, v0, Lcom/google/android/exoplayer2/z3$d;->presentationStartTimeMs:J

    .line 34
    move-wide v3, p6

    .line 35
    .line 36
    iput-wide v3, v0, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 37
    move-wide v3, p8

    .line 38
    .line 39
    iput-wide v3, v0, Lcom/google/android/exoplayer2/z3$d;->elapsedRealtimeEpochOffsetMs:J

    .line 40
    move v1, p10

    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z3$d;->isSeekable:Z

    .line 43
    .line 44
    move/from16 v1, p11

    .line 45
    .line 46
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v3, v1

    .line 53
    .line 54
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/z3$d;->isLive:Z

    .line 55
    .line 56
    iput-object v2, v0, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 57
    .line 58
    move-wide/from16 v2, p13

    .line 59
    .line 60
    iput-wide v2, v0, Lcom/google/android/exoplayer2/z3$d;->defaultPositionUs:J

    .line 61
    .line 62
    move-wide/from16 v2, p15

    .line 63
    .line 64
    iput-wide v2, v0, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 65
    .line 66
    move/from16 v2, p17

    .line 67
    .line 68
    iput v2, v0, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 69
    .line 70
    move/from16 v2, p18

    .line 71
    .line 72
    iput v2, v0, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 73
    .line 74
    move-wide/from16 v2, p19

    .line 75
    .line 76
    iput-wide v2, v0, Lcom/google/android/exoplayer2/z3$d;->positionInFirstPeriodUs:J

    .line 77
    .line 78
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 79
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/z3$d;->l(Z)Landroid/os/Bundle;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method
