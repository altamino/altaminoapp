.class final Lkotlinx/serialization/g$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/g;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $serialName:Ljava/lang/String;

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
.method constructor <init>(Ljava/lang/String;Lkotlinx/serialization/g;[Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/g<",
            "TT;>;[",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/g$a;->$serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/g$a;->this$0:Lkotlinx/serialization/g;

    iput-object p3, p0, Lkotlinx/serialization/g$a;->$subclassSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/g$a;->$serialName:Ljava/lang/String;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/serialization/descriptors/d$b;->INSTANCE:Lkotlinx/serialization/descriptors/d$b;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    new-instance v3, Lkotlinx/serialization/g$a$a;

    .line 10
    .line 11
    iget-object v4, p0, Lkotlinx/serialization/g$a;->this$0:Lkotlinx/serialization/g;

    .line 12
    .line 13
    iget-object v5, p0, Lkotlinx/serialization/g$a;->$subclassSerializers:[Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/g$a$a;-><init>(Lkotlinx/serialization/g;[Lkotlinx/serialization/KSerializer;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/g$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
