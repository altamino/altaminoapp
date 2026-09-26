.class final Lcoil/decode/d$e;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/decode/d;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcoil/decode/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/decode/d;


# direct methods
.method constructor <init>(Lcoil/decode/d;)V
    .locals 0

    iput-object p1, p0, Lcoil/decode/d$e;->this$0:Lcoil/decode/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcoil/decode/g;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/decode/d$e;->this$0:Lcoil/decode/d;

    .line 3
    .line 4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcoil/decode/d;->b(Lcoil/decode/d;Landroid/graphics/BitmapFactory$Options;)Lcoil/decode/g;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/decode/d$e;->b()Lcoil/decode/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
