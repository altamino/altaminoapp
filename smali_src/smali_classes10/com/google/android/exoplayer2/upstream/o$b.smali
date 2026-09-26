.class public final Lcom/google/android/exoplayer2/upstream/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private customData:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flags:I

.field private httpBody:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private httpMethod:I

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private length:J

.field private position:J

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private uriPositionOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpMethod:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpRequestHeaders:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->length:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->uri:Landroid/net/Uri;

    .line 6
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->uriPositionOffset:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->uriPositionOffset:J

    .line 7
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/o;->httpMethod:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpMethod:I

    .line 8
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->httpBody:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpBody:[B

    .line 9
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->httpRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpRequestHeaders:Ljava/util/Map;

    .line 10
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->position:J

    .line 11
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->length:J

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->key:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/o;->flags:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->flags:I

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/o;->customData:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->customData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>(Lcom/google/android/exoplayer2/upstream/o;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/o;
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/o$b;->uri:Landroid/net/Uri;

    .line 5
    .line 6
    const-string v2, "The uri must be set."

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/upstream/o;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/o$b;->uri:Landroid/net/Uri;

    .line 14
    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/o$b;->uriPositionOffset:J

    .line 16
    .line 17
    iget v7, v0, Lcom/google/android/exoplayer2/upstream/o$b;->httpMethod:I

    .line 18
    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/o$b;->httpBody:[B

    .line 20
    .line 21
    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/o$b;->httpRequestHeaders:Ljava/util/Map;

    .line 22
    .line 23
    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/o$b;->position:J

    .line 24
    .line 25
    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/o$b;->length:J

    .line 26
    .line 27
    iget-object v14, v0, Lcom/google/android/exoplayer2/upstream/o$b;->key:Ljava/lang/String;

    .line 28
    .line 29
    iget v15, v0, Lcom/google/android/exoplayer2/upstream/o$b;->flags:I

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/o$b;->customData:Ljava/lang/Object;

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    move-object v3, v1

    .line 35
    .line 36
    move-object/from16 v16, v2

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/upstream/o$a;)V

    .line 40
    return-object v1
.end method

.method public b(I)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->flags:I

    return-object p0
.end method

.method public c([B)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpBody:[B

    return-object p0
.end method

.method public d(I)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpMethod:I

    return-object p0
.end method

.method public e(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/o$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->httpRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->key:Ljava/lang/String;

    return-object p0
.end method

.method public g(J)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->position:J

    return-object p0
.end method

.method public h(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->uri:Landroid/net/Uri;

    .line 7
    return-object p0
.end method
