.class Lcom/narvii/widget/NVStatusLayout$1;
.super Ljava/lang/Object;
.source "NVStatusLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVStatusLayout;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVStatusLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVStatusLayout;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/widget/NVStatusLayout$1;->this$0:Lcom/narvii/widget/NVStatusLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/narvii/widget/NVStatusLayout$1;->this$0:Lcom/narvii/widget/NVStatusLayout;

    iget-object p1, p1, Lcom/narvii/widget/NVStatusLayout;->onErrorRetryListener:Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;->onErrorRetry()V

    :cond_0
    return-void
.end method
