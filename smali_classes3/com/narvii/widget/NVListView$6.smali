.class final Lcom/narvii/widget/NVListView$6;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Lcom/narvii/widget/NVListView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;II)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lcom/narvii/widget/NVListView$6;->val$listView:Lcom/narvii/widget/NVListView;

    iput p2, p0, Lcom/narvii/widget/NVListView$6;->val$position:I

    iput p3, p0, Lcom/narvii/widget/NVListView$6;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/narvii/widget/NVListView$6;->val$listView:Lcom/narvii/widget/NVListView;

    iget v1, p0, Lcom/narvii/widget/NVListView$6;->val$position:I

    iget v2, p0, Lcom/narvii/widget/NVListView$6;->val$offset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method
