.class public abstract Lcom/airbnb/lottie/model/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Void;",
        "Lcom/airbnb/lottie/e;",
        ">;",
        "Lcom/airbnb/lottie/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    return-void
.end method
