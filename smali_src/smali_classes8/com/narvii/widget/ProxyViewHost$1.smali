.class Lcom/narvii/widget/ProxyViewHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/ProxyViewHost;->measureW:I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/narvii/widget/ProxyViewHost;->measureH:I

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost$1;->this$0:Lcom/narvii/widget/ProxyViewHost;

    .line 16
    .line 17
    iget v1, v0, Lcom/narvii/widget/ProxyViewHost;->width:I

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    iget v2, v0, Lcom/narvii/widget/ProxyViewHost;->height:I

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 28
    :cond_1
    return-void
.end method
