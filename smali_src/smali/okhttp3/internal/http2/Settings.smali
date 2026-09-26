.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Settings$Companion;
    }
.end annotation


# static fields
.field public static final COUNT:I = 0xa

.field public static final Companion:Lokhttp3/internal/http2/Settings$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0xffff

.field public static final ENABLE_PUSH:I = 0x2

.field public static final HEADER_TABLE_SIZE:I = 0x1

.field public static final INITIAL_WINDOW_SIZE:I = 0x7

.field public static final MAX_CONCURRENT_STREAMS:I = 0x4

.field public static final MAX_FRAME_SIZE:I = 0x5

.field public static final MAX_HEADER_LIST_SIZE:I = 0x6


# instance fields
.field private set:I

.field private final values:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Settings$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lokhttp3/internal/http2/Settings;->Companion:Lokhttp3/internal/http2/Settings$Companion;

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
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 10
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 4
    .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x6

    .line 10
    const/4 v6, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/collections/l;->s([IIIIILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public final get(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method public final getEnablePush(Z)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x4

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    aget p1, p1, v0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :cond_1
    :goto_0
    return p1
.end method

.method public final getHeaderTableSize()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    :goto_0
    return v0
.end method

.method public final getInitialWindowSize()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0x80

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v1, 0x7

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v0, 0xffff

    .line 16
    :goto_0
    return v0
.end method

.method public final getMaxConcurrentStreams()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x10

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v0, 0x7fffffff

    .line 16
    :goto_0
    return v0
.end method

.method public final getMaxFrameSize(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x20

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v0, 0x5

    .line 10
    .line 11
    aget p1, p1, v0

    .line 12
    :cond_0
    return p1
.end method

.method public final getMaxHeaderListSize(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x40

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 9
    const/4 v0, 0x6

    .line 10
    .line 11
    aget p1, p1, v0

    .line 12
    :cond_0
    return p1
.end method

.method public final isSet(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final merge(Lokhttp3/internal/http2/Settings;)V
    .locals 3
    .param p1    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const/16 v1, 0xa

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    add-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 27
    :goto_1
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final set(II)Lokhttp3/internal/http2/Settings;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-lt p1, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    shl-int/2addr v1, p1

    .line 11
    .line 12
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 13
    or-int/2addr v1, v2

    .line 14
    .line 15
    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 16
    .line 17
    aput p2, v0, p1

    .line 18
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
