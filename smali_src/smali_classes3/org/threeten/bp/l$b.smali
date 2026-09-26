.class Lorg/threeten/bp/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/l;Lorg/threeten/bp/l;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/l;->w()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/threeten/bp/l;->w()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/threeten/bp/l;->p()I

    .line 18
    move-result p1

    .line 19
    int-to-long v0, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/threeten/bp/l;->p()I

    .line 23
    move-result p1

    .line 24
    int-to-long p1, p1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, p1, p2}, Lra/d;->b(JJ)I

    .line 28
    move-result v0

    .line 29
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/l;

    .line 3
    .line 4
    check-cast p2, Lorg/threeten/bp/l;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/l$b;->a(Lorg/threeten/bp/l;Lorg/threeten/bp/l;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
