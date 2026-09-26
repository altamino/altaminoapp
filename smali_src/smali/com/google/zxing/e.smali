.class public final Lcom/google/zxing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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
    sget-object v0, Lcom/google/zxing/e$a;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string p3, "No encoder available for format "

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    .line 29
    :pswitch_0
    new-instance v0, Lf5/a;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lf5/a;-><init>()V

    .line 33
    :goto_0
    move-object v1, v0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :pswitch_1
    new-instance v0, Li5/a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Li5/a;-><init>()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/b;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/zxing/oned/b;-><init>()V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :pswitch_3
    new-instance v0, Lj5/a;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Lj5/a;-><init>()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/m;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Lcom/google/zxing/oned/m;-><init>()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/d;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Lcom/google/zxing/oned/d;-><init>()V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/h;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Lcom/google/zxing/oned/h;-><init>()V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/f;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Lcom/google/zxing/oned/f;-><init>()V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :pswitch_8
    new-instance v0, Lk5/a;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0}, Lk5/a;-><init>()V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :pswitch_9
    new-instance v0, Lcom/google/zxing/oned/p;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lcom/google/zxing/oned/p;-><init>()V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :pswitch_a
    new-instance v0, Lcom/google/zxing/oned/j;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Lcom/google/zxing/oned/j;-><init>()V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :pswitch_b
    new-instance v0, Lcom/google/zxing/oned/w;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0}, Lcom/google/zxing/oned/w;-><init>()V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :pswitch_c
    new-instance v0, Lcom/google/zxing/oned/k;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Lcom/google/zxing/oned/k;-><init>()V

    .line 106
    goto :goto_0

    .line 107
    :goto_1
    move-object v2, p1

    .line 108
    move-object v3, p2

    .line 109
    move v4, p3

    .line 110
    move v5, p4

    .line 111
    move-object v6, p5

    .line 112
    .line 113
    .line 114
    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/g;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;

    .line 115
    move-result-object p1

    .line 116
    return-object p1

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
