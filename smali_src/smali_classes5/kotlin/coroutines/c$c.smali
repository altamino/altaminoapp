.class final Lkotlin/coroutines/c$c;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Lw7/l0;",
        "Lkotlin/coroutines/g$b;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lkotlin/coroutines/g;

.field final synthetic $index:Lkotlin/jvm/internal/n0;


# direct methods
.method constructor <init>([Lkotlin/coroutines/g;Lkotlin/jvm/internal/n0;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/c$c;->$elements:[Lkotlin/coroutines/g;

    iput-object p2, p0, Lkotlin/coroutines/c$c;->$index:Lkotlin/jvm/internal/n0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lw7/l0;Lkotlin/coroutines/g$b;)V
    .locals 3
    .param p1    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<anonymous parameter 0>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "element"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lkotlin/coroutines/c$c;->$elements:[Lkotlin/coroutines/g;

    .line 13
    .line 14
    iget-object v0, p0, Lkotlin/coroutines/c$c;->$index:Lkotlin/jvm/internal/n0;

    .line 15
    .line 16
    iget v1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 21
    .line 22
    aput-object p2, p1, v1

    .line 23
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/l0;

    .line 3
    .line 4
    check-cast p2, Lkotlin/coroutines/g$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/c$c;->a(Lw7/l0;Lkotlin/coroutines/g$b;)V

    .line 8
    .line 9
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 10
    return-object p1
.end method
