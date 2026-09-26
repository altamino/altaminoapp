.class Lcom/google/android/exoplayer2/text/cea/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public start:I

.field public final style:I

.field public final underline:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a$a;->style:I

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/cea/a$a$a;->underline:Z

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/a$a$a;->start:I

    .line 10
    return-void
.end method
