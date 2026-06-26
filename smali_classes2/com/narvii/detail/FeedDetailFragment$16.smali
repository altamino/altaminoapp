.class Lcom/narvii/detail/FeedDetailFragment$16;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    add-int/2addr p3, p2

    .line 1155
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$500(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 1156
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$600(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    const/16 v1, 0x32

    if-le v0, p1, :cond_1

    .line 1157
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$600(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    sub-int p1, v0, p1

    if-le p1, v1, :cond_4

    .line 1158
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$700(Lcom/narvii/detail/FeedDetailFragment;)V

    goto :goto_1

    .line 1160
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$600(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 1161
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$600(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    sub-int/2addr p1, v0

    if-le p1, v1, :cond_4

    .line 1162
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$800(Lcom/narvii/detail/FeedDetailFragment;)V

    goto :goto_1

    .line 1166
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$500(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 1167
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$700(Lcom/narvii/detail/FeedDetailFragment;)V

    goto :goto_1

    .line 1169
    :cond_3
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$800(Lcom/narvii/detail/FeedDetailFragment;)V

    :cond_4
    :goto_1
    if-ne p3, p4, :cond_5

    .line 1174
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$500(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 1180
    :cond_5
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->access$602(Lcom/narvii/detail/FeedDetailFragment;I)I

    .line 1181
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$16;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->access$502(Lcom/narvii/detail/FeedDetailFragment;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
