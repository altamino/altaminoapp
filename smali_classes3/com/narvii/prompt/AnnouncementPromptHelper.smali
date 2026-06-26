.class public Lcom/narvii/prompt/AnnouncementPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "AnnouncementPromptHelper.java"

# interfaces
.implements Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;


# instance fields
.field bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

.field private dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 26
    new-instance p2, Lcom/narvii/master/BottomDrawerHelper;

    invoke-direct {p2, p1, p0}, Lcom/narvii/master/BottomDrawerHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V

    iput-object p2, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/announcement/AnnouncementCoverDialog;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;

    return-object p0
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerHelper;->checkAnnouncement()V

    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method

.method public onStatusChanged(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 41
    instance-of p1, p2, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_3

    .line 42
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerHelper;->shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/narvii/announcement/AnnouncementCoverDialog;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    new-instance v2, Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/narvii/prompt/AnnouncementPromptHelper$1;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/narvii/announcement/AnnouncementCoverDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    iput-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 75
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;

    new-instance p2, Lcom/narvii/prompt/AnnouncementPromptHelper$2;

    invoke-direct {p2, p0}, Lcom/narvii/prompt/AnnouncementPromptHelper$2;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :cond_5
    :goto_1
    return-void
.end method
