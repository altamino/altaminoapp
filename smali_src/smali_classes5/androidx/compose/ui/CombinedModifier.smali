.class public final Landroidx/compose/ui/CombinedModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Modifier;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final inner:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final outer:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inner"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 18
    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 2
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/Modifier$Element;",
            "-TR;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "operation"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/Modifier;->V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/Modifier;->V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 2
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Landroidx/compose/ui/Modifier$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "operation"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/Modifier;->a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/Modifier;->a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public d0(Le8/l;)Z
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/Modifier$Element;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "predicate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/ui/Modifier;->d0(Le8/l;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroidx/compose/ui/Modifier;->d0(Le8/l;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/ui/CombinedModifier;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/CombinedModifier;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->outer:Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/CombinedModifier;->inner:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x5b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    sget-object v2, Landroidx/compose/ui/CombinedModifier$toString$1;->INSTANCE:Landroidx/compose/ui/CombinedModifier$toString$1;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/CombinedModifier;->a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/16 v1, 0x5d

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
