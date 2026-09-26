.class Lcom/squareup/seismic/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/seismic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE:J = 0x1dcd6500L

.field private static final MIN_QUEUE_SIZE:I = 0x4

.field private static final MIN_WINDOW_SIZE:J = 0xee6b280L


# instance fields
.field private acceleratingCount:I

.field private newest:Lcom/squareup/seismic/a$b;

.field private oldest:Lcom/squareup/seismic/a$b;

.field private final pool:Lcom/squareup/seismic/a$c;

.field private sampleCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/squareup/seismic/a$c;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/squareup/seismic/a$c;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->pool:Lcom/squareup/seismic/a$c;

    .line 11
    return-void
.end method


# virtual methods
.method a(JZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x1dcd6500

    .line 4
    .line 5
    sub-long v0, p1, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/squareup/seismic/a$d;->d(J)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/squareup/seismic/a$d;->pool:Lcom/squareup/seismic/a$c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/squareup/seismic/a$c;->a()Lcom/squareup/seismic/a$b;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-wide p1, v0, Lcom/squareup/seismic/a$b;->timestamp:J

    .line 17
    .line 18
    iput-boolean p3, v0, Lcom/squareup/seismic/a$b;->accelerating:Z

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-object p1, v0, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/squareup/seismic/a$d;->newest:Lcom/squareup/seismic/a$b;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iput-object v0, p1, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 28
    .line 29
    :cond_0
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->newest:Lcom/squareup/seismic/a$b;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 36
    .line 37
    :cond_1
    iget p1, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    iput p1, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 50
    :cond_2
    return-void
.end method

.method b()V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/squareup/seismic/a$d;->pool:Lcom/squareup/seismic/a$c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/squareup/seismic/a$c;->b(Lcom/squareup/seismic/a$b;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->newest:Lcom/squareup/seismic/a$b;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 21
    .line 22
    iput v0, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 23
    return-void
.end method

.method c()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/squareup/seismic/a$d;->newest:Lcom/squareup/seismic/a$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-wide v2, v0, Lcom/squareup/seismic/a$b;->timestamp:J

    .line 11
    .line 12
    iget-wide v0, v1, Lcom/squareup/seismic/a$b;->timestamp:J

    .line 13
    sub-long/2addr v2, v0

    .line 14
    .line 15
    .line 16
    const-wide/32 v0, 0xee6b280

    .line 17
    .line 18
    cmp-long v0, v2, v0

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 23
    .line 24
    iget v1, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 25
    .line 26
    shr-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    shr-int/lit8 v1, v1, 0x2

    .line 29
    add-int/2addr v2, v1

    .line 30
    .line 31
    if-lt v0, v2, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method d(J)V
    .locals 6

    .line 1
    .line 2
    :goto_0
    iget v0, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-wide v2, v1, Lcom/squareup/seismic/a$b;->timestamp:J

    .line 12
    .line 13
    sub-long v2, p1, v2

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    iget-boolean v2, v1, Lcom/squareup/seismic/a$b;->accelerating:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget v2, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    iput v2, p0, Lcom/squareup/seismic/a$d;->acceleratingCount:I

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/squareup/seismic/a$d;->sampleCount:I

    .line 34
    .line 35
    iget-object v0, v1, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->oldest:Lcom/squareup/seismic/a$b;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-object v0, p0, Lcom/squareup/seismic/a$d;->newest:Lcom/squareup/seismic/a$b;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/squareup/seismic/a$d;->pool:Lcom/squareup/seismic/a$c;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/squareup/seismic/a$c;->b(Lcom/squareup/seismic/a$b;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method
