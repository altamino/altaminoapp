.class public final Lm7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateJvm.kt\nio/ktor/util/date/DateJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation


# static fields
.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "GMT"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lm7/a;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 9
    return-void
.end method

.method public static final a(Ljava/lang/Long;)Lm7/b;
    .locals 2
    .param p0    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lm7/a;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 3
    .line 4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, Lm7/a;->c(Ljava/util/Calendar;Ljava/lang/Long;)Lm7/b;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Long;ILjava/lang/Object;)Lm7/b;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lm7/a;->a(Ljava/lang/Long;)Lm7/b;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Ljava/util/Calendar;Ljava/lang/Long;)Lm7/b;
    .locals 13
    .param p0    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    .line 16
    :cond_0
    const/16 p1, 0xf

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 20
    move-result p1

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 26
    move-result v0

    .line 27
    add-int/2addr p1, v0

    .line 28
    .line 29
    const/16 v0, 0xd

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    const/16 v0, 0xc

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 39
    move-result v3

    .line 40
    .line 41
    const/16 v0, 0xb

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 45
    move-result v4

    .line 46
    const/4 v0, 0x7

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 50
    move-result v1

    .line 51
    const/4 v5, 0x5

    .line 52
    add-int/2addr v1, v5

    .line 53
    rem-int/2addr v1, v0

    .line 54
    .line 55
    sget-object v0, Lm7/d;->Companion:Lm7/d$a;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lm7/d$a;->a(I)Lm7/d;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 63
    move-result v6

    .line 64
    const/4 v1, 0x6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 68
    move-result v7

    .line 69
    .line 70
    sget-object v1, Lm7/c;->Companion:Lm7/c$a;

    .line 71
    const/4 v5, 0x2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 75
    move-result v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5}, Lm7/c$a;->a(I)Lm7/c;

    .line 79
    move-result-object v8

    .line 80
    const/4 v1, 0x1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 84
    move-result v9

    .line 85
    .line 86
    new-instance v12, Lm7/b;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 90
    move-result-wide v10

    .line 91
    int-to-long p0, p1

    .line 92
    add-long/2addr v10, p0

    .line 93
    move-object v1, v12

    .line 94
    move-object v5, v0

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v1 .. v11}, Lm7/b;-><init>(IIILm7/d;IILm7/c;IJ)V

    .line 98
    return-object v12
.end method
