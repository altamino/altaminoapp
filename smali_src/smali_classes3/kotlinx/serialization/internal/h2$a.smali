.class final Lkotlinx/serialization/internal/h2$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/h2;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $deserializer:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $previousValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/serialization/internal/h2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/h2<",
            "TTag;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/h2;Lkotlinx/serialization/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/h2<",
            "TTag;>;",
            "Lkotlinx/serialization/b<",
            "TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/h2$a;->this$0:Lkotlinx/serialization/internal/h2;

    iput-object p2, p0, Lkotlinx/serialization/internal/h2$a;->$deserializer:Lkotlinx/serialization/b;

    iput-object p3, p0, Lkotlinx/serialization/internal/h2$a;->$previousValue:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/h2$a;->this$0:Lkotlinx/serialization/internal/h2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/internal/h2;->D()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/internal/h2$a;->this$0:Lkotlinx/serialization/internal/h2;

    .line 11
    .line 12
    iget-object v1, p0, Lkotlinx/serialization/internal/h2$a;->$deserializer:Lkotlinx/serialization/b;

    .line 13
    .line 14
    iget-object v2, p0, Lkotlinx/serialization/internal/h2$a;->$previousValue:Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/h2;->I(Lkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/internal/h2$a;->this$0:Lkotlinx/serialization/internal/h2;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlinx/serialization/internal/h2;->g()Ljava/lang/Void;

    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method
