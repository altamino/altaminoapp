.class final Lcom/google/android/exoplayer2/k1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/s2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private timeline:Lcom/google/android/exoplayer2/z3;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$e;->uid:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/k1$e;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 8
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/k1$e;Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/z3;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$e;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$e;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$e;->timeline:Lcom/google/android/exoplayer2/z3;

    return-object v0
.end method
