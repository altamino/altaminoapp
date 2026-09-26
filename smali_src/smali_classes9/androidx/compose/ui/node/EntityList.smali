.class public final Landroidx/compose/ui/node/EntityList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/EntityList$EntityType;,
        Landroidx/compose/ui/node/EntityList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEntityList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityList.kt\nandroidx/compose/ui/node/EntityList\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,156:1\n108#1:157\n109#1,6:159\n115#1:166\n130#1,7:169\n13536#2:158\n13537#2:165\n13536#2,2:167\n*S KotlinDebug\n*F\n+ 1 EntityList.kt\nandroidx/compose/ui/node/EntityList\n*L\n94#1:157\n94#1:159,6\n94#1:166\n124#1:169,7\n94#1:158\n94#1:165\n108#1:167,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/EntityList$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DrawEntityType:I

.field private static final OnPlacedEntityType:I

.field private static final ParentDataEntityType:I

.field private static final PointerInputEntityType:I

.field private static final RemeasureEntityType:I

.field private static final SemanticsEntityType:I

.field private static final TypeCount:I = 0x6


# instance fields
.field private final entities:[Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/node/EntityList$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/EntityList$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    .line 37
    const/4 v0, 0x4

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    .line 44
    const/4 v0, 0x5

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->a(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    .line 51
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    return v0
.end method

.method private static final g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;*>;>([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    aget-object v0, p0, p2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->i(Landroidx/compose/ui/node/LayoutNodeEntity;)V

    .line 6
    .line 7
    aput-object p1, p0, p2

    .line 8
    return-void
.end method

.method public static final h([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/Modifier;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutNodeWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p2, Landroidx/compose/ui/layout/OnPlacedModifier;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 20
    .line 21
    sget v1, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 25
    .line 26
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 34
    .line 35
    sget p1, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 39
    :cond_1
    return-void
.end method

.method public static final i([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/Modifier;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutNodeWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p2, Landroidx/compose/ui/draw/DrawModifier;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/node/DrawEntity;

    .line 17
    move-object v1, p2

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/draw/DrawModifier;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/node/DrawEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V

    .line 23
    .line 24
    sget v1, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 28
    .line 29
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 34
    move-object v1, p2

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/node/PointerInputEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/pointer/PointerInputModifier;)V

    .line 40
    .line 41
    sget v1, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 45
    .line 46
    :cond_1
    instance-of v0, p2, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 51
    move-object v1, p2

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/semantics/SemanticsEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/semantics/SemanticsModifier;)V

    .line 57
    .line 58
    sget v1, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 62
    .line 63
    :cond_2
    instance-of v0, p2, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 71
    .line 72
    sget p1, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/node/EntityList;->g([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 76
    :cond_3
    return-void
.end method

.method public static final j([Landroidx/compose/ui/node/LayoutNodeEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget-object v3, p0, v2

    .line 8
    .line 9
    :goto_1
    if-eqz v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->f()Z

    .line 13
    move-result v4

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->h()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 22
    move-result-object v3

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    array-length v0, p0

    .line 28
    .line 29
    :goto_2
    if-ge v1, v0, :cond_3

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    aput-object v2, p0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    return-void
.end method

.method public static k([Landroidx/compose/ui/node/LayoutNodeEntity;)[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .param p0    # [Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "entities"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic l([Landroidx/compose/ui/node/LayoutNodeEntity;ILkotlin/jvm/internal/k;)[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p0, 0x6

    .line 6
    .line 7
    new-array p0, p0, [Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/EntityList;->k([Landroidx/compose/ui/node/LayoutNodeEntity;)[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static m([Landroidx/compose/ui/node/LayoutNodeEntity;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/node/EntityList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/node/EntityList;

    invoke-virtual {p1}, Landroidx/compose/ui/node/EntityList;->r()[Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final n([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    aget-object p0, p0, p1

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static o([Landroidx/compose/ui/node/LayoutNodeEntity;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;M::",
            "Landroidx/compose/ui/Modifier;",
            ">([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    aget-object p0, p0, p1

    .line 3
    return-object p0
.end method

.method public static q([Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityList(entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    invoke-static {v0, p1}, Landroidx/compose/ui/node/EntityList;->m([Landroidx/compose/ui/node/LayoutNodeEntity;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    invoke-static {v0}, Landroidx/compose/ui/node/EntityList;->o([Landroidx/compose/ui/node/LayoutNodeEntity;)I

    move-result v0

    return v0
.end method

.method public final synthetic r()[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    invoke-static {v0}, Landroidx/compose/ui/node/EntityList;->q([Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
