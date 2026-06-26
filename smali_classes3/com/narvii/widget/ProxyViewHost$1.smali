.class Lcom/narvii/widget/ProxyViewHost$1;
.super Ljava/lang/Object;
.source "ProxyViewHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ProxyViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/ProxyViewHost;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    iget v1, v0, Lcom/narvii/widget/ProxyViewHost;->measureW:I

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/narvii/widget/ProxyViewHost;->measureH:I

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    iget v1, v0, Lcom/narvii/widget/ProxyViewHost;->width:I

    if-lez v1, :cond_1

    iget v2, v0, Lcom/narvii/widget/ProxyViewHost;->height:I

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 186
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_1
    return-void
.end method
