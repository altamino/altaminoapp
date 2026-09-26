.class final Lkotlinx/serialization/internal/g0$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/g0;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V
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

.field final synthetic this$0:Lkotlinx/serialization/internal/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/g0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/g0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/g0<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/g0$a;->this$0:Lkotlinx/serialization/internal/g0;

    iput-object p2, p0, Lkotlinx/serialization/internal/g0$a;->$serialName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/g0$a;->this$0:Lkotlinx/serialization/internal/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlinx/serialization/internal/g0;->b(Lkotlinx/serialization/internal/g0;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/internal/g0$a;->this$0:Lkotlinx/serialization/internal/g0;

    .line 11
    .line 12
    iget-object v1, p0, Lkotlinx/serialization/internal/g0$a;->$serialName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlinx/serialization/internal/g0;->a(Lkotlinx/serialization/internal/g0;Ljava/lang/String;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 16
    move-result-object v0

    .line 17
    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g0$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
