.class final Lio/ktor/util/pipeline/a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/pipeline/a;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.util.pipeline.DebugPipelineContext"
    f = "DebugPipelineContext.kt"
    l = {
        0x50
    }
    m = "proceedLoop"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/util/pipeline/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/a<",
            "TTSubject;TTContext;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/a<",
            "TTSubject;TTContext;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/util/pipeline/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/pipeline/a$a;->this$0:Lio/ktor/util/pipeline/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lio/ktor/util/pipeline/a$a;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/util/pipeline/a$a;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/util/pipeline/a$a;->label:I

    iget-object p1, p0, Lio/ktor/util/pipeline/a$a;->this$0:Lio/ktor/util/pipeline/a;

    invoke-static {p1, p0}, Lio/ktor/util/pipeline/a;->f(Lio/ktor/util/pipeline/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
