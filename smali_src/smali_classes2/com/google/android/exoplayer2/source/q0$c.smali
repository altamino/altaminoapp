.class final Lcom/google/android/exoplayer2/source/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/q0;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/q0;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$c;->this$0:Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 8
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/q0$c;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 3
    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$c;->this$0:Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/q0;->R(ILcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$c;->this$0:Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/q0;->D(I)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$c;->this$0:Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/q0;->L(I)V

    .line 8
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0$c;->this$0:Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/source/q0$c;->track:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/q0;->V(IJ)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
