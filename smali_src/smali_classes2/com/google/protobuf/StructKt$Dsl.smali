.class public final Lcom/google/protobuf/StructKt$Dsl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StructKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/StructKt$Dsl$Companion;,
        Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/StructKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Struct$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/StructKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/StructKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/protobuf/StructKt$Dsl;->Companion:Lcom/google/protobuf/StructKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Struct$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Struct$Builder;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/StructKt$Dsl;-><init>(Lcom/google/protobuf/Struct$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Struct;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

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
    check-cast v0, Lcom/google/protobuf/Struct;

    .line 14
    return-object v0
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/DslMap;)V
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
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->clearFields()Lcom/google/protobuf/Struct$Builder;

    .line 11
    return-void
.end method

.method public final synthetic getFieldsMap()Lcom/google/protobuf/kotlin/DslMap;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Struct$Builder;->getFieldsMap()Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "_builder.getFieldsMap()"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    .line 17
    return-object v0
.end method

.method public final synthetic putAllFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
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
    const-string p1, "map"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/protobuf/Struct$Builder;

    .line 16
    return-void
.end method

.method public final putFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/kotlin/DslMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/protobuf/Value;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
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
    const-string p1, "key"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$Builder;

    .line 21
    return-void
.end method

.method public final synthetic removeFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
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
    const-string p1, "key"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$Builder;->removeFields(Ljava/lang/String;)Lcom/google/protobuf/Struct$Builder;

    .line 16
    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V
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
    const-string v0, "key"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/StructKt$Dsl;->putFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V

    .line 19
    return-void
.end method
