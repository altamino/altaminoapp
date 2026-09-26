.class Lk8/g;
.super Lk8/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk8/f;-><init>()V

    return-void
.end method

.method public static final d(CZ)Lk8/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    const/16 p1, 0x44

    .line 5
    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lk8/e;->DAYS:Lk8/e;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "Invalid or unsupported duration ISO non-time unit: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    .line 34
    :cond_1
    const/16 p1, 0x48

    .line 35
    .line 36
    if-ne p0, p1, :cond_2

    .line 37
    .line 38
    sget-object p0, Lk8/e;->HOURS:Lk8/e;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    const/16 p1, 0x4d

    .line 42
    .line 43
    if-ne p0, p1, :cond_3

    .line 44
    .line 45
    sget-object p0, Lk8/e;->MINUTES:Lk8/e;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    const/16 p1, 0x53

    .line 49
    .line 50
    if-ne p0, p1, :cond_4

    .line 51
    .line 52
    sget-object p0, Lk8/e;->SECONDS:Lk8/e;

    .line 53
    :goto_0
    return-object p0

    .line 54
    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v1, "Invalid duration ISO time unit: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method public static final e(Ljava/lang/String;)Lk8/e;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "shortName"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-eq v0, v1, :cond_5

    .line 14
    .line 15
    const/16 v1, 0x68

    .line 16
    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    .line 19
    const/16 v1, 0x6d

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0x73

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0xda6

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const/16 v1, 0xdc5

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    const/16 v1, 0xe9e

    .line 36
    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    const-string v0, "us"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    sget-object p0, Lk8/e;->MICROSECONDS:Lk8/e;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    const-string v0, "ns"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    sget-object p0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    const-string v0, "ms"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    sget-object p0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    const-string v0, "s"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    sget-object p0, Lk8/e;->SECONDS:Lk8/e;

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_3
    const-string v0, "m"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    sget-object p0, Lk8/e;->MINUTES:Lk8/e;

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_4
    const-string v0, "h"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    sget-object p0, Lk8/e;->HOURS:Lk8/e;

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_5
    const-string v0, "d"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    sget-object p0, Lk8/e;->DAYS:Lk8/e;

    .line 114
    :goto_0
    return-object p0

    .line 115
    .line 116
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    const-string v2, "Unknown duration unit short name: "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v0
.end method
