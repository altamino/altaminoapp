.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;
.super Ljava/lang/Object;
.source "HeadlineChannelEditFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;I)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iput p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 301
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$600(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$600(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p2, p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$700(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_1

    .line 304
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p2, p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    iget v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    invoke-virtual {p2, v0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->drop(II)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    iget p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->remove(I)V

    :cond_1
    :goto_0
    return-void
.end method
