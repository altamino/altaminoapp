.class public Lcom/narvii/chat/thread/ThreadHelper;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/ThreadHelper;->openComposeView(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private openComposeView(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatBubble;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Source"

    .line 152
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    new-instance p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-direct {p1}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    .line 154
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 156
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bubble"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "stickerCollectionId"

    .line 160
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_2

    .line 165
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public showCreateChatDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatBubble;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatBubble;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v5, p5

    .line 51
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    new-instance v1, Lcom/narvii/modulization/entry/EntryManager;

    iget-object v3, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v3}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v6, "post"

    aput-object v6, v4, v8

    const-string v6, "postType"

    aput-object v6, v4, v2

    const/4 v6, 0x2

    const-string v9, "publicChatRooms"

    aput-object v9, v4, v6

    .line 55
    invoke-virtual {v1, v4}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object v9

    .line 56
    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v4, "account"

    invoke-interface {v1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-eqz v9, :cond_6

    .line 58
    iget-object v4, v9, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-eqz v4, :cond_6

    .line 59
    iget v10, v4, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne v10, v6, :cond_1

    .line 60
    iget v4, v4, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 62
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    iget v6, v6, Lcom/narvii/model/User;->level:I

    if-ge v6, v4, :cond_2

    .line 63
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/model/User;->isCurator()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v4, 0x0

    .line 66
    :cond_3
    iget-object v6, v9, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v6, v6, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne v6, v3, :cond_5

    .line 67
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v10, v4

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move v10, v4

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    .line 72
    new-instance v11, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/narvii/chat/thread/ThreadHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/ThreadHelper$1;-><init>(Lcom/narvii/chat/thread/ThreadHelper;)V

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const v0, 0x7f0f0239

    .line 79
    invoke-virtual {v11, v0, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f023a

    const v1, 0x7f0b03b6

    .line 80
    invoke-virtual {v11, v0, v8, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 81
    new-instance v12, Lcom/narvii/chat/thread/ThreadHelper$2;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/thread/ThreadHelper$2;-><init>(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Z)V

    invoke-virtual {v11, v12}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    invoke-virtual {v11}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    const v0, 0x7f090657

    .line 129
    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    if-lez v10, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    .line 131
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v0, 0x7f090658

    .line 133
    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_c

    if-lez v10, :cond_9

    const/4 v1, 0x0

    .line 135
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    iget v8, v2, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 139
    :cond_b
    const-class v0, Lcom/narvii/chat/invite/StartGroupChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "maxMember"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Source"

    move-object v2, p1

    .line 141
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v5, :cond_c

    .line 144
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void
.end method
