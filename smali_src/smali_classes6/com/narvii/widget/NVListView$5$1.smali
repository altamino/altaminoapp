.class Lcom/narvii/widget/NVListView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView$5;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVListView$5;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView$5;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$5$1;->this$0:Lcom/narvii/widget/NVListView$5;

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
    iget-object v0, p0, Lcom/narvii/widget/NVListView$5$1;->this$0:Lcom/narvii/widget/NVListView$5;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/widget/NVListView$5;->val$listView:Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    iget v2, v0, Lcom/narvii/widget/NVListView$5;->val$position:I

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/widget/NVListView$5;->val$offset:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 12
    return-void
.end method
