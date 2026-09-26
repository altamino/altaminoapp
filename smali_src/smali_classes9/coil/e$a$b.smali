.class final Lcoil/e$a$b;
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
        "Lcoil/disk/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/e$a;


# direct methods
.method constructor <init>(Lcoil/e$a;)V
    .locals 0

    iput-object p1, p0, Lcoil/e$a$b;->this$0:Lcoil/e$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcoil/disk/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcoil/util/r;->INSTANCE:Lcoil/util/r;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/e$a$b;->this$0:Lcoil/e$a;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcoil/e$a;->a(Lcoil/e$a;)Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcoil/util/r;->a(Landroid/content/Context;)Lcoil/disk/a;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/e$a$b;->b()Lcoil/disk/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
