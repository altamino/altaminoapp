.class Lorg/threeten/bp/chrono/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/chrono/c<",
        "*>;>;"
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
.method public a(Lorg/threeten/bp/chrono/c;Lorg/threeten/bp/chrono/c;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->u()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/b;->u()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/threeten/bp/i;->G()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/threeten/bp/i;->G()J

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, p1, p2}, Lra/d;->b(JJ)I

    .line 42
    move-result v0

    .line 43
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/c;

    .line 3
    .line 4
    check-cast p2, Lorg/threeten/bp/chrono/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/c$a;->a(Lorg/threeten/bp/chrono/c;Lorg/threeten/bp/chrono/c;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
