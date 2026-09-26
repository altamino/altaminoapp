.class public final Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/HandlerContext;->scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
.end annotation


# instance fields
.field final synthetic $continuation$inlined:Lkotlinx/coroutines/o;

.field final synthetic this$0:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/o;Lkotlinx/coroutines/android/HandlerContext;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;->$continuation$inlined:Lkotlinx/coroutines/o;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;->$continuation$inlined:Lkotlinx/coroutines/o;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    .line 5
    .line 6
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/o;->V(Lkotlinx/coroutines/k0;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
