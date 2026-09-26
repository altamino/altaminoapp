.class public Lcom/narvii/chat/thread/ThreadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/thread/ThreadHelper;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
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

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-class v2, Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    const-string v1, "Source"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/chat/post/ThreadPost;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    .line 24
    .line 25
    const-string v1, "post"

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    const-string p1, "bubble"

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    :cond_0
    if-eqz p3, :cond_1

    .line 46
    .line 47
    const-string/jumbo p1, "stickerCollectionId"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/narvii/chat/thread/ThreadHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 67
    :cond_2
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public showCreateChatDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
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

    .line 2
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

    .line 3
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v1

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v8

    .line 5
    :goto_0
    new-instance v1, Lcom/narvii/modulization/entry/EntryManager;

    iget-object v3, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v3}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v3, "postType"

    const-string v4, "publicChatRooms"

    const-string v6, "post"

    filled-new-array {v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object v9

    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    .line 7
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-eqz v9, :cond_6

    .line 8
    iget-object v3, v9, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-eqz v3, :cond_6

    .line 9
    iget v4, v3, Lcom/narvii/modulization/entry/Privilege;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 10
    iget v3, v3, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    goto :goto_1

    :cond_1
    move v3, v8

    .line 11
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/User;->level:I

    if-ge v4, v3, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v8

    .line 13
    :cond_3
    iget-object v4, v9, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v4, v4, Lcom/narvii/modulization/entry/Privilege;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v10, v3

    move v2, v8

    goto :goto_2

    :cond_5
    move v10, v3

    goto :goto_2

    :cond_6
    move v10, v8

    :goto_2
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    .line 15
    new-instance v11, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/narvii/chat/thread/ThreadHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/ThreadHelper$1;-><init>(Lcom/narvii/chat/thread/ThreadHelper;)V

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const v0, 0x7f12027c

    .line 17
    invoke-virtual {v11, v0, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f12027d

    const v1, 0x7f0d03ec

    .line 18
    invoke-virtual {v11, v0, v8, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 19
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

    .line 20
    invoke-virtual {v11}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    const v0, 0x7f0a07db

    .line 21
    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    if-lez v10, :cond_7

    move v2, v8

    goto :goto_3

    :cond_7
    move v2, v1

    .line 22
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v0, 0x7f0a07dc

    .line 23
    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 24
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_c

    if-lez v10, :cond_9

    move v1, v8

    .line 25
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
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

    :cond_b
    const-class v0, Lcom/narvii/chat/invite/StartGroupChatFragment;

    .line 27
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxMember"

    const/16 v2, 0x64

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Source"

    move-object v2, p1

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v7, Lcom/narvii/chat/thread/ThreadHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 30
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/chat/thread/ThreadHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz v5, :cond_c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    invoke-interface {v5, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void
.end method
