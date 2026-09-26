.class public final Ly9/c;
.super Lx9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/h<",
        "Ly9/a;",
        "Ly9/b;",
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
    check-cast p1, Ly9/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ly9/c;->h(Ly9/b;)Ly9/a;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Ly9/b;)Ly9/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ly9/a;

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
    invoke-direct {v0, v1, v2, v3}, Ly9/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {p1}, Ly9/b;->o()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ly9/a;->i(J)V
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
    invoke-interface {p1}, Ly9/b;->d()J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ly9/a;->h(J)V
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
    invoke-interface {p1}, Lx9/f;->e()Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lx9/e;->f(Ljava/util/List;)V
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
    invoke-interface {p1}, Ly9/b;->getDescription()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ly9/a;->g(Ljava/lang/String;)V
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
    invoke-interface {p1}, Ly9/b;->g()Z

    .line 69
    move-result p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ly9/a;->j(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 73
    goto :goto_4

    .line 74
    :catch_4
    move-exception p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lx9/h;->b(Ljava/lang/Exception;)V

    .line 78
    :goto_4
    return-object v0
.end method
