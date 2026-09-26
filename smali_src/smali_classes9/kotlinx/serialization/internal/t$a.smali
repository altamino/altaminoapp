.class public final Lkotlinx/serialization/internal/t$a;
.super Ljava/lang/ClassValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/t;->c()Lkotlinx/serialization/internal/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ClassValue<",
        "Lkotlinx/serialization/internal/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/internal/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/serialization/internal/t$a;->this$0:Lkotlinx/serialization/internal/t;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlinx/serialization/internal/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "type"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlinx/serialization/internal/m;

    .line 8
    .line 9
    iget-object v1, p0, Lkotlinx/serialization/internal/t$a;->this$0:Lkotlinx/serialization/internal/t;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlinx/serialization/internal/t;->b(Lkotlinx/serialization/internal/t;)Le8/l;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ld8/a;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/m;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/t$a;->a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
