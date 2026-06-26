.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;
.super Ljava/lang/Object;
.source "HeaderCollapsibleLayout.java"

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

    .line 140
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$pureLayout:Z

    iput-object p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$pureLayout:Z

    invoke-static {v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$002(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Z)Z

    .line 144
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->val$map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$100(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 148
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$202(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
