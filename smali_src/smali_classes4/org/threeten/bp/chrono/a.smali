.class abstract Lorg/threeten/bp/chrono/a;
.super Lorg/threeten/bp/chrono/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/b;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method abstract A(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/threeten/bp/chrono/d;->A(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/chrono/a$a;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance p1, Lorg/threeten/bp/b;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, " not valid for chronology "

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Lorg/threeten/bp/chrono/h;->j()Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :pswitch_0
    const/16 p3, 0x3e8

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 58
    move-result-wide p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->A(J)Lorg/threeten/bp/chrono/a;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    .line 65
    :pswitch_1
    const/16 p3, 0x64

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 69
    move-result-wide p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->A(J)Lorg/threeten/bp/chrono/a;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    .line 76
    :pswitch_2
    const/16 p3, 0xa

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 80
    move-result-wide p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->A(J)Lorg/threeten/bp/chrono/a;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->A(J)Lorg/threeten/bp/chrono/a;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    .line 92
    .line 93
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->z(J)Lorg/threeten/bp/chrono/a;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :pswitch_5
    const/4 p3, 0x7

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 100
    move-result-wide p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->y(J)Lorg/threeten/bp/chrono/a;

    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    .line 107
    .line 108
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/a;->y(J)Lorg/threeten/bp/chrono/a;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->c(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Lorg/threeten/bp/chrono/a;

    .line 125
    return-object p1

    .line 126
    nop

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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract y(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method

.method abstract z(J)Lorg/threeten/bp/chrono/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/a<",
            "TD;>;"
        }
    .end annotation
.end method
