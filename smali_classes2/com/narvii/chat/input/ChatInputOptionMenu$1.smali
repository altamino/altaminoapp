.class Lcom/narvii/chat/input/ChatInputOptionMenu$1;
.super Ljava/lang/Object;
.source "ChatInputOptionMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputOptionMenu;->report()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputOptionMenu;[ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$ops:[I

    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v0, p0

    .line 242
    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$ops:[I

    aget v1, v1, p2

    const v2, 0x7f0f06c4

    const/4 v3, 0x4

    const v4, 0x104000a

    const/16 v5, 0x7d

    const/16 v6, 0xce

    const v7, 0x7f0f06e1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v1, v2, :cond_6

    const v2, 0x7f0f06dc

    if-eq v1, v2, :cond_5

    const v2, 0x7f0f06fd

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 244
    :cond_0
    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v1, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoProcess"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .line 249
    :cond_2
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper;

    iget-object v3, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-static {v3}, Lcom/narvii/chat/input/ChatInputOptionMenu;->access$200(Lcom/narvii/chat/input/ChatInputOptionMenu;)Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/narvii/chat/ChannelFlagHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 250
    iget-object v3, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v11, v3, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v3, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_3

    iget-object v8, v3, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    :cond_3
    move-object v12, v8

    iget-object v3, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v13, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iget-object v14, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v3, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v15, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    const/16 v16, 0x1

    xor-int/lit8 v17, v9, 0x1

    move-object v10, v1

    invoke-virtual/range {v10 .. v17}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZ)V

    .line 252
    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f06df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/ChannelFlagHelper;->setHintLanguage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 266
    :cond_5
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 267
    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v7, 0x7f0f0701

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {v9, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 270
    invoke-virtual {v1, v4, v3, v8}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 271
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 256
    :cond_6
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 257
    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v2, v0, Lcom/narvii/chat/input/ChatInputOptionMenu$1;->this$0:Lcom/narvii/chat/input/ChatInputOptionMenu;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v7, 0x7f0f0702

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {v9, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 260
    invoke-virtual {v1, v4, v3, v8}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 261
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_1
    return-void
.end method
