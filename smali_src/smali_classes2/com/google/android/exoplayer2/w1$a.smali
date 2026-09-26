.class Lcom/google/android/exoplayer2/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/m3$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/w1;->n(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/w1;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/w1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$a;->this$0:Lcom/google/android/exoplayer2/w1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1$a;->this$0:Lcom/google/android/exoplayer2/w1;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/w1;->g(Lcom/google/android/exoplayer2/w1;Z)Z

    .line 7
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1$a;->this$0:Lcom/google/android/exoplayer2/w1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->h(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/util/p;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 11
    return-void
.end method
