.class public Lcom/google/android/exoplayer2/decoder/g;
.super Lcom/google/android/exoplayer2/decoder/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/g$a;
    }
.end annotation


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/google/android/exoplayer2/decoder/c;

.field public data:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public format:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final paddingSize:I

.field public supplementalData:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public timeUs:J

.field public waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "goog.exo.decoder"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/x1;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/decoder/g;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/a;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/decoder/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/c;

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/g;->bufferReplacementMode:I

    iput p2, p0, Lcom/google/android/exoplayer2/decoder/g;->paddingSize:I

    return-void
.end method

.method private l(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->bufferReplacementMode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 28
    move-result v0

    .line 29
    .line 30
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/decoder/g$a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/decoder/g$a;-><init>(II)V

    .line 34
    throw v1
.end method

.method public static q()Lcom/google/android/exoplayer2/decoder/g;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/decoder/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/g;-><init>(I)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/a;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->supplementalData:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/g;->waitingForKeys:Z

    .line 21
    return-void
.end method

.method public n(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/g;->paddingSize:I

    .line 3
    add-int/2addr p1, v0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/g;->l(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr p1, v2

    .line 24
    .line 25
    if-lt v1, p1, :cond_1

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/g;->l(I)Ljava/nio/ByteBuffer;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->supplementalData:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 15
    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/a;->d(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->supplementalData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge v0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->supplementalData:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/g;->supplementalData:Ljava/nio/ByteBuffer;

    .line 24
    :goto_1
    return-void
.end method
