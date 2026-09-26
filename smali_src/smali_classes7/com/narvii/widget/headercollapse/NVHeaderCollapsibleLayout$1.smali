.class Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->s(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->l(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->n(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/util/HashMap;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->r(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->n(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/util/HashMap;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->n(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/util/HashMap;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->q(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Lcom/narvii/widget/NVListView;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
