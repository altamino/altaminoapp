.class public final Lcom/google/android/exoplayer2/trackselection/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final info:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final length:I

.field public final rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

.field public final selections:[Lcom/google/android/exoplayer2/trackselection/s;

.field public final tracks:Lcom/google/android/exoplayer2/e4;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;Lcom/google/android/exoplayer2/e4;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 3
    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/trackselection/s;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/trackselection/s;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/c0;->tracks:Lcom/google/android/exoplayer2/e4;

    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/c0;->info:Ljava/lang/Object;

    .line 4
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/c0;->length:I

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;Ljava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/e4;->EMPTY:Lcom/google/android/exoplayer2/e4;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/trackselection/c0;-><init>([Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;Lcom/google/android/exoplayer2/e4;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/trackselection/c0;)Z
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/trackselection/c0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 6
    array-length v1, v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 9
    array-length v2, v2

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move v1, v0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 16
    array-length v2, v2

    .line 17
    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/c0;->b(Lcom/google/android/exoplayer2/trackselection/c0;I)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    return v0

    .line 26
    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_3
    :goto_1
    return v0
.end method

.method public b(Lcom/google/android/exoplayer2/trackselection/c0;I)Z
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/trackselection/c0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 11
    .line 12
    aget-object v2, v2, p2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 21
    .line 22
    aget-object v1, v1, p2

    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 25
    .line 26
    aget-object p1, p1, p2

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method
