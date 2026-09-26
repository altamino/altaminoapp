.class public final synthetic Landroidx/lifecycle/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/r;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/e;->a:Lkotlinx/coroutines/channels/r;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/e;->a:Lkotlinx/coroutines/channels/r;

    invoke-static {v0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->f(Lkotlinx/coroutines/channels/r;Ljava/lang/Object;)V

    return-void
.end method
