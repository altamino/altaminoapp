.class final Lio/ktor/utils/io/a$j;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/a;->M0(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.utils.io.ByteBufferChannel"
    f = "ByteBufferChannel.kt"
    l = {
        0x459,
        0x45b
    }
    m = "writeFullySuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/utils/io/a;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/a$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/utils/io/a$j;->this$0:Lio/ktor/utils/io/a;

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

    iput-object p1, p0, Lio/ktor/utils/io/a$j;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/a$j;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/a$j;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/a$j;->this$0:Lio/ktor/utils/io/a;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/utils/io/a;->B(Lio/ktor/utils/io/a;Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
