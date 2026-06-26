.class Lcom/narvii/comment/list/CommentListAdapter$4;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;

.field final synthetic val$comment:Lcom/narvii/model/Comment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;[ILcom/narvii/model/Comment;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$ops:[I

    iput-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 736
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$ops:[I

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 777
    :sswitch_0
    const-class p1, Lcom/narvii/comment/CommentStickerDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 778
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-virtual {p2}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sticker"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "comment"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p2}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    move-result p2

    const-string v0, "hideCollectionInfo"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 781
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$900(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_0

    .line 782
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$1000(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVFragment;

    const/16 v0, 0x66

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 784
    :cond_0
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onViewStickerClicked(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 741
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, v1, v0, p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$300(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V

    goto/16 :goto_0

    .line 750
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$600(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    goto/16 :goto_0

    .line 738
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, v0, p2, p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$300(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V

    goto/16 :goto_0

    .line 763
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$700(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    goto/16 :goto_0

    .line 744
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$400(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    goto/16 :goto_0

    .line 747
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2, v0}, Lcom/narvii/comment/list/CommentListAdapter;->access$500(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V

    goto :goto_0

    .line 766
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    .line 767
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 768
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    iget-object p2, p2, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 754
    :sswitch_8
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 755
    const-class p2, Lcom/narvii/comment/list/VoterListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 756
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commentId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/narvii/model/Blog;

    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    :cond_1
    const-string p1, "feedType"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 771
    :sswitch_9
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    const-string p2, "config"

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 772
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$800(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 773
    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 774
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_9
        0x7f0f02a5 -> :sswitch_8
        0x7f0f02a6 -> :sswitch_8
        0x7f0f02f4 -> :sswitch_7
        0x7f0f0348 -> :sswitch_6
        0x7f0f03cd -> :sswitch_5
        0x7f0f06d5 -> :sswitch_4
        0x7f0f0ae0 -> :sswitch_3
        0x7f0f0ede -> :sswitch_2
        0x7f0f1105 -> :sswitch_1
        0x7f0f1166 -> :sswitch_0
    .end sparse-switch
.end method
