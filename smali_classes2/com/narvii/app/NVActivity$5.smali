.class Lcom/narvii/app/NVActivity$5;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/app/LifecycleListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/narvii/app/NVActivity$5;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/narvii/app/NVActivity$5;->this$0:Lcom/narvii/app/NVActivity;

    invoke-interface {p1, v0}, Lcom/narvii/app/LifecycleListener;->lifecycleOnStart(Lcom/narvii/app/LifecycleHost;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 538
    check-cast p1, Lcom/narvii/app/LifecycleListener;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity$5;->call(Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method
