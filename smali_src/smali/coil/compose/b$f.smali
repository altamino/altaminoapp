.class final Lcoil/compose/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/size/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b;->P(Lcoil/request/h;)Lcoil/request/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImagePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter$updateRequest$2$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,414:1\n54#2:415\n57#2:419\n50#3:416\n55#3:418\n106#4:417\n*S KotlinDebug\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter$updateRequest$2$1\n*L\n274#1:415\n274#1:419\n274#1:416\n274#1:418\n274#1:417\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/compose/b;


# direct methods
.method constructor <init>(Lcoil/compose/b;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/b$f;->this$0:Lcoil/compose/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/size/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b$f;->this$0:Lcoil/compose/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcoil/compose/b;->o(Lcoil/compose/b;)Lkotlinx/coroutines/flow/x;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcoil/compose/b$f$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcoil/compose/b$f$a;-><init>(Lkotlinx/coroutines/flow/g;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/i;->v(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
