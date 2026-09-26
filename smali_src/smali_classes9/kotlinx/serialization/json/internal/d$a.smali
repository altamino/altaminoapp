.class final Lkotlinx/serialization/json/internal/d$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/d;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lkotlinx/serialization/json/JsonElement;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/json/internal/d;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/d$a;->this$0:Lkotlinx/serialization/json/internal/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/json/JsonElement;)V
    .locals 2
    .param p1    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/d$a;->this$0:Lkotlinx/serialization/json/internal/d;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/serialization/json/internal/d;->h0(Lkotlinx/serialization/json/internal/d;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/internal/d;->w0(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 15
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/d$a;->a(Lkotlinx/serialization/json/JsonElement;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
