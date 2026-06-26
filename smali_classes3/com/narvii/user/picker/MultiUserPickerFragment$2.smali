.class Lcom/narvii/user/picker/MultiUserPickerFragment$2;
.super Ljava/lang/Object;
.source "MultiUserPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/picker/MultiUserPickerFragment;->updateThumbViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

.field final synthetic val$thumb:Lcom/narvii/widget/ThumbImageView;


# direct methods
.method constructor <init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/ThumbImageView;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iput-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 427
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f0901fc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$100(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 431
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
