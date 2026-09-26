.class public Loa/m;
.super Lx9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/h<",
        "Loa/j;",
        "Loa/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx9/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "Loa/j;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lx9/h;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Loa/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Loa/m;->i(Loa/l;)Loa/j;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic d(Lx9/f;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Loa/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Loa/m;->h(Loa/l;)V

    .line 6
    return-void
.end method

.method public h(Loa/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Loa/m;->i(Loa/l;)Loa/j;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lx9/h;->c(Lx9/e;)V
    :try_end_0
    .catch Laa/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 13
    :catch_1
    :goto_0
    return-void
.end method

.method public i(Loa/l;)Loa/j;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Loa/l;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Loa/j;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lx9/h;->g()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lx9/f;->getUrl()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lx9/f;->getName()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Loa/l;->getStreamType()Loa/o;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Loa/j;-><init>(ILjava/lang/String;Ljava/lang/String;Loa/o;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-interface {p1}, Loa/l;->getDuration()J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Loa/j;->h(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_1
    invoke-interface {p1}, Loa/l;->c()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Loa/j;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    :try_start_2
    invoke-interface {p1}, Loa/l;->i()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Loa/j;->k(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    goto :goto_2

    .line 60
    :catch_2
    move-exception v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    :try_start_3
    invoke-interface {p1}, Loa/l;->j()Lorg/schabi/newpipe/extractor/localization/e;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Loa/j;->l(Lorg/schabi/newpipe/extractor/localization/e;)V
    :try_end_3
    .catch Laa/h; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    goto :goto_3

    .line 72
    :catch_3
    move-exception v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    :goto_3
    :try_start_4
    invoke-interface {p1}, Loa/l;->n()J

    .line 79
    move-result-wide v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Loa/j;->q(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 83
    goto :goto_4

    .line 84
    :catch_4
    move-exception v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 88
    .line 89
    .line 90
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lx9/f;->e()Ljava/util/List;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lx9/e;->f(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 95
    goto :goto_5

    .line 96
    :catch_5
    move-exception v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    :goto_5
    :try_start_6
    invoke-interface {p1}, Loa/l;->a()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Loa/j;->o(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 107
    goto :goto_6

    .line 108
    :catch_6
    move-exception v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 112
    .line 113
    .line 114
    :goto_6
    :try_start_7
    invoke-interface {p1}, Loa/l;->f()Ljava/util/List;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Loa/j;->m(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 119
    goto :goto_7

    .line 120
    :catch_7
    move-exception v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 124
    .line 125
    .line 126
    :goto_7
    :try_start_8
    invoke-interface {p1}, Loa/l;->b()Z

    .line 127
    move-result v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Loa/j;->p(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 131
    goto :goto_8

    .line 132
    :catch_8
    move-exception v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 136
    .line 137
    .line 138
    :goto_8
    :try_start_9
    invoke-interface {p1}, Loa/l;->m()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Loa/j;->i(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 143
    goto :goto_9

    .line 144
    :catch_9
    move-exception v1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 148
    .line 149
    .line 150
    :goto_9
    :try_start_a
    invoke-interface {p1}, Loa/l;->l()Z

    .line 151
    move-result p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Loa/j;->j(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 155
    goto :goto_a

    .line 156
    :catch_a
    move-exception p1

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 160
    :goto_a
    return-object v0

    .line 161
    .line 162
    :cond_0
    new-instance p1, Laa/e;

    .line 163
    .line 164
    const-string v0, "Found ad"

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, v0}, Laa/e;-><init>(Ljava/lang/String;)V

    .line 168
    throw p1
.end method
