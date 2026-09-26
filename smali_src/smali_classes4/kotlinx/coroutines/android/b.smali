.class public final synthetic Lkotlinx/coroutines/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/o;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/b;->a:Lkotlinx/coroutines/o;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/b;->a:Lkotlinx/coroutines/o;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->a(Lkotlinx/coroutines/o;J)V

    return-void
.end method
