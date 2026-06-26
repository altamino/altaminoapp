.class Lcom/narvii/list/NVListViewWrapper$5;
.super Ljava/lang/Object;
.source "NVListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListViewWrapper;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper$5;->this$0:Lcom/narvii/list/NVListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 534
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$5;->this$0:Lcom/narvii/list/NVListViewWrapper;

    invoke-static {p1}, Lcom/narvii/list/NVListViewWrapper;->access$000(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$5;->this$0:Lcom/narvii/list/NVListViewWrapper;

    invoke-static {p1}, Lcom/narvii/list/NVListViewWrapper;->access$000(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
