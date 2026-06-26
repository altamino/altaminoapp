.class Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 2592
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2593
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private createTabTitleText(II)Landroid/text/SpannableString;
    .locals 6

    .line 2664
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gtz p2, :cond_0

    .line 2666
    new-instance p2, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2667
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p2

    .line 2670
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2671
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2672
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2673
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 2598
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1200(Lcom/narvii/user/profile/UserProfileFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2601
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 2602
    iget v0, v0, Lcom/narvii/model/User;->role:I

    const/16 v2, 0xfd

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2610
    sget-object p1, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 2615
    sget-object p1, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter$CellType;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const p1, 0x7f0b06ca

    .line 2620
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c3b

    .line 2622
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    .line 2623
    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f090c3a

    const v3, 0x7f090c3c

    const v4, 0x7f090c3d

    if-ge v1, p3, :cond_3

    .line 2625
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2626
    instance-of v6, v5, Lcom/narvii/widget/SwitchButton;

    if-eqz v6, :cond_2

    .line 2627
    check-cast v5, Lcom/narvii/widget/SwitchButton;

    .line 2628
    iget-boolean v6, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v5, v6}, Lcom/narvii/widget/SwitchButton;->setDarkTheme(Z)V

    .line 2629
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v6, v6, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2630
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v6, v6, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v6}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/User;

    .line 2631
    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v7

    if-ne v7, v3, :cond_0

    const v2, 0x7f0f113f

    .line 2632
    iget v3, v6, Lcom/narvii/model/User;->postsCount:I

    invoke-direct {p0, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2633
    :cond_0
    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    if-ne v3, v2, :cond_1

    const v2, 0x7f0f113e

    .line 2634
    iget v3, v6, Lcom/narvii/model/User;->commentsCount:I

    invoke-direct {p0, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2635
    :cond_1
    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    const v2, 0x7f0f1140

    .line 2636
    invoke-direct {p0, v2, v0}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2641
    :cond_3
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p3

    if-nez p3, :cond_4

    .line 2642
    invoke-virtual {p2, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 p3, -0x1

    .line 2645
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v5, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v6, v5, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    if-ne v1, v6, :cond_5

    const p3, 0x7f090c3c

    goto :goto_2

    .line 2647
    :cond_5
    iget-object v1, v5, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v5, v3, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    if-ne v1, v5, :cond_6

    const p3, 0x7f090c3a

    goto :goto_2

    .line 2649
    :cond_6
    iget-object v1, v3, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    if-ne v1, v2, :cond_7

    const p3, 0x7f090c3d

    .line 2651
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    if-eqz p2, :cond_8

    .line 2653
    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    .line 2654
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->access$2300(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 2656
    :cond_8
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-boolean v0, p2, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    const p2, 0x7f090677

    .line 2658
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2659
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_9

    const p3, 0x7f06011d

    goto :goto_3

    :cond_9
    const p3, 0x7f06011c

    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method
