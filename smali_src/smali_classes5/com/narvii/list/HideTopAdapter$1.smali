.class Lcom/narvii/list/HideTopAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/HideTopAdapter$1;->val$list:Landroid/widget/ListView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/list/HideTopAdapter;->f(Lcom/narvii/list/HideTopAdapter;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->this$0:Lcom/narvii/list/HideTopAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/list/HideTopAdapter$1;->val$list:Landroid/widget/ListView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 17
    return-void
.end method
