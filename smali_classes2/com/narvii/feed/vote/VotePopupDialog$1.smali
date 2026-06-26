.class Lcom/narvii/feed/vote/VotePopupDialog$1;
.super Ljava/lang/Object;
.source "VotePopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/VotePopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/VotePopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/VotePopupDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v1, v0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p1, -0x1

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v1, v0, Lcom/narvii/feed/vote/VotePopupDialog;->feed:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 110
    check-cast v1, Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/feed/vote/VotePopupDialog;->access$000(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    goto :goto_1

    .line 111
    :cond_1
    instance-of v2, v1, Lcom/narvii/model/Item;

    if-eqz v2, :cond_2

    .line 112
    check-cast v1, Lcom/narvii/model/Item;

    invoke-static {v0}, Lcom/narvii/feed/vote/VotePopupDialog;->access$000(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    goto :goto_1

    .line 113
    :cond_2
    instance-of v0, v1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_4

    .line 114
    check-cast v1, Lcom/narvii/model/SharedFile;

    iget v0, v1, Lcom/narvii/model/SharedFile;->votedValue:I

    :goto_1
    if-ne p1, v0, :cond_3

    .line 120
    iget-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object p1, p1, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_2

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 124
    :goto_2
    iget-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09045b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
