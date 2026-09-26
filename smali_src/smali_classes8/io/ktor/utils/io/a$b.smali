.class final Lio/ktor/utils/io/a$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/a;->a(Lkotlinx/coroutines/b2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/a;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/a;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/a$b;->this$0:Lio/ktor/utils/io/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/a$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/ktor/utils/io/a$b;->this$0:Lio/ktor/utils/io/a;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lio/ktor/utils/io/a;->z(Lio/ktor/utils/io/a;Lkotlinx/coroutines/b2;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/a$b;->this$0:Lio/ktor/utils/io/a;

    .line 3
    invoke-static {p1}, Lio/ktor/utils/io/s;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/a;->e(Ljava/lang/Throwable;)Z

    return-void
.end method
