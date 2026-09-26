.class final Lcoil/e$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/e$a;->b()Lcoil/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcoil/memory/MemoryCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/e$a;


# direct methods
.method constructor <init>(Lcoil/e$a;)V
    .locals 0

    iput-object p1, p0, Lcoil/e$a$a;->this$0:Lcoil/e$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcoil/memory/MemoryCache;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcoil/memory/MemoryCache$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/e$a$a;->this$0:Lcoil/e$a;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcoil/e$a;->a(Lcoil/e$a;)Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcoil/memory/MemoryCache$a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcoil/memory/MemoryCache$a;->a()Lcoil/memory/MemoryCache;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/e$a$a;->b()Lcoil/memory/MemoryCache;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
