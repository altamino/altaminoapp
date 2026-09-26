.class public final Landroidx/compose/foundation/layout/HorizontalAlignModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/ParentDataModifier;


# instance fields
.field private final horizontal:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Horizontal;Le8/l;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "horizontal"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inspectorInfo"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 16
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

.method public bridge synthetic Q(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->a(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 6
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of p1, p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    new-instance p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x7

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, p2

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnParentData;-><init>(FZLandroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    :cond_1
    sget-object p1, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->b(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/RowColumnParentData;->d(Landroidx/compose/foundation/layout/CrossAxisAlignment;)V

    .line 38
    return-object p2
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/HorizontalAlignModifier;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/layout/HorizontalAlignModifier;

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez p1, :cond_2

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
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
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "HorizontalAlignModifier(horizontal="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/layout/HorizontalAlignModifier;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
