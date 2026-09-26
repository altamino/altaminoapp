.class public final Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UInt32ValueKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/UInt32Value$Builder;)Lcom/google/protobuf/UInt32ValueKt$Dsl;
    .locals 2

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/google/protobuf/UInt32ValueKt$Dsl;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/UInt32ValueKt$Dsl;-><init>(Lcom/google/protobuf/UInt32Value$Builder;Lkotlin/jvm/internal/k;)V

    .line 12
    return-object v0
.end method
