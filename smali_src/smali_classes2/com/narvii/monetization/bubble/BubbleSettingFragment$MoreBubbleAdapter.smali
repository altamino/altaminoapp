.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreBubbleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03c6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0990

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0990

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->H(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method
