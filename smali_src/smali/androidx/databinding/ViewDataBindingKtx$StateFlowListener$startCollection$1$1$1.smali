.class final Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->a()Landroidx/databinding/ViewDataBinding;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iget p2, p2, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1$1$1;->this$0:Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->a(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0, v1}, Landroidx/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 37
    return-object p1
.end method
