.class Lcom/narvii/list/HideTopAdapter$1;
.super Ljava/lang/Object;
.source "HideTopAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/HideTopAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/HideTopAdapter;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/list/HideTopAdapter;Landroid/widget/ListView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    iput-object p2, p0, Lcom/narvii/list/HideTopAdapter$1;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/list/HideTopAdapter;->access$002(Lcom/narvii/list/HideTopAdapter;Z)Z

    .line 120
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->val$list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
