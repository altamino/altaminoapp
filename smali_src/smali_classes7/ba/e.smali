.class public Lba/e;
.super Lx9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/h<",
        "Lba/b;",
        "Lba/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lx9/h;-><init>(I)V

    .line 4
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
    check-cast p1, Lba/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lba/e;->h(Lba/d;)Lba/b;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lba/d;)Lba/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lba/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/h;->g()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lx9/f;->getUrl()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lx9/f;->getName()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lba/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {p1}, Lba/d;->c()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lba/b;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lba/d;->a()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lba/b;->k(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lba/d;->b()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lba/b;->l(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    goto :goto_2

    .line 50
    :catch_2
    move-exception v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lx9/f;->e()Ljava/util/List;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lx9/e;->f(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    goto :goto_3

    .line 62
    :catch_3
    move-exception v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lba/d;->d()J

    .line 69
    move-result-wide v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lba/b;->i(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 73
    goto :goto_4

    .line 74
    :catch_4
    move-exception v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 78
    .line 79
    .line 80
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lba/d;->getDescription()Loa/e;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lba/b;->g(Loa/e;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 85
    goto :goto_5

    .line 86
    :catch_5
    move-exception v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lba/d;->h()Lba/a;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lba/b;->h(Lba/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 97
    goto :goto_6

    .line 98
    :catch_6
    move-exception p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 102
    :goto_6
    return-object v0
.end method
