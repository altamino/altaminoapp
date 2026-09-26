.class public final Lcom/google/protobuf/Int64ValueKt$Dsl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int64ValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Int64ValueKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/Int64ValueKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Int64Value$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/Int64ValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/Int64ValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/protobuf/Int64ValueKt$Dsl;->Companion:Lcom/google/protobuf/Int64ValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Int64Value$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/Int64ValueKt$Dsl;->_builder:Lcom/google/protobuf/Int64Value$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Int64Value$Builder;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int64ValueKt$Dsl;-><init>(Lcom/google/protobuf/Int64Value$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Int64Value;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Int64ValueKt$Dsl;->_builder:Lcom/google/protobuf/Int64Value$Builder;

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
    check-cast v0, Lcom/google/protobuf/Int64Value;

    .line 14
    return-object v0
.end method

.method public final clearValue()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Int64ValueKt$Dsl;->_builder:Lcom/google/protobuf/Int64Value$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value$Builder;->clearValue()Lcom/google/protobuf/Int64Value$Builder;

    .line 6
    return-void
.end method

.method public final getValue()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Int64ValueKt$Dsl;->_builder:Lcom/google/protobuf/Int64Value$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value$Builder;->getValue()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final setValue(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Int64ValueKt$Dsl;->_builder:Lcom/google/protobuf/Int64Value$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->setValue(J)Lcom/google/protobuf/Int64Value$Builder;

    .line 6
    return-void
.end method
