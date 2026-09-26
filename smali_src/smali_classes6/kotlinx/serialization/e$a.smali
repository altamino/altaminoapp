.class final Lkotlinx/serialization/e$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/e;-><init>(Lkotlin/reflect/KClass;)V
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

    iput-object p1, p0, Lkotlinx/serialization/e$a;->this$0:Lkotlinx/serialization/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/serialization/descriptors/d$a;->INSTANCE:Lkotlinx/serialization/descriptors/d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    .line 7
    new-instance v2, Lkotlinx/serialization/e$a$a;

    .line 8
    .line 9
    iget-object v3, p0, Lkotlinx/serialization/e$a;->this$0:Lkotlinx/serialization/e;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lkotlinx/serialization/e$a$a;-><init>(Lkotlinx/serialization/e;)V

    .line 13
    .line 14
    const-string v3, "kotlinx.serialization.Polymorphic"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lkotlinx/serialization/e$a;->this$0:Lkotlinx/serialization/e;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lkotlinx/serialization/e;->e()Lkotlin/reflect/KClass;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/b;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/e$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
