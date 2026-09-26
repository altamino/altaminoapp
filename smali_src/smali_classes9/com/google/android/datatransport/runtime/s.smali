.class final Lcom/google/android/datatransport/runtime/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf2/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final payloadEncoding:Lf2/b;

.field private final transformer:Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final transportContext:Lcom/google/android/datatransport/runtime/p;

.field private final transportInternal:Lcom/google/android/datatransport/runtime/t;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/p;Ljava/lang/String;Lf2/b;Lf2/e;Lcom/google/android/datatransport/runtime/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/p;",
            "Ljava/lang/String;",
            "Lf2/b;",
            "Lf2/e<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/runtime/t;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/s;->transportContext:Lcom/google/android/datatransport/runtime/p;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/s;->name:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/s;->payloadEncoding:Lf2/b;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/s;->transformer:Lf2/e;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/s;->transportInternal:Lcom/google/android/datatransport/runtime/t;

    .line 14
    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/s;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lf2/c;Lf2/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c<",
            "TT;>;",
            "Lf2/h;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/s;->transportInternal:Lcom/google/android/datatransport/runtime/t;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/datatransport/runtime/o;->a()Lcom/google/android/datatransport/runtime/o$a;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/s;->transportContext:Lcom/google/android/datatransport/runtime/p;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/o$a;->e(Lcom/google/android/datatransport/runtime/p;)Lcom/google/android/datatransport/runtime/o$a;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/o$a;->c(Lf2/c;)Lcom/google/android/datatransport/runtime/o$a;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/s;->name:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/o$a;->f(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/o$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/s;->transformer:Lf2/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/o$a;->d(Lf2/e;)Lcom/google/android/datatransport/runtime/o$a;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/s;->payloadEncoding:Lf2/b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/o$a;->b(Lf2/b;)Lcom/google/android/datatransport/runtime/o$a;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o$a;->a()Lcom/google/android/datatransport/runtime/o;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/t;->a(Lcom/google/android/datatransport/runtime/o;Lf2/h;)V

    .line 42
    return-void
.end method

.method public b(Lf2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/r;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/r;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/s;->a(Lf2/c;Lf2/h;)V

    .line 9
    return-void
.end method

.method d()Lcom/google/android/datatransport/runtime/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/s;->transportContext:Lcom/google/android/datatransport/runtime/p;

    return-object v0
.end method
