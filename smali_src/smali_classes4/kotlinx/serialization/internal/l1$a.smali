.class final Lkotlinx/serialization/internal/l1$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/l1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
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

.field final synthetic this$0:Lkotlinx/serialization/internal/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/l1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/l1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/internal/l1<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/l1$a;->$serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/l1$a;->this$0:Lkotlinx/serialization/internal/l1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/l1$a;->$serialName:Ljava/lang/String;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/serialization/descriptors/j$d;->INSTANCE:Lkotlinx/serialization/descriptors/j$d;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    new-instance v3, Lkotlinx/serialization/internal/l1$a$a;

    .line 10
    .line 11
    iget-object v4, p0, Lkotlinx/serialization/internal/l1$a;->this$0:Lkotlinx/serialization/internal/l1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/l1$a$a;-><init>(Lkotlinx/serialization/internal/l1;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/l1$a;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
