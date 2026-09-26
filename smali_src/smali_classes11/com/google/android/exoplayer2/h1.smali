.class public final synthetic Lcom/google/android/exoplayer2/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/a3;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/a3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->a:Lcom/google/android/exoplayer2/a3;

    iput p2, p0, Lcom/google/android/exoplayer2/h1;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->a:Lcom/google/android/exoplayer2/a3;

    iget v1, p0, Lcom/google/android/exoplayer2/h1;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/d3$d;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/k1;->l0(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method
