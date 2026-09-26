.class public final Lcoil/h$f;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/h;-><init>(Landroid/content/Context;Lcoil/request/b;Lw7/m;Lw7/m;Lw7/m;Lcoil/c$d;Lcoil/b;Lcoil/util/n;Lcoil/util/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 RealImageLoader.kt\ncoil/RealImageLoader\n*L\n1#1,110:1\n78#2:111\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/h;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/l0$b;Lcoil/h;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcoil/h$f;->this$0:Lcoil/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcoil/h$f;->this$0:Lcoil/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcoil/h;->m()Lcoil/util/q;

    .line 6
    return-void
.end method
