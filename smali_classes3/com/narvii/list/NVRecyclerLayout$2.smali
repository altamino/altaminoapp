.class Lcom/narvii/list/NVRecyclerLayout$2;
.super Ljava/lang/Object;
.source "NVRecyclerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVRecyclerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVRecyclerLayout;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVRecyclerLayout;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$2;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$2;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    invoke-static {p1}, Lcom/narvii/list/NVRecyclerLayout;->access$100(Lcom/narvii/list/NVRecyclerLayout;)Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    return-void
.end method
