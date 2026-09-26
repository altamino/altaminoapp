.class public final Lio/ktor/http/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,308:1\n1549#2:309\n1620#2,3:310\n1549#2:313\n1620#2,3:314\n1549#2:317\n1620#2,3:318\n*S KotlinDebug\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilder\n*L\n58#1:309\n58#1:310,3\n61#1:313\n61#1:314,3\n63#1:317\n63#1:318,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/f0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final originUrl:Lio/ktor/http/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private encodedFragment:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private encodedParameters:Lio/ktor/http/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private encodedPassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private encodedUser:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parameters:Lio/ktor/http/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private port:I

.field private protocol:Lio/ktor/http/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trailingQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/f0$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/http/f0$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/http/f0;->Companion:Lio/ktor/http/f0$a;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/ktor/http/g0;->a(Lio/ktor/http/f0$a;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lio/ktor/http/n0;->c(Ljava/lang/String;)Lio/ktor/http/p0;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lio/ktor/http/f0;->originUrl:Lio/ktor/http/p0;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/ktor/http/f0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Lio/ktor/http/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lio/ktor/http/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/l0;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/ktor/http/z;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    iput-object p2, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    iput p3, p0, Lio/ktor/http/f0;->port:I

    iput-boolean p9, p0, Lio/ktor/http/f0;->trailingQuery:Z

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    .line 3
    invoke-static {p4, p2, p1, p3}, Lio/ktor/http/b;->m(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    iput-object p4, p0, Lio/ktor/http/f0;->encodedUser:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 4
    invoke-static {p5, p2, p1, p3}, Lio/ktor/http/b;->m(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lio/ktor/http/f0;->encodedPassword:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p8

    .line 5
    invoke-static/range {v0 .. v5}, Lio/ktor/http/b;->r(Ljava/lang/String;ZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/f0;->encodedFragment:Ljava/lang/String;

    .line 6
    check-cast p6, Ljava/lang/Iterable;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p6, p2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 9
    check-cast p3, Ljava/lang/String;

    .line 10
    invoke-static {p3}, Lio/ktor/http/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lio/ktor/http/f0;->encodedPathSegments:Ljava/util/List;

    .line 12
    invoke-static {p7}, Lio/ktor/http/r0;->e(Lio/ktor/util/t;)Lio/ktor/http/a0;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/http/f0;->encodedParameters:Lio/ktor/http/a0;

    .line 13
    new-instance p2, Lio/ktor/http/q0;

    invoke-direct {p2, p1}, Lio/ktor/http/q0;-><init>(Lio/ktor/http/a0;)V

    iput-object p2, p0, Lio/ktor/http/f0;->parameters:Lio/ktor/http/a0;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lio/ktor/http/l0;->Companion:Lio/ktor/http/l0$a;

    invoke-virtual {v1}, Lio/ktor/http/l0$a;->c()Lio/ktor/http/l0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 15
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 16
    sget-object v9, Lio/ktor/http/z;->Companion:Lio/ktor/http/z$a;

    invoke-virtual {v9}, Lio/ktor/http/z$a;->a()Lio/ktor/http/z;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v3, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v5, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move/from16 p10, v5

    .line 17
    invoke-direct/range {p1 .. p10}, Lio/ktor/http/f0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;Z)V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/ktor/http/l0;->d()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "file"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    :goto_0
    return-void

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lio/ktor/http/f0;->originUrl:Lio/ktor/http/p0;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lio/ktor/http/p0;->g()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    .line 35
    .line 36
    sget-object v2, Lio/ktor/http/l0;->Companion:Lio/ktor/http/l0$a;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lio/ktor/http/l0$a;->c()Lio/ktor/http/l0;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lio/ktor/http/p0;->k()Lio/ktor/http/l0;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iput-object v1, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    .line 53
    .line 54
    :cond_2
    iget v1, p0, Lio/ktor/http/f0;->port:I

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lio/ktor/http/p0;->l()I

    .line 60
    move-result v0

    .line 61
    .line 62
    iput v0, p0, Lio/ktor/http/f0;->port:I

    .line 63
    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1, v2, v0}, Lio/ktor/http/b;->m(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lio/ktor/http/f0;->encodedUser:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public final b()Lio/ktor/http/p0;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/http/f0;->a()V

    .line 4
    .line 5
    new-instance v11, Lio/ktor/http/p0;

    .line 6
    .line 7
    iget-object v1, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    .line 8
    .line 9
    iget-object v2, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    .line 10
    .line 11
    iget v3, p0, Lio/ktor/http/f0;->port:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lio/ktor/http/f0;->m()Ljava/util/List;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    iget-object v0, p0, Lio/ktor/http/f0;->parameters:Lio/ktor/http/a0;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lio/ktor/http/a0;->build()Lio/ktor/http/z;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lio/ktor/http/f0;->i()Ljava/lang/String;

    .line 25
    move-result-object v6

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/ktor/http/f0;->q()Ljava/lang/String;

    .line 29
    move-result-object v7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/ktor/http/f0;->l()Ljava/lang/String;

    .line 33
    move-result-object v8

    .line 34
    .line 35
    iget-boolean v9, p0, Lio/ktor/http/f0;->trailingQuery:Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lio/ktor/http/f0;->c()Ljava/lang/String;

    .line 39
    move-result-object v10

    .line 40
    move-object v0, v11

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v0 .. v10}, Lio/ktor/http/p0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/util/List;Lio/ktor/http/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 44
    return-object v11
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/http/f0;->a()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lio/ktor/http/h0;->a(Lio/ktor/http/f0;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "appendTo(StringBuilder(256)).toString()"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->encodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lio/ktor/http/a0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->encodedParameters:Lio/ktor/http/a0;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->encodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->encodedPathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->encodedUser:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/f0;->encodedFragment:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    .line 8
    const/16 v5, 0xf

    .line 9
    const/4 v6, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lio/ktor/http/b;->k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lio/ktor/http/a0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->parameters:Lio/ktor/http/a0;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/f0;->encodedPassword:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x7

    .line 9
    const/4 v5, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v5}, Lio/ktor/http/b;->i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/f0;->encodedPathSegments:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    move-object v3, v2

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x7

    .line 37
    const/4 v8, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v3 .. v8}, Lio/ktor/http/b;->i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/http/f0;->port:I

    return v0
.end method

.method public final o()Lio/ktor/http/l0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/http/f0;->trailingQuery:Z

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/http/f0;->encodedUser:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x7

    .line 9
    const/4 v5, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v5}, Lio/ktor/http/b;->i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/f0;->encodedFragment:Ljava/lang/String;

    return-void
.end method

.method public final s(Lio/ktor/http/a0;)V
    .locals 1
    .param p1    # Lio/ktor/http/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lio/ktor/http/f0;->encodedParameters:Lio/ktor/http/a0;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/http/q0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lio/ktor/http/q0;-><init>(Lio/ktor/http/a0;)V

    .line 13
    .line 14
    iput-object v0, p0, Lio/ktor/http/f0;->parameters:Lio/ktor/http/a0;

    .line 15
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/ktor/http/f0;->encodedPassword:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x100

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lio/ktor/http/h0;->a(Lio/ktor/http/f0;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "appendTo(StringBuilder(256)).toString()"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public final u(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/f0;->encodedPathSegments:Ljava/util/List;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/ktor/http/f0;->encodedUser:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/f0;->host:Ljava/lang/String;

    return-void
.end method

.method public final x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/ktor/http/f0;->port:I

    return-void
.end method

.method public final y(Lio/ktor/http/l0;)V
    .locals 1
    .param p1    # Lio/ktor/http/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/http/f0;->protocol:Lio/ktor/http/l0;

    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/ktor/http/f0;->trailingQuery:Z

    return-void
.end method
