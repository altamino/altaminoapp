.class public final Lcom/google/protobuf/ApiKt$Dsl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ApiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ApiKt$Dsl$Companion;,
        Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;,
        Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;,
        Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/ApiKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Api$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/ApiKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/ApiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/protobuf/ApiKt$Dsl;->Companion:Lcom/google/protobuf/ApiKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Api$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Api$Builder;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ApiKt$Dsl;-><init>(Lcom/google/protobuf/Api$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Api;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "_builder.build()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/google/protobuf/Api;

    .line 14
    return-object v0
.end method

.method public final synthetic addAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllMethods(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic addAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllMixins(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic addMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addMethods(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic addMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addMixins(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic clearMethods(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearMethods()Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final synthetic clearMixins(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearMixins()Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearName()Lcom/google/protobuf/Api$Builder;

    .line 6
    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearOptions()Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final clearSourceContext()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearSourceContext()Lcom/google/protobuf/Api$Builder;

    .line 6
    return-void
.end method

.method public final clearSyntax()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearSyntax()Lcom/google/protobuf/Api$Builder;

    .line 6
    return-void
.end method

.method public final clearVersion()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearVersion()Lcom/google/protobuf/Api$Builder;

    .line 6
    return-void
.end method

.method public final synthetic getMethods()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getMethodsList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "_builder.getMethodsList()"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 17
    return-object v0
.end method

.method public final synthetic getMixins()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getMixinsList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "_builder.getMixinsList()"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 17
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "_builder.getName()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getOptionsList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "_builder.getOptionsList()"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 17
    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "_builder.getSourceContext()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "_builder.getSyntax()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getVersion()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "_builder.getVersion()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->hasSourceContext()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 14
    return-void
.end method

.method public final synthetic plusAssignAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 14
    return-void
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 14
    return-void
.end method

.method public final synthetic plusAssignMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V

    .line 14
    return-void
.end method

.method public final synthetic plusAssignMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V

    .line 14
    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    .line 14
    return-void
.end method

.method public final synthetic setMethods(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Method;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final synthetic setMixins(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Mixin;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;

    .line 16
    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/SourceContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setVersion(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;

    .line 11
    return-void
.end method
