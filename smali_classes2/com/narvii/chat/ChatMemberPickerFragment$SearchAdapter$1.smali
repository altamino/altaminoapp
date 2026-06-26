.class Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;
.super Ljava/lang/Object;
.source "ChatMemberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->updateThumbViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

.field final synthetic val$thumb:Lcom/narvii/widget/ThumbImageView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;Lcom/narvii/widget/ThumbImageView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    iput-object p2, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f0901fc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->access$000(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    .line 192
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
