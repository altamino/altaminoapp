.class public final Lcoil/size/l$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/size/l$a;->h(Lcoil/size/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "Lcoil/size/i;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewTreeObserver:Landroid/view/ViewTreeObserver;

.field private isResumed:Z

.field final synthetic this$0:Lcoil/size/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil/size/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcoil/size/l;Landroid/view/ViewTreeObserver;Lkotlinx/coroutines/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/l<",
            "TT;>;",
            "Landroid/view/ViewTreeObserver;",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lcoil/size/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/size/l$a$b;->this$0:Lcoil/size/l;

    .line 3
    .line 4
    iput-object p2, p0, Lcoil/size/l$a$b;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    iput-object p3, p0, Lcoil/size/l$a$b;->$continuation:Lkotlinx/coroutines/o;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/size/l$a$b;->this$0:Lcoil/size/l;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcoil/size/l$a;->a(Lcoil/size/l;)Lcoil/size/i;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcoil/size/l$a$b;->this$0:Lcoil/size/l;

    .line 12
    .line 13
    iget-object v3, p0, Lcoil/size/l$a$b;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3, p0}, Lcoil/size/l$a;->b(Lcoil/size/l;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 17
    .line 18
    iget-boolean v2, p0, Lcoil/size/l$a$b;->isResumed:Z

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput-boolean v1, p0, Lcoil/size/l$a$b;->isResumed:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcoil/size/l$a$b;->$continuation:Lkotlinx/coroutines/o;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return v1
.end method
