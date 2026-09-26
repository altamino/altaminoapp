.class Lcom/narvii/user/picker/MultiUserPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

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
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

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
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->val$thumb:Lcom/narvii/widget/ThumbImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->y(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
