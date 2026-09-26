.class final Lcom/google/android/exoplayer2/text/cea/e$c;
.super Lcom/google/android/exoplayer2/text/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private owner:Lcom/google/android/exoplayer2/decoder/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/h$a<",
            "Lcom/google/android/exoplayer2/text/cea/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/h$a<",
            "Lcom/google/android/exoplayer2/text/cea/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/o;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/e$c;->owner:Lcom/google/android/exoplayer2/decoder/h$a;

    .line 6
    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e$c;->owner:Lcom/google/android/exoplayer2/decoder/h$a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/h$a;->a(Lcom/google/android/exoplayer2/decoder/h;)V

    .line 6
    return-void
.end method
