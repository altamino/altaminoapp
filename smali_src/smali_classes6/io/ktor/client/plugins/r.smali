.class public final Lio/ktor/client/plugins/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOWED_FOR_REDIRECT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/ktor/http/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lio/ktor/http/t;

    .line 4
    .line 5
    sget-object v1, Lio/ktor/http/t;->Companion:Lio/ktor/http/t$a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lio/ktor/http/t$a;->a()Lio/ktor/http/t;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    aput-object v2, v0, v3

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lio/ktor/http/t$a;->b()Lio/ktor/http/t;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lio/ktor/client/plugins/r;->ALLOWED_FOR_REDIRECT:Ljava/util/Set;

    .line 26
    .line 27
    const-string v0, "io.ktor.client.plugins.HttpRedirect"

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Lio/ktor/client/plugins/r;->LOGGER:Lorg/slf4j/a;

    .line 34
    return-void
.end method

.method public static final synthetic a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/r;->ALLOWED_FOR_REDIRECT:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic b()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/r;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method public static final synthetic c(Lio/ktor/http/v;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/client/plugins/r;->d(Lio/ktor/http/v;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final d(Lio/ktor/http/v;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/http/v;->f0()I

    .line 4
    move-result p0

    .line 5
    .line 6
    sget-object v0, Lio/ktor/http/v;->Companion:Lio/ktor/http/v$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/ktor/http/v$a;->s()Lio/ktor/http/v;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lio/ktor/http/v;->f0()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lio/ktor/http/v$a;->k()Lio/ktor/http/v;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lio/ktor/http/v;->f0()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-ne p0, v1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Lio/ktor/http/v$a;->S()Lio/ktor/http/v;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lio/ktor/http/v;->f0()I

    .line 37
    move-result v1

    .line 38
    .line 39
    if-ne p0, v1, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v0}, Lio/ktor/http/v$a;->F()Lio/ktor/http/v;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lio/ktor/http/v;->f0()I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-ne p0, v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {v0}, Lio/ktor/http/v$a;->O()Lio/ktor/http/v;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lio/ktor/http/v;->f0()I

    .line 59
    move-result v0

    .line 60
    .line 61
    if-ne p0, v0, :cond_4

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v2, 0x0

    .line 64
    :goto_0
    return v2
.end method
