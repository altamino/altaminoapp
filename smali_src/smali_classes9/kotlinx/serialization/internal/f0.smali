.class public final Lkotlinx/serialization/internal/f0;
.super Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n+ 2 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n13#2:126\n158#3:127\n1785#4,3:128\n*S KotlinDebug\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n*L\n29#1:126\n47#1:127\n47#1:128,3\n*E\n"
.end annotation


# instance fields
.field private final elementDescriptors$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final kind:Lkotlinx/serialization/descriptors/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move v4, p2

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/k0;IILkotlin/jvm/internal/k;)V

    .line 15
    .line 16
    sget-object v0, Lkotlinx/serialization/descriptors/i$b;->INSTANCE:Lkotlinx/serialization/descriptors/i$b;

    .line 17
    .line 18
    iput-object v0, p0, Lkotlinx/serialization/internal/f0;->kind:Lkotlinx/serialization/descriptors/i;

    .line 19
    .line 20
    new-instance v0, Lkotlinx/serialization/internal/f0$a;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/serialization/internal/f0$a;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/f0;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lkotlinx/serialization/internal/f0;->elementDescriptors$delegate:Lw7/m;

    .line 30
    return-void
.end method

.method private final q()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/f0;->elementDescriptors$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    return-object v0
.end method


# virtual methods
.method public d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/serialization/internal/f0;->q()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    .line 15
    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    sget-object v3, Lkotlinx/serialization/descriptors/i$b;->INSTANCE:Lkotlinx/serialization/descriptors/i$b;

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    return v1

    .line 25
    .line 26
    .line 27
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    return v1

    .line 40
    .line 41
    .line 42
    :cond_4
    invoke-static {p0}, Lkotlinx/serialization/internal/q1;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlinx/serialization/internal/q1;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-nez p1, :cond_5

    .line 54
    return v1

    .line 55
    :cond_5
    return v0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/internal/f0;->kind:Lkotlinx/serialization/descriptors/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlinx/serialization/descriptors/g;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    mul-int/lit8 v2, v2, 0x1f

    .line 30
    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 37
    move-result v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :goto_1
    add-int/2addr v2, v3

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    add-int/2addr v0, v2

    .line 45
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/serialization/descriptors/g;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, ", "

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->h()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const/16 v3, 0x28

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, ")"

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    .line 34
    const/16 v7, 0x38

    .line 35
    const/4 v8, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v8}, Lkotlin/collections/t;->t0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
