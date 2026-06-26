.class public Lcom/narvii/widget/ShareMediaBar;
.super Landroid/widget/FrameLayout;
.source "ShareMediaBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;,
        Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;
    }
.end annotation


# instance fields
.field bar1:Landroid/view/View;

.field public buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

.field private final clickListener:Landroid/view/View$OnClickListener;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field context:Lcom/narvii/app/NVContext;

.field innerClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;

.field media:Lcom/narvii/model/Media;

.field mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lcom/narvii/model/NVObject;

.field shareMediaClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;

.field showAll:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    .line 69
    new-instance p1, Lcom/narvii/widget/ShareMediaBar$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/ShareMediaBar$1;-><init>(Lcom/narvii/widget/ShareMediaBar;)V

    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->share_media_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v0, Lcom/narvii/lib/R$id;->share_media_bar1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->bar1:Landroid/view/View;

    .line 60
    sget v0, Lcom/narvii/lib/R$id;->share_media_entry:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/ShareMediaBar;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    iput-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    .line 62
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public setInnerClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->innerClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;

    return-void
.end method

.method public setMedia(Lcom/narvii/model/NVObject;Lcom/narvii/model/Media;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/NVObject;",
            "Lcom/narvii/model/Media;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 87
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    .line 88
    iput-object p2, p0, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    .line 89
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 91
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/widget/ShareMediaBar;->showAll:Z

    if-nez p1, :cond_2

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->bar1:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p3, :cond_3

    .line 94
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 95
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    iput-object p3, p0, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    return-void
.end method

.method public setRepostButton(Lcom/narvii/share/BaseShareButtonRepost;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    return-void
.end method

.method public setShareMediaClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->shareMediaClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;

    return-void
.end method
