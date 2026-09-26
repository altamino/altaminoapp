.class final Lcoil/compose/b$d$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcoil/request/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/compose/b;


# direct methods
.method constructor <init>(Lcoil/compose/b;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/b$d$a;->this$0:Lcoil/compose/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcoil/request/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b$d$a;->this$0:Lcoil/compose/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/compose/b;->y()Lcoil/request/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/compose/b$d$a;->b()Lcoil/request/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
