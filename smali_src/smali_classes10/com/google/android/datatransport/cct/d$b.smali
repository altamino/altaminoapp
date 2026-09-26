.class final Lcom/google/android/datatransport/cct/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final code:I

.field final nextRequestMillis:J

.field final redirectUrl:Ljava/net/URL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/net/URL;J)V
    .locals 0
    .param p2    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/datatransport/cct/d$b;->code:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d$b;->redirectUrl:Ljava/net/URL;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/google/android/datatransport/cct/d$b;->nextRequestMillis:J

    .line 10
    return-void
.end method
