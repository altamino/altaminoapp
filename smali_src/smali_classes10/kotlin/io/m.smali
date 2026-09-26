.class Lkotlin/io/m;
.super Lkotlin/io/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/io/l;-><init>()V

    return-void
.end method

.method public static final m(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/io/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "direction"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lkotlin/io/h;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;)V

    .line 16
    return-object v0
.end method

.method public static final n(Ljava/io/File;)Lkotlin/io/h;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lkotlin/io/i;->BOTTOM_UP:Lkotlin/io/i;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/io/m;->m(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
