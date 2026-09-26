.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

.field final synthetic val$map:Ljava/util/HashMap;

.field final synthetic val$pureLayout:Z


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;ZLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$pureLayout:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$pureLayout:Z

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->g(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroid/view/View;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    const/16 v2, 0x8

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->h(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->f(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
