.class Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a02b3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->g(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;->this$1:Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
