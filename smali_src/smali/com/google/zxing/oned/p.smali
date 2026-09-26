.class public final Lcom/google/zxing/oned/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# instance fields
.field private final subWriter:Lcom/google/zxing/oned/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/zxing/oned/j;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/zxing/oned/j;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/zxing/oned/p;->subWriter:Lcom/google/zxing/oned/j;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lg5/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/a;->UPC_A:Lcom/google/zxing/a;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/zxing/oned/p;->subWriter:Lcom/google/zxing/oned/j;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "0"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    sget-object v3, Lcom/google/zxing/a;->EAN_13:Lcom/google/zxing/a;

    .line 19
    move v4, p3

    .line 20
    move v5, p4

    .line 21
    move-object v6, p5

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/oned/j;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    const-string p3, "Can only encode UPC-A, but got "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method
