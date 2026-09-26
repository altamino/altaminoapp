.class public Lcom/narvii/prompt/AnnouncementPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;


# instance fields
.field bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

.field private dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/master/BottomDrawerHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/BottomDrawerHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/announcement/AnnouncementCoverDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;

    return-object p0
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerHelper;->checkAnnouncement()V

    .line 6
    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method

.method public onStatusChanged(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_4

    .line 4
    .line 5
    instance-of p1, p2, Lcom/narvii/model/Blog;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    move-object p1, p2

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/Blog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerHelper;->shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    new-instance v2, Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, p0, p2}, Lcom/narvii/prompt/AnnouncementPromptHelper$1;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, p1, v2}, Lcom/narvii/announcement/AnnouncementCoverDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper;->dialog:Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/prompt/AnnouncementPromptHelper$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/narvii/prompt/AnnouncementPromptHelper$2;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 60
    return-void

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const/4 p2, -0x1

    .line 66
    .line 67
    if-ne p1, p2, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 71
    :cond_5
    :goto_1
    return-void
.end method
