.class Lcom/narvii/chat/ChatListFragment$Adapter$4;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment$Adapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1671
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1674
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "copy"

    .line 1675
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1677
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    .line 1678
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, ""

    .line 1680
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "saveImage"

    .line 1684
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1685
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 1686
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/SaveImageFragment;

    if-nez p1, :cond_1

    .line 1688
    new-instance p1, Lcom/narvii/media/SaveImageFragment;

    invoke-direct {p1}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 1689
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1690
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1691
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 1692
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 1694
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "delete"

    .line 1695
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1696
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/ChatListFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "flag"

    .line 1697
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1698
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$2000(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1700
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-static {p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$2400(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 1701
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto/16 :goto_1

    :cond_4
    const-string p2, "advanced"

    .line 1703
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1704
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 1705
    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 1706
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    goto/16 :goto_1

    :cond_5
    const-string p2, "detail"

    .line 1707
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1708
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$1900(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_1

    :cond_6
    const-string p2, "saveAsFavorite"

    .line 1709
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1710
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$2500(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1713
    :cond_7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1714
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1716
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    goto :goto_0

    .line 1718
    :cond_8
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_9
    const-string p2, "reply"

    .line 1722
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1723
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$1300(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_a

    .line 1724
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "chatInput"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 1725
    instance-of p2, p1, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz p2, :cond_a

    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    .line 1728
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->onReplybyLongClick(Lcom/narvii/model/ChatMessage;)V

    :catch_0
    :cond_a
    :goto_1
    return-void
.end method
