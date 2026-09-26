.class final Lkotlinx/serialization/g$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/g$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;
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
.field final synthetic $subclassSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/serialization/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/g;[Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/g<",
            "TT;>;[",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/g$a$a;->this$0:Lkotlinx/serialization/g;

    iput-object p2, p0, Lkotlinx/serialization/g$a$a;->$subclassSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/a;)V
    .locals 12
    .param p1    # Lkotlinx/serialization/descriptors/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$buildSerialDescriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v2, "type"

    .line 8
    .line 9
    sget-object v0, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lm8/a;->C(Lkotlin/jvm/internal/u0;)Lkotlinx/serialization/KSerializer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    const/16 v6, 0xc

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v1, "kotlinx.serialization.Sealed<"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v1, p0, Lkotlinx/serialization/g$a$a;->this$0:Lkotlinx/serialization/g;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lkotlinx/serialization/g;->e()Lkotlin/reflect/KClass;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const/16 v1, 0x3e

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    sget-object v1, Lkotlinx/serialization/descriptors/i$a;->INSTANCE:Lkotlinx/serialization/descriptors/i$a;

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 64
    .line 65
    new-instance v3, Lkotlinx/serialization/g$a$a$a;

    .line 66
    .line 67
    iget-object v4, p0, Lkotlinx/serialization/g$a$a;->$subclassSerializers:[Lkotlinx/serialization/KSerializer;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lkotlinx/serialization/g$a$a$a;-><init>([Lkotlinx/serialization/KSerializer;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    const-string v6, "value"

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    .line 80
    const/16 v10, 0xc

    .line 81
    const/4 v11, 0x0

    .line 82
    move-object v5, p1

    .line 83
    .line 84
    .line 85
    invoke-static/range {v5 .. v11}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    .line 86
    .line 87
    iget-object v0, p0, Lkotlinx/serialization/g$a$a;->this$0:Lkotlinx/serialization/g;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lkotlinx/serialization/g;->f(Lkotlinx/serialization/g;)Ljava/util/List;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lkotlinx/serialization/descriptors/a;->h(Ljava/util/List;)V

    .line 95
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
    invoke-virtual {p0, p1}, Lkotlinx/serialization/g$a$a;->a(Lkotlinx/serialization/descriptors/a;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
