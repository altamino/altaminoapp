.class final Lz7/c;
.super Lkotlin/collections/c;
.source "SourceFile"

# interfaces
.implements Lz7/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lkotlin/collections/c<",
        "TT;>;",
        "Lz7/a<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final entries:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .locals 1
    .param p1    # [Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "entries"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlin/collections/c;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 11
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lz7/d;

    .line 3
    .line 4
    iget-object v1, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lz7/d;-><init>([Ljava/lang/Enum;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Enum;)Z
    .locals 2
    .param p1    # Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/collections/l;->S([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Enum;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public c(I)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 3
    .line 4
    iget-object v1, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->b(II)V

    .line 9
    .line 10
    iget-object v0, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    return-object p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Enum;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lz7/c;->a(Ljava/lang/Enum;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public e(Ljava/lang/Enum;)I
    .locals 2
    .param p1    # Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/collections/l;->S([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Enum;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    :goto_0
    return v0
.end method

.method public f(Ljava/lang/Enum;)I
    .locals 1
    .param p1    # Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lz7/c;->indexOf(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz7/c;->c(I)Ljava/lang/Enum;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lz7/c;->entries:[Ljava/lang/Enum;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Enum;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lz7/c;->e(Ljava/lang/Enum;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Enum;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lz7/c;->f(Ljava/lang/Enum;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method
