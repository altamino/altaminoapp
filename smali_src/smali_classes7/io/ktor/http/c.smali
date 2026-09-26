.class public final Lio/ktor/http/c;
.super Lio/ktor/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/c$a;,
        Lio/ktor/http/c$b;,
        Lio/ktor/http/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1#2:319\n1747#3,3:320\n1747#3,3:323\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType\n*L\n44#1:320,3\n72#1:323,3\n*E\n"
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lio/ktor/http/c$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final contentSubtype:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/c$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/http/c$b;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/http/c;->Companion:Lio/ktor/http/c$b;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/http/c;

    .line 11
    .line 12
    const-string v3, "*"

    .line 13
    .line 14
    const-string v4, "*"

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v2 .. v7}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    sput-object v0, Lio/ktor/http/c;->Any:Lio/ktor/http/c;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/http/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lio/ktor/http/i;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/http/c;->contentSubtype:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/ktor/http/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentSubtype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 2
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object p3

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic d()Lio/ktor/http/c;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/c;->Any:Lio/ktor/http/c;

    return-object v0
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Iterable;

    .line 21
    .line 22
    instance-of v3, v0, Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    move-object v3, v0

    .line 26
    .line 27
    check-cast v3, Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Lio/ktor/http/h;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lio/ktor/http/h;->a()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-static {v4, p1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lio/ktor/http/h;->b()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    invoke-static {v3, p2, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    :goto_0
    move v1, v2

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Lio/ktor/http/h;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lio/ktor/http/h;->a()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-static {v3, p1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lio/ktor/http/h;->b()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p2, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/http/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lio/ktor/http/c;

    .line 9
    .line 10
    iget-object v1, p1, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/ktor/http/c;->contentSubtype:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p1, Lio/ktor/http/c;->contentSubtype:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/c;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lio/ktor/http/c;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lio/ktor/http/c;

    .line 20
    .line 21
    iget-object v1, p0, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lio/ktor/http/c;->contentSubtype:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/ktor/http/i;->a()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Ljava/util/Collection;

    .line 34
    .line 35
    new-instance v5, Lio/ktor/http/h;

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, p1, p2}, Lio/ktor/http/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/collections/t;->E0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v3, p1}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 46
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/c;->contentType:Ljava/lang/String;

    .line 3
    .line 4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v0

    .line 18
    .line 19
    mul-int/lit8 v3, v0, 0x1f

    .line 20
    .line 21
    iget-object v4, p0, Lio/ktor/http/c;->contentSubtype:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v3, v1

    .line 34
    add-int/2addr v0, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/ktor/http/i;->b()Ljava/util/List;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 42
    move-result v1

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 45
    add-int/2addr v0, v1

    .line 46
    return v0
.end method
