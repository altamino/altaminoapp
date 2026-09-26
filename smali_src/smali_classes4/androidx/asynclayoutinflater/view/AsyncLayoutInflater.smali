.class public final Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;,
        Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;,
        Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;,
        Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;-><init>(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 11
    .line 12
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->a()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 33
    return-void
.end method
