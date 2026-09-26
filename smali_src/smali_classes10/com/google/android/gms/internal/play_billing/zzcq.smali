.class final Lcom/google/android/gms/internal/play_billing/zzcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcx;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcx;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    const/4 v1, 0x3

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Double;

    .line 28
    .line 29
    check-cast p2, Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    .line 38
    :cond_1
    check-cast p1, Ljava/lang/Long;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    check-cast p2, Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 53
    move-result p1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    check-cast p2, Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 67
    move-result p1

    .line 68
    :goto_0
    return p1
.end method
