.class public Lcom/narvii/media/MediaGalleryOptionActivity;
.super Lcom/narvii/media/MediaGalleryActivity;
.source "SourceFile"


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field backIcon:Landroid/widget/ImageView;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field fragment:Lcom/narvii/optionmenu/OptionMenuFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/MediaGalleryActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d057f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0cf7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    const-string p1, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    const-string p1, "chat"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a0079

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->backIcon:Landroid/widget/ImageView;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/media/MediaGalleryOptionActivity$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryOptionActivity$1;-><init>(Lcom/narvii/media/MediaGalleryOptionActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    const-string p1, "__communityId"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    .line 61
    const-string v0, "forceUHQ"

    .line 62
    const/4 v1, 0x0

    .line 63
    .line 64
    if-lez p1, :cond_0

    .line 65
    .line 66
    const-string p1, "preview"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    .line 81
    :cond_1
    const p1, 0x7f0a0a8d

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const-string v2, "parent"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    const-string v4, "parentClass"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 116
    move-result v0

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2, v3, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 140
    :cond_2
    return-void
.end method

.method protected onPageSelectedFinished(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onPageSelectedFinished(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setMedia(Lcom/narvii/model/Media;)V

    .line 15
    :cond_0
    return-void
.end method
