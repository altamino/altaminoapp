.class Lcom/narvii/widget/NVListView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Lcom/narvii/widget/NVListView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$6;->val$listView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVListView$6;->val$position:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/NVListView$6;->val$offset:I

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
    iget-object v0, p0, Lcom/narvii/widget/NVListView$6;->val$listView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/NVListView$6;->val$position:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/NVListView$6;->val$offset:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 10
    return-void
.end method
