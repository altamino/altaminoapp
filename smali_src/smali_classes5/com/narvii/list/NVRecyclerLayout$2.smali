.class Lcom/narvii/list/NVRecyclerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$2;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/NVRecyclerLayout$2;->this$0:Lcom/narvii/list/NVRecyclerLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/list/NVRecyclerLayout;->a(Lcom/narvii/list/NVRecyclerLayout;)Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    .line 10
    return-void
.end method
