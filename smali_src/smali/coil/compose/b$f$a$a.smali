.class public final Lcoil/compose/b$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b$f$a;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter$updateRequest$2$1\n*L\n1#1,222:1\n55#2:223\n56#2:225\n274#3:224\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/h;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/b$f$a$a;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lcoil/compose/b$f$a$a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcoil/compose/b$f$a$a$a;

    .line 8
    .line 9
    iget v1, v0, Lcoil/compose/b$f$a$a$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcoil/compose/b$f$a$a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/compose/b$f$a$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcoil/compose/b$f$a$a$a;-><init>(Lcoil/compose/b$f$a$a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lcoil/compose/b$f$a$a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/compose/b$f$a$a$a;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    iget-object p2, p0, Lcoil/compose/b$f$a$a;->$this_unsafeFlow:Lkotlinx/coroutines/flow/h;

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size;->m()J

    .line 60
    move-result-wide v4

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v5}, Lcoil/compose/c;->b(J)Lcoil/size/i;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iput v3, v0, Lcoil/compose/b$f$a$a$a;->label:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-ne p1, v1, :cond_3

    .line 75
    return-object v1

    .line 76
    .line 77
    :cond_3
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 78
    return-object p1
.end method
