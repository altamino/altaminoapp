.class Lcom/narvii/drawer/DrawerHost$25;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->initSecondEntryContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 2179
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2182
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2183
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->secondViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 2184
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f0909e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/page/PageSecondLevelLayout;

    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost;->access$1202(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/amino/page/PageSecondLevelLayout;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 2185
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener2:Lcom/narvii/amino/page/PageItemClickListener;

    invoke-virtual {p1, v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;->setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V

    .line 2186
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1600(Lcom/narvii/drawer/DrawerHost;)V

    .line 2188
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2189
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2190
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1400(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    .line 2192
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1400(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v0, 0x42b40000    # 90.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 2194
    :goto_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1300(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0f03b8

    goto :goto_3

    :cond_4
    const v1, 0x7f0f03b9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2197
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0x7f0909ea

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2199
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1700(Lcom/narvii/drawer/DrawerHost;)V

    .line 2201
    :cond_7
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost;->access$1102(Lcom/narvii/drawer/DrawerHost;Z)Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2205
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1300(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2206
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv2List()Ljava/util/List;

    move-result-object v0

    .line 2207
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v3}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-lez v3, :cond_8

    .line 2208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070278

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v0, v3

    .line 2209
    aget v3, p1, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v4, v4, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_8

    .line 2210
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    aget p1, p1, v1

    sub-int/2addr v4, p1

    sub-int/2addr v0, v4

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070125

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_8
    return-void
.end method
