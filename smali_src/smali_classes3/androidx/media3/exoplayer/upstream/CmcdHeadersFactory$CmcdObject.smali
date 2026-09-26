.class final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    }
.end annotation


# instance fields
.field public final bitrateKbps:I

.field public final customData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final objectDurationMs:J

.field public final objectType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final topBitrateKbps:I


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->a(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->b(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->c(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->d(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->e(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/b0$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b0$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    .line 8
    .line 9
    const-string v2, "%s=%d,"

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    .line 14
    .line 15
    const v6, -0x7fffffff

    .line 16
    .line 17
    if-eq v1, v6, :cond_0

    .line 18
    .line 19
    new-array v7, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v8, "br"

    .line 22
    .line 23
    aput-object v8, v7, v4

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    aput-object v1, v7, v5

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v7}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    .line 39
    .line 40
    if-eq v1, v6, :cond_1

    .line 41
    .line 42
    new-array v6, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v7, "tb"

    .line 46
    .line 47
    aput-object v7, v6, v4

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    aput-object v1, v6, v5

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v6}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    cmp-long v1, v6, v8

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    new-array v1, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string v8, "d"

    .line 76
    .line 77
    aput-object v8, v1, v4

    .line 78
    .line 79
    .line 80
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    aput-object v6, v1, v5

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    new-array v1, v3, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "ot"

    .line 104
    .line 105
    aput-object v2, v1, v4

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 108
    .line 109
    aput-object v2, v1, v5

    .line 110
    .line 111
    const-string v2, "%s=%s,"

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    new-array v1, v5, [Ljava/lang/Object;

    .line 129
    .line 130
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    .line 131
    .line 132
    aput-object v2, v1, v4

    .line 133
    .line 134
    const-string v2, "%s,"

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 145
    move-result v1

    .line 146
    .line 147
    if-nez v1, :cond_5

    .line 148
    return-void

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 152
    move-result v1

    .line 153
    sub-int/2addr v1, v5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    .line 158
    const-string v1, "CMCD-Object"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1, v0}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 166
    return-void
.end method
