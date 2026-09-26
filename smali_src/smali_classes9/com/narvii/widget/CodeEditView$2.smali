.class Lcom/narvii/widget/CodeEditView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/CodeEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CodeEditView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CodeEditView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

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
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/CodeEditView;->b(Lcom/narvii/widget/CodeEditView;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/CodeEditView;->b(Lcom/narvii/widget/CodeEditView;)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/widget/CodeEditView;->a(Lcom/narvii/widget/CodeEditView;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x8

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/widget/CodeEditView;->a(Lcom/narvii/widget/CodeEditView;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    xor-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/narvii/widget/CodeEditView;->c(Lcom/narvii/widget/CodeEditView;Z)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$2;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    .line 45
    .line 46
    const-wide/16 v2, 0x1f4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_1
    return-void
.end method
