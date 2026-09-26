.class final Lcoil/size/l$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/size/l$a;->h(Lcoil/size/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
.field final synthetic $preDrawListener:Lcoil/size/l$a$b;

.field final synthetic $viewTreeObserver:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Lcoil/size/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil/size/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcoil/size/l;Landroid/view/ViewTreeObserver;Lcoil/size/l$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/l<",
            "TT;>;",
            "Landroid/view/ViewTreeObserver;",
            "Lcoil/size/l$a$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/size/l$a$a;->this$0:Lcoil/size/l;

    iput-object p2, p0, Lcoil/size/l$a$a;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcoil/size/l$a$a;->$preDrawListener:Lcoil/size/l$a$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcoil/size/l$a$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcoil/size/l$a$a;->this$0:Lcoil/size/l;

    iget-object v0, p0, Lcoil/size/l$a$a;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcoil/size/l$a$a;->$preDrawListener:Lcoil/size/l$a$b;

    .line 2
    invoke-static {p1, v0, v1}, Lcoil/size/l$a;->b(Lcoil/size/l;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
