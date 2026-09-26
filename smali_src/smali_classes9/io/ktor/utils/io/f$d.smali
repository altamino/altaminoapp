.class final Lio/ktor/utils/io/f$d;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/f;->u(ILkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $count:I

.field final synthetic this$0:Lio/ktor/utils/io/f;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/f;I)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/f$d;->this$0:Lio/ktor/utils/io/f;

    iput p2, p0, Lio/ktor/utils/io/f$d;->$count:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f$d;->this$0:Lio/ktor/utils/io/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->C()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lio/ktor/utils/io/f$d;->$count:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/utils/io/f$d;->this$0:Lio/ktor/utils/io/f;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->D()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/f$d;->b()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
