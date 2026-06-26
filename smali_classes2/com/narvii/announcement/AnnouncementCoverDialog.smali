.class public Lcom/narvii/announcement/AnnouncementCoverDialog;
.super Lcom/narvii/app/NVDialog;
.source "AnnouncementCoverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field media:Lcom/narvii/model/Media;

.field nvContext:Lcom/narvii/app/NVContext;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1

    const v0, 0x7f1000ce

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0184

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 43
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 44
    iput-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 45
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    const p1, 0x7f0902fc

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/FullsizeImageView;

    .line 48
    new-instance p2, Lcom/narvii/announcement/AnnouncementCoverDialog$1;

    invoke-direct {p2, p0, p3}, Lcom/narvii/announcement/AnnouncementCoverDialog$1;-><init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 56
    iget-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 58
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025e

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    const/4 p2, -0x1

    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900a9

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a9

    if-eq p1, v0, :cond_1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_0

    const v0, 0x7f0902fc

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 111
    const-class p1, Lcom/narvii/announcement/AnnouncementListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Toast"

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 69
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v1, 0x7f09012c

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const v0, 0x7f0906b2

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010022

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/narvii/announcement/AnnouncementCoverDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/announcement/AnnouncementCoverDialog$2;-><init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    :cond_2
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 99
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementShownId(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(J)V

    return-void

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
