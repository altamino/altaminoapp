.class final Lkotlinx/serialization/e$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/e$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lkotlinx/serialization/descriptors/a;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/e<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/e$a$a;->this$0:Lkotlinx/serialization/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/a;)V
    .locals 15
    .param p1    # Lkotlinx/serialization/descriptors/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v1, "$this$buildSerialDescriptor"

    .line 6
    .line 7
    .line 8
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    const-string v2, "type"

    .line 11
    .line 12
    sget-object v1, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lm8/a;->C(Lkotlin/jvm/internal/u0;)Lkotlinx/serialization/KSerializer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    const/16 v6, 0xc

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 31
    .line 32
    const-string v2, "value"

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v3, "kotlinx.serialization.Polymorphic<"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget-object v3, v0, Lkotlinx/serialization/e$a$a;->this$0:Lkotlinx/serialization/e;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lkotlinx/serialization/e;->e()Lkotlin/reflect/KClass;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const/16 v3, 0x3e

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v9

    .line 65
    .line 66
    sget-object v10, Lkotlinx/serialization/descriptors/i$a;->INSTANCE:Lkotlinx/serialization/descriptors/i$a;

    .line 67
    const/4 v1, 0x0

    .line 68
    .line 69
    new-array v11, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 70
    const/4 v12, 0x0

    .line 71
    .line 72
    const/16 v13, 0x8

    .line 73
    const/4 v14, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static/range {v9 .. v14}, Lkotlinx/serialization/descriptors/h;->d(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    move-object/from16 v1, p1

    .line 80
    .line 81
    .line 82
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 83
    .line 84
    iget-object v1, v0, Lkotlinx/serialization/e$a$a;->this$0:Lkotlinx/serialization/e;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lkotlinx/serialization/e;->f(Lkotlinx/serialization/e;)Ljava/util/List;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v1}, Lkotlinx/serialization/descriptors/a;->h(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/e$a$a;->a(Lkotlinx/serialization/descriptors/a;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
