.class public final Lqa/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "-"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    .line 19
    if-le v0, v3, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/util/Locale;

    .line 22
    .line 23
    aget-object v1, p0, v4

    .line 24
    .line 25
    aget-object v2, p0, v5

    .line 26
    .line 27
    aget-object p0, p0, v3

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    array-length v0, p0

    .line 37
    .line 38
    if-le v0, v5, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/util/Locale;

    .line 41
    .line 42
    aget-object v1, p0, v4

    .line 43
    .line 44
    aget-object p0, p0, v5

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    array-length v0, p0

    .line 54
    .line 55
    if-ne v0, v5, :cond_5

    .line 56
    .line 57
    new-instance v0, Ljava/util/Locale;

    .line 58
    .line 59
    aget-object p0, p0, v4

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    .line 69
    :cond_2
    const-string v0, "_"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    array-length v0, p0

    .line 81
    .line 82
    if-le v0, v3, :cond_3

    .line 83
    .line 84
    new-instance v0, Ljava/util/Locale;

    .line 85
    .line 86
    aget-object v1, p0, v4

    .line 87
    .line 88
    aget-object v2, p0, v5

    .line 89
    .line 90
    aget-object p0, p0, v3

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_3
    array-length v0, p0

    .line 100
    .line 101
    if-le v0, v5, :cond_4

    .line 102
    .line 103
    new-instance v0, Ljava/util/Locale;

    .line 104
    .line 105
    aget-object v1, p0, v4

    .line 106
    .line 107
    aget-object p0, p0, v5

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_4
    array-length v0, p0

    .line 117
    .line 118
    if-ne v0, v5, :cond_5

    .line 119
    .line 120
    new-instance v0, Ljava/util/Locale;

    .line 121
    .line 122
    aget-object p0, p0, v4

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/b;->a()Ljava/util/Optional;

    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    .line 137
    :cond_6
    new-instance v0, Ljava/util/Locale;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method
