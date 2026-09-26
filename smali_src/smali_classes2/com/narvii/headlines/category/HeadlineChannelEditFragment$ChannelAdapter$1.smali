.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->v(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->v(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->y(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->drop(II)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->this$1:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 53
    .line 54
    iget p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;->val$position:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->remove(I)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method
