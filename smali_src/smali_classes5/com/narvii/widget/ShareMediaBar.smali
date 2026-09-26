.class public Lcom/narvii/widget/ShareMediaBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/widget/ShareMediaBar$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/widget/ShareMediaBar$1;-><init>(Lcom/narvii/widget/ShareMediaBar;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->clickListener:Landroid/view/View$OnClickListener;

    .line 14
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget v1, Lcom/narvii/lib/R$layout;->share_media_bar:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$id;->share_media_bar1:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->bar1:Landroid/view/View;

    .line 25
    .line 26
    sget v0, Lcom/narvii/lib/R$id;->share_media_entry:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/widget/ShareMediaBar;->clickListener:Landroid/view/View$OnClickListener;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iput-object v1, p0, Lcom/narvii/widget/ShareMediaBar;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 51
    return-void
.end method

.method public setInnerClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;)V
    .locals 0

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->parent:Lcom/narvii/model/NVObject;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/widget/ShareMediaBar;->media:Lcom/narvii/model/Media;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    iget-object v1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 19
    .line 20
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/widget/ShareMediaBar;->showAll:Z

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->bar1:Landroid/view/View;

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    :cond_2
    if-eqz p3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    :cond_4
    iput-object p3, p0, Lcom/narvii/widget/ShareMediaBar;->mediaList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setRepostButton(Lcom/narvii/share/BaseShareButtonRepost;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->buttonRepost:Lcom/narvii/share/BaseShareButtonRepost;

    return-void
.end method

.method public setShareMediaClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ShareMediaBar;->shareMediaClickListener:Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;

    return-void
.end method
