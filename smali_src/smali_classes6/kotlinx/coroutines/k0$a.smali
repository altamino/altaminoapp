.class public final Lkotlinx/coroutines/k0$a;
.super Lkotlin/coroutines/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/b<",
        "Lkotlin/coroutines/e;",
        "Lkotlinx/coroutines/k0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/coroutines/e;->Key:Lkotlin/coroutines/e$b;

    sget-object v1, Lkotlinx/coroutines/k0$a$a;->INSTANCE:Lkotlinx/coroutines/k0$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/g$c;Le8/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/k0$a;-><init>()V

    return-void
.end method
