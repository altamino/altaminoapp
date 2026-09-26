.class public final Lcom/google/android/exoplayer2/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/p3;


# instance fields
.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/p3;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/p3;-><init>(Z)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/p3;->DEFAULT:Lcom/google/android/exoplayer2/p3;

    .line 9
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p3;->tunneling:Z

    .line 6
    return-void
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
    const-class v3, Lcom/google/android/exoplayer2/p3;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/p3;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/p3;->tunneling:Z

    .line 21
    .line 22
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/p3;->tunneling:Z

    .line 23
    .line 24
    if-ne v2, p1, :cond_2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v0, v1

    .line 27
    :goto_0
    return v0

    .line 28
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/p3;->tunneling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
